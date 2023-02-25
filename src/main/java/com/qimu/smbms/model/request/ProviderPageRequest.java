package com.qimu.smbms.model.request;

import lombok.Data;

import java.io.Serializable;

/**
 * @author: QiMu
 * @Date: 2023年02月21日 08:35
 * @Version:1.0
 * @Description:
 */
@Data
public class ProviderPageRequest implements Serializable {
    Integer pageIndex;
    Integer pageSize;
    /**
     * 供应商编码
     */
    private String proCode;
    /**
     * 供应商名称
     */
    private String proName;
    /**
     * 联系人
     */
    private String proContact;

    public Integer getPageIndex() {
        if (pageIndex <= 0) {
            pageIndex = 1;
        }
        return pageIndex;
    }
}
