package com.qimu.smbms.model.request;

import lombok.Data;

import java.io.Serializable;

/**
 * @author: QiMu
 * @Date: 2023年02月14日 20:23
 * @Version:1.0
 * @Description:
 */
@Data
public class UserPageRequest implements Serializable {
    private Integer pageIndex;
    private String userName;
    private Integer pageSize;
    private Integer userRole;
}
