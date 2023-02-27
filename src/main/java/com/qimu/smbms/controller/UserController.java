package com.qimu.smbms.controller;

import com.qimu.smbms.common.BaseResponse;
import com.qimu.smbms.common.ErrorCode;
import com.qimu.smbms.common.ResultUtil;
import com.qimu.smbms.constant.Common;
import com.qimu.smbms.constant.UserConstant;
import com.qimu.smbms.exception.BusinessException;
import com.qimu.smbms.model.domain.User;
import com.qimu.smbms.model.request.UserAddRequest;
import com.qimu.smbms.model.request.UserPageRequest;
import com.qimu.smbms.model.request.UserRequest;
import com.qimu.smbms.model.vo.bill.UserVo;
import com.qimu.smbms.service.UserService;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

/**
 * @author qimu
 */
@RestController
@CrossOrigin(value = {"http://localhost:8089", "http://101.43.61.87"}, allowCredentials = "true")
@RequestMapping("/user")
public class UserController {
    @Resource
    private UserService userService;

    /**
     * 获取用户信息列表
     *
     * @param userPageRequest 接收前端的数据
     * @return 用户信息列表
     */
    @PostMapping("/users")
    public BaseResponse<UserVo> getUsers(@RequestBody UserPageRequest userPageRequest) {
        Common.notNull(userPageRequest);
        Integer pageIndex = userPageRequest.getPageIndex();
        String userName = userPageRequest.getUserName();
        Long userRole = userPageRequest.getUserRole();
        Integer pageSize = userPageRequest.getPageSize();
        UserVo userPage = userService.selectUsers(userName, userRole, pageIndex, pageSize);
        return ResultUtil.success(userPage);
    }

    /**
     * 根据id获取用户
     *
     * @param id 用户id
     * @return 用户信息
     */
    @GetMapping("/{id}")
    public BaseResponse<User> getUser(@PathVariable("id") Integer id) {
        Common.checkId(id);
        User user = userService.getUserById(id);
        return ResultUtil.success(user);
    }

    /**
     * 更新用户信息
     *
     * @param user 接收前端的数据
     * @return 操作结果
     */
    @PutMapping("/save")
    public BaseResponse<User> updateUser(@RequestBody User user) {
        Common.notNull(user);
        boolean updateStatus = userService.updateUser(user);
        return updateStatus ? ResultUtil.success(ErrorCode.SUCCESS) : ResultUtil.error(ErrorCode.ERROR_CODE, "操作失败");
    }

    /**
     * 删除用户
     *
     * @param id 用户id
     * @return 执行结果
     */
    @DeleteMapping("/{id}")
    public BaseResponse<User> deleteUser(@PathVariable("id") Integer id) {
        Common.checkId(id);
        boolean deleteStatus = userService.removeById(id);
        return deleteStatus ? ResultUtil.success(ErrorCode.SUCCESS, "删除成功") : ResultUtil.error(ErrorCode.ERROR_CODE, "删除失败");
    }

    /**
     * 添加用户
     *
     * @param userAddRequest 接收前端传的数据
     * @return 新用户id
     */
    @PostMapping("/save")
    public BaseResponse<Long> addUser(@RequestBody UserAddRequest userAddRequest) {
        Common.notNull(userAddRequest);
        Long addUserStatus = userService.addUser(userAddRequest);
        return ResultUtil.success(addUserStatus, ErrorCode.SUCCESS);
    }

    /**
     * 登录
     *
     * @param user    接收参数
     * @param request 保存session
     * @return 用户信息
     */
    @PostMapping("/login")
    public BaseResponse<User> login(@RequestBody User user, HttpServletRequest request) {
        Common.notNull(user);
        User loginStatus = userService.userLogin(user.getUserCode(), user.getUserPassword(), request);
        if (loginStatus == null) {
            throw new BusinessException(ErrorCode.RESULT_ERROR, "账号密码有误！");
        }
        return ResultUtil.success(ErrorCode.SUCCESS, loginStatus);
    }

    /**
     * 退出登录 删除session信息
     *
     * @param request session
     */

    @GetMapping("/logout")
    public void logOut(HttpServletRequest request) {
        request.getSession().removeAttribute(UserConstant.USER_LOGIN_STATUS);
        throw new BusinessException(ErrorCode.NOT_LOGIN);
    }

    /**
     * 获取当前用户
     *
     * @param request session
     * @return session中是否存在登录的用户信息
     */
    @PostMapping("/current")
    public BaseResponse<User> getCurrentUser(HttpServletRequest request) {
        Object objUser = request.getSession().getAttribute(UserConstant.USER_LOGIN_STATUS);
        User currentUser = (User) objUser;
        if (currentUser == null) {
            throw new BusinessException(ErrorCode.NOT_LOGIN);
        }
        return ResultUtil.success(currentUser, ErrorCode.SUCCESS);
    }

    /**
     * 修改当前用户密码
     *
     * @param userRequest 用户请求参数
     * @param request     获取session
     * @return 执行结果
     */
    @PutMapping("/updatePassword")
    public BaseResponse<Boolean> updatePassword(@RequestBody UserRequest userRequest, HttpServletRequest request) {
        Common.notNull(userRequest);
        String oldPassword = userRequest.getOldPassword();
        String newPassword = userRequest.getNewPassword();
        String reNewPassword = userRequest.getReNewPassword();
        Boolean updateStatus = userService.updatePassword(oldPassword, newPassword, reNewPassword, request);
        return ResultUtil.success(updateStatus, ErrorCode.SUCCESS);
    }
}