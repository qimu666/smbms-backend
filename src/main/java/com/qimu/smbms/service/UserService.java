package com.qimu.smbms.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.qimu.smbms.model.domain.User;
import com.qimu.smbms.model.request.UserAddRequest;
import com.qimu.smbms.model.vo.bill.UserVo;

import javax.servlet.http.HttpServletRequest;

/**
 * @author qimu
 * @description 针对表【smbms_user(`smbms_user`)】的数据库操作Service
 * @createDate 2023-02-18 15:50:26
 */
public interface UserService extends IService<User> {
    /**
     * 用户登录
     *
     * @param userCode     用户编码
     * @param userPassword 用户密码
     * @param request      HttpServletRequest用于保存session
     * @return 安全的数据
     */
    User userLogin(String userCode, String userPassword, HttpServletRequest request);

    /**
     * 修改用户密码
     *
     * @param oldPassword   旧密码
     * @param newPassword   新密码
     * @param reNewPassword 确认密码
     * @param request       session
     * @return 修改成功或失败
     */
    Boolean updatePassword(String oldPassword, String newPassword, String reNewPassword, HttpServletRequest request);

    /**
     * 带分页功能的用户信息列表
     *
     * @param userName  用户名
     * @param userRole  用户角色
     * @param pageIndex 当前页码
     * @param pageSize  一页多少条数据
     * @return 用户信息封装为userVo类
     */
    UserVo selectUsers(String userName, Long userRole, Integer pageIndex, Integer pageSize);

    /**
     * 根据id获取用户
     *
     * @param id 用户id
     * @return 用户信息
     */
    User getUserById(Integer id);

    /**
     * 添加用户
     *
     * @param userAddRequest 添加用户实体类
     * @return 添加的新用户id
     */
    Long addUser(UserAddRequest userAddRequest);

    /**
     * 更新用户
     *
     * @param user user对象
     * @return 成功或失败
     */
    boolean updateUser(User user);
}
