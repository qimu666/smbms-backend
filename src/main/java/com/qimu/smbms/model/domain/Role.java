package com.qimu.smbms.model.domain;

import com.baomidou.mybatisplus.annotation.*;
import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;

/**
 * @TableName smbms_role
 */
@TableName(value = "smbms_role")
@Data
public class Role implements Serializable {
    @TableField(exist = false)
    private static final long serialVersionUID = 1L;
    /**
     * 主键ID
     */
    @TableId(type = IdType.AUTO)
    private Long id;
    /**
     * 角色编码
     */
    private String roleCode;
    /**
     * 角色名称
     */
    private String roleName;
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
     * 逻辑删除
     */
    @TableLogic
    private Integer isDelete;
}