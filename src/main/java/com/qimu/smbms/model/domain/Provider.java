package com.qimu.smbms.model.domain;

import com.baomidou.mybatisplus.annotation.*;
import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;

/**
 * @TableName smbms_provider
 */
@TableName(value = "smbms_provider")
@Data
public class Provider implements Serializable {
    @TableField(exist = false)
    private static final long serialVersionUID = 1L;
    /**
     * 主键ID
     */
    @TableId(type = IdType.AUTO)
    private Long id;
    /**
     * 供应商编码
     */
    private String proCode;
    /**
     * 供应商名称
     */
    private String proName;
    /**
     * 供应商详细描述
     */
    private String proDesc;
    /**
     * 供应商联系人
     */
    private String proContact;
    /**
     * 联系电话
     */
    private String proPhone;
    /**
     * 地址
     */
    private String proAddress;
    /**
     * 传真
     */
    private String proFax;
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
     * 逻辑删除
     */
    @TableLogic
    private Integer isDelete;
    /**
     * 更新时间
     */
    private Date modifyDate;
    /**
     * 更新者（userId）
     */
    private Long modifyBy;
}