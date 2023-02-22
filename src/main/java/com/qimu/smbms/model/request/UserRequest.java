package com.qimu.smbms.model.request;

import com.qimu.smbms.model.domain.Role;
import lombok.Data;

import java.io.Serializable;

/**
 * @author: QiMu
 * @Date: 2023年02月14日 12:28
 * @Version:1.0
 * @Description:
 */
@Data
public class UserRequest implements Serializable {
    private Integer id;
    private String userCode;
    private String userName;
    private String userPassword;
    private Integer gender;
    private String birthday;
    private String phone;
    private String address;
    private Integer userRole;
    private Integer createdBy;
    private Integer modifyBy;
    private Role role;
}
