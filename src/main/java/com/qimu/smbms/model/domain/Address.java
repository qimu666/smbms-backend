package com.qimu.smbms.model.domain;

import com.baomidou.mybatisplus.annotation.*;
import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;

/**
 * @author qimu
 * @TableName smbms_address
 */
@TableName(value = "smbms_address")
@Data
public class Address implements Serializable {
    @TableField(exist = false)
    private static final long serialVersionUID = 1L;
    /**
     * 主键ID
     */
    @TableId(type = IdType.AUTO)
    private Long id;
    /**
     * 联系人姓名
     */
    private String contact;
    /**
     * 逻辑删除
     */
    @TableLogic
    private Integer isDelete;
    /**
     * 收货地址明细
     */
    private String addressDesc;
    /**
     * 邮编
     */
    private String postCode;
    /**
     * 联系人电话
     */
    private String tel;
    /**
     * 创建者
     */
    private Long createdBy;
    /**
     * 创建时间
     */
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    private Date creationDate;
    /**
     * 修改者
     */
    private Long modifyBy;
    /**
     * 修改时间
     */
    private Date modifyDate;
    /**
     * 用户ID
     */
    private Long userId;
}