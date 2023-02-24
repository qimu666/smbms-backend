package com.qimu.smbms.model.domain;

import com.baomidou.mybatisplus.annotation.*;
import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;

/**
 * `smbms_user`
 *
 * @TableName smbms_user
 */
@TableName(value = "smbms_user")
@Data
public class User implements Serializable {
    /**
     * 主键ID
     */
    @TableId(type = IdType.AUTO)
    private Long id;

    /**
     * 用户编码
     */
    private String userCode;

    /**
     * 用户名称
     */
    private String userName;

    /**
     * 用户密码
     */
    private String userPassword;

    /**
     * 性别（1:男、 2:女）
     */
    private Integer gender;

    /**
     * 出生日期
     */
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    @JsonFormat(pattern = "yyyy-MM-dd", timezone = "GMT+8")
    private Date birthday;

    /**
     * 手机
     */
    private String phone;

    /**
     * 地址
     */
    private String address;

    /**
     * 用户角色（取自角色表-角色id）
     */
    private Long userRole;

    /**
     * 创建者（userId）
     */
    private Long createdBy;

    /**
     * 创建时间
     */
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    private Date creationDate;

    /**
     * 更新者（userId）
     */
    private Long modifyBy;

    /**
     * 逻辑删除
     */
    @TableLogic
    private Integer isDelete;

    /**
     * 更新时间
     */
    private Date modifyDate;
    /**
     * 登录状态 0 - 没有登录 1 -已登录
     */
    private Integer loginStatus;

    /**
     * 角色名
     */
    @TableField(exist = false)
    private String userRoleName;

    @TableField(exist = false)
    private static final long serialVersionUID = 1L;
}