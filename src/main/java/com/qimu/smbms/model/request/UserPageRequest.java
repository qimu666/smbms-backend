package com.qimu.smbms.model.request;

import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * @author: QiMu
 * @Date: 2023年02月14日 20:23
 * @Version:1.0
 * @Description:
 */
@Data
public class UserPageRequest implements Serializable {
    private String userCode;
    private String userName;
    private Long userRole;
    private String userPassword;
    private String confirmPassword;
    private Integer gender;
    private Date birthday;
    private String phone;
    private String address;
    private Integer pageIndex;
    private Integer pageSize;

    public Integer getPageIndex() {
        if (pageIndex <= 0) {
            pageIndex = 1;
        }
        return pageIndex;
    }
}
