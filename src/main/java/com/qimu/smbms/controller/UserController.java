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
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

/**
 * @author qimu
 */
@Controller
@RequestMapping("/user")
public class UserController {
    @Resource
    private UserService userService;

    @PostMapping("/users")
    @ResponseBody
    public BaseResponse<UserVo> getUsers(@RequestBody UserPageRequest userPageRequest) {
        Common.notNull(userPageRequest);
        Integer pageIndex = userPageRequest.getPageIndex();
        String userName = userPageRequest.getUserName();
        Long userRole = userPageRequest.getUserRole();
        Integer pageSize = userPageRequest.getPageSize();
        UserVo userPage = userService.selectUsers(userName, userRole, pageIndex, pageSize);
        return ResultUtil.success(userPage);
    }

    @GetMapping("/{id}")
    @ResponseBody
    public BaseResponse<User> getUser(@PathVariable("id") Integer id) {
        Common.checkId(id);
        User user = userService.getUserById(id);
        return ResultUtil.success(user);
    }

    @PutMapping("/save")
    @ResponseBody
    public BaseResponse<User> updateUser(@RequestBody User user) {
        Common.notNull(user);
        boolean updateStatus = userService.updateUser(user);
        if (updateStatus) {
            return ResultUtil.success(ErrorCode.SUCCESS);
        } else {
            return ResultUtil.error(ErrorCode.ERROR_CODE, "操作失败");
        }
    }

    @DeleteMapping("/{id}")
    @ResponseBody
    public BaseResponse<User> deleteUser(@PathVariable("id") Integer id) {
        Common.checkId(id);
        boolean deleteStatus = userService.removeById(id);
        if (deleteStatus) {
            return ResultUtil.success(ErrorCode.SUCCESS, "删除成功");
        } else {
            return ResultUtil.error(ErrorCode.ERROR_CODE, "删除失败");
        }
    }


    @PostMapping("/save")
    @ResponseBody
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
    @ResponseBody
    public BaseResponse<User> login(@RequestBody User user, HttpServletRequest request) {
        Common.notNull(user);
        User u = userService.userLogin(user.getUserCode(), user.getUserPassword(), request);
        if (u == null) {
            throw new BusinessException(ErrorCode.RESULT_ERROR, "账号密码有误！");
        }
        return ResultUtil.success(ErrorCode.SUCCESS, u);
    }


    /**
     * 退出登录 删除session信息
     *
     * @param request session
     * @return
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
    @ResponseBody
    public BaseResponse<User> getCurrentUser(HttpServletRequest request) {
        Object objUser = request.getSession().getAttribute(UserConstant.USER_LOGIN_STATUS);
        User currentUser = (User) objUser;
        if (currentUser == null) {
            throw new BusinessException(ErrorCode.NOT_LOGIN);
        }
        return ResultUtil.success(currentUser, ErrorCode.SUCCESS);
    }

    @PutMapping("/updatePassword")
    @ResponseBody
    public BaseResponse<Boolean> updatePassword(@RequestBody UserRequest userRequest, HttpServletRequest request) {
        Common.notNull(userRequest);
        String oldPassword = userRequest.getOldPassword();
        String newPassword = userRequest.getNewPassword();
        String reNewPassword = userRequest.getReNewPassword();
        Boolean updateStatus = userService.updatePassword(oldPassword, newPassword, reNewPassword, request);
        return ResultUtil.success(updateStatus, ErrorCode.SUCCESS);
    }
}