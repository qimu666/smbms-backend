package com.qimu.smbms.model.request;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;

/**
 * @author: QiMu
 * @Date: 2023年02月14日 20:23
 * @Version:1.0
 * @Description:
 */
@Data
public class UserAddRequest implements Serializable {
    private Long id;
    private String userCode;
    private String userName;
    private Long userRole;
    private String userPassword;
    private String confirmPassword;
    private Integer gender;
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @JsonFormat(pattern = "yyyy-MM-dd", timezone = "GMT+8")
    private Date birthday;
    private String phone;
    private String address;
}
