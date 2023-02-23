package com.qimu.smbms.model.request;

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
    private String oldPassword;
    private String newPassword;
    private String reNewPassword;
}
