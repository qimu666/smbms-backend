package com.qimu.smbms.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.qimu.smbms.common.ErrorCode;
import com.qimu.smbms.constant.Common;
import com.qimu.smbms.constant.UserConstant;
import com.qimu.smbms.exception.BusinessException;
import com.qimu.smbms.mapper.RoleMapper;
import com.qimu.smbms.mapper.UserMapper;
import com.qimu.smbms.model.domain.Role;
import com.qimu.smbms.model.domain.User;
import com.qimu.smbms.model.request.UserAddRequest;
import com.qimu.smbms.model.vo.bill.UserVo;
import com.qimu.smbms.service.UserService;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.List;
import java.util.Objects;
import java.util.stream.Collectors;

/**
 * @author qimu
 * @description 针对表【smbms_user(`smbms_user`)】的数据库操作Service实现
 * @createDate 2023-02-18 15:50:26
 */
@Service
@Slf4j
public class UserServiceImpl extends ServiceImpl<UserMapper, User> implements UserService {
    @Resource
    private UserMapper userMapper;
    @Resource
    private RoleMapper roleMapper;

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
        Common.checkStringIsAnyBlank(userCode, userPassword);
        if (userPassword.length() < 7) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "密码长度不能小于7位 (>_<) !!! ");
        }
        if (!userCode.matches(UserConstant.PATTERN)) {
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

    /**
     * 修改用户密码
     *
     * @param oldPassword   旧密码
     * @param newPassword   新密码
     * @param reNewPassword 确认密码
     * @param request       session
     * @return 修改成功或失败
     */
    @Override
    public Boolean updatePassword(String oldPassword, String newPassword, String reNewPassword, HttpServletRequest request) {
        Common.checkStringIsAnyBlank(oldPassword, newPassword, reNewPassword);
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

    /**
     * 带分页功能的用户信息列表
     *
     * @param userName  用户名
     * @param userRole  用户角色
     * @param pageIndex 当前页码
     * @param pageSize  一页多少条数据
     * @return 用户信息封装为userVo类
     */
    @Override
    public UserVo selectUsers(String userName, Long userRole, Integer pageIndex, Integer pageSize) {
        Page<User> userPage = new Page<>(pageIndex, pageSize);
        LambdaQueryWrapper<User> userLambdaQueryWrapper = new LambdaQueryWrapper<>();
        userLambdaQueryWrapper.eq(userRole != null && !userRole.equals(0L), User::getUserRole, userRole);
        userLambdaQueryWrapper.like(StringUtils.isNotBlank(userName), User::getUserName, userName);
        Page<User> userSelectData = userMapper.selectPage(userPage, userLambdaQueryWrapper);
        List<User> usersList = userSelectData.getRecords();
        List<User> userList = usersList.stream().peek(user -> {
            Long userRoleId = user.getUserRole();
            Role role = roleMapper.selectById(userRoleId);
            user.setUserRoleName(role.getRoleName());
        }).collect(Collectors.toList());
        UserVo userVo = new UserVo();
        List<Role> roleList = roleMapper.selectList(null);
        userVo.setUserList(userList);
        userVo.setRoleList(roleList);
        userVo.setTotal(userSelectData.getTotal());
        return userVo;
    }

    /**
     * 如果id获取用户
     *
     * @param id 用户id
     * @return 用户信息
     */
    @Override
    public User getUserById(Integer id) {
        LambdaQueryWrapper<User> userLambdaQueryWrapper = new LambdaQueryWrapper<>();
        userLambdaQueryWrapper.eq(User::getId, id);
        User user = baseMapper.selectOne(userLambdaQueryWrapper);
        Long userRoleId = user.getUserRole();
        Role role = roleMapper.selectById(userRoleId);
        user.setUserRoleName(role.getRoleName());
        return user;
    }

    /**
     * 添加用户
     *
     * @param userAddRequest 添加用户实体类
     * @return 添加的新用户id
     */
    @Override
    public Long addUser(UserAddRequest userAddRequest) {
        String userCode = userAddRequest.getUserCode();
        String userName = userAddRequest.getUserName();
        Long userRole = userAddRequest.getUserRole();
        String userPassword = userAddRequest.getUserPassword();
        String confirmPassword = userAddRequest.getConfirmPassword();
        Integer gender = userAddRequest.getGender();
        Date birthday = userAddRequest.getBirthday();
        String phone = userAddRequest.getPhone();
        String address = userAddRequest.getAddress();
        Common.checkStringIsAnyBlank(userCode, userName, userPassword, confirmPassword, phone, address);
        isNotNull(userRole, gender, birthday);
        if (!userPassword.equals(confirmPassword)) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "输入有误 (>_<) !!!");
        }
        // 正则匹配
        userPattern(userCode, phone);
        // 查看用户编码是否存在
        LambdaQueryWrapper<User> userLambdaQueryWrapper = new LambdaQueryWrapper<>();
        userLambdaQueryWrapper.eq(User::getUserCode, userCode);
        User getOldUser = userMapper.selectOne(userLambdaQueryWrapper);
        if (getOldUser != null) {
            throw new BusinessException(ErrorCode.USER_EXITS, "用户已存在 (>_<) !!!");
        }
        User userAdd = new User();
        userAdd.setUserCode(userCode);
        userAdd.setUserName(userName);
        userAdd.setUserPassword(userPassword);
        userAdd.setGender(gender);
        userAdd.setBirthday(birthday);
        userAdd.setPhone(phone);
        userAdd.setAddress(address);
        userAdd.setCreationDate(new Date());
        userAdd.setUserRole(userRole);
        boolean addUserStatus = this.save(userAdd);
        if (!addUserStatus) {
            throw new BusinessException(ErrorCode.RESULT_ERROR, "添加用户失败 (>_<) !!!");
        }
        return userAdd.getId();
    }

    /**
     * 判断输入是否有误
     *
     * @param userRole 角色id
     * @param gender   性别
     * @param birthday 生日
     */
    private void isNotNull(Long userRole, Integer gender, Date birthday) {
        if (userRole == null || userRole < 0L || Objects.equals(userRole, 0L)) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "输入有误 (>_<) !!!");
        }
        if (birthday == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "输入有误 (>_<) !!!");
        }
        if (gender == null || gender < 0 || Objects.equals(gender, 0)) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "输入有误 (>_<) !!!");
        }
    }

    /**
     * 更新用户
     *
     * @param user user对象
     * @return 成功或失败
     */
    @Override
    public boolean updateUser(User user) {
        Long id = user.getId();
        String userCode = user.getUserCode();
        String userName = user.getUserName();
        String userPassword = user.getUserPassword();
        Integer gender = user.getGender();
        Date birthday = user.getBirthday();
        String phone = user.getPhone();
        String address = user.getAddress();
        Long userRole = user.getUserRole();
        Common.checkStringIsAnyBlank(userCode, userName, userPassword, phone, address);
        if (id == null || id < 0) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "输入有误 (>_<) !!!");
        }
        isNotNull(userRole, gender, birthday);
        // 正则匹配
        userPattern(userCode, phone);
        return this.updateById(user);
    }


    /**
     * 正则匹配是否符合要求
     *
     * @param userCode 用户编码
     * @param phone    手机号
     */
    private void userPattern(String userCode, String phone) {
        if (!userCode.matches(UserConstant.PATTERN)) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "用户编码不能包含特殊字符 (>_<) !!! ");
        }
        String phonePattern = "^[1-9]\\d{10}$";
        if (!phone.matches(phonePattern)) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "手机号不正确 (>_<) !!!");
        }
    }
}




