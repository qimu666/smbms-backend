package com.qimu.smbms.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.qimu.smbms.common.ErrorCode;
import com.qimu.smbms.constant.UserConstant;
import com.qimu.smbms.exception.BusinessException;
import com.qimu.smbms.mapper.UserMapper;
import com.qimu.smbms.model.domain.User;
import com.qimu.smbms.service.UserService;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * @author qimu
 * @description 针对表【smbms_user(`smbms_user`)】的数据库操作Service实现
 * @createDate 2023-02-18 15:50:26
 */
@Service
@Slf4j
public class UserServiceImpl extends ServiceImpl<UserMapper, User>
        implements UserService {

    /**
     * 用户登录
     *
     * @param userCode     用户编码
     * @param userPassword 用户密码
     * @param request      HttpServletRequest用于保存session
     * @return 安全的数据
     */
    @Override
    public User userLogin(String userCode, String userPassword, HttpServletRequest request) {
        if (StringUtils.isAnyBlank(userCode, userPassword)) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "请求参数有误");
        }
        if (userPassword.length() < 7) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "密码长度不能小于7位 (>_<) !!! ");
        }
        String pattern = "[0-9a-zA-Z]+";
        if (!userCode.matches(pattern)) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "账号不能包含特殊字符 (>_<) !!! ");
        }
        LambdaQueryWrapper<User> userLambdaQueryWrapper = new LambdaQueryWrapper<>();
        userLambdaQueryWrapper.eq(User::getUserCode, userCode);
        userLambdaQueryWrapper.eq(User::getUserPassword, userPassword);
        User user = this.getOne(userLambdaQueryWrapper);
        if (user == null) {
            throw new BusinessException(ErrorCode.REQUEST_NULL_ERROR, "用户名或密码有误 (>_<) !!! ");
        }
        HttpSession session = request.getSession();
        session.setAttribute(UserConstant.USER_LOGIN_STATUS, user);
        session.setMaxInactiveInterval(86400);
        return user;
    }

    @Override
    public Boolean updatePassword(String oldPassword, String newPassword, String reNewPassword, HttpServletRequest request) {
        if (StringUtils.isAnyBlank(oldPassword, newPassword, reNewPassword)) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "请求参数有误 (>_<) !!!");
        }
        if (newPassword.length() < 7 || reNewPassword.length() < 7) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "密码长度不能小于7位 (>_<) !!! ");
        }
        if (!newPassword.equals(reNewPassword)) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "输入修改的密码不一致,请重试 (>_<) !!! ");
        }
        HttpSession session = request.getSession();
        Object userSession = session.getAttribute(UserConstant.USER_LOGIN_STATUS);
        User user = (User) userSession;
        if (user == null) {
            throw new BusinessException(ErrorCode.NOT_LOGIN, "用户不存在,请重新登录 (>_<) !!!");
        }
        if (!oldPassword.equals(user.getUserPassword())) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "密码有误,请重试 (>_<) !!!");
        }
        user.setUserPassword(newPassword);
        return this.updateById(user);
    }
}




