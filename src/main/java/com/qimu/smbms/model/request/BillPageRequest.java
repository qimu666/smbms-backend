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
public class BillPageRequest implements Serializable {
    Integer pageIndex;
    String productName;
    Integer isPayment;
    Long providerId;
    Integer pageSize;

    public Integer getPageIndex() {
        if (pageIndex <= 0) {
            pageIndex = 1;
        }
        return pageIndex;
    }
}
