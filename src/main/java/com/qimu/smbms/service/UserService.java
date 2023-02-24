package com.qimu.smbms.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.qimu.smbms.model.domain.User;
import com.qimu.smbms.model.request.UserAddRequest;
import com.qimu.smbms.model.request.UserPageRequest;
import com.qimu.smbms.model.vo.bill.UserVo;

import javax.servlet.http.HttpServletRequest;

/**
 * @author qimu
 * @description 针对表【smbms_user(`smbms_user`)】的数据库操作Service
 * @createDate 2023-02-18 15:50:26
 */
public interface UserService extends IService<User> {

    User userLogin(String userCode, String userPassword, HttpServletRequest request);

    Boolean updatePassword(String oldPassword, String newPassword, String reNewPassword, HttpServletRequest request);

    UserVo selectUsers(String userName, Long userRole, Integer pageIndex, Integer pageSize);

    User getUserById(Integer id);

    Long addUser(UserAddRequest userAddRequest);

    boolean updateUser(User user);
}
