package com.qimu.smbms.model.vo.bill;


import com.qimu.smbms.model.domain.Bill;
import com.qimu.smbms.model.domain.Provider;
import lombok.Data;

import java.io.Serializable;
import java.util.List;

/**
 * @author: QiMu
 * @Date: 2023年02月21日 11:26
 * @Version:1.0
 * @Description:
 */
@Data
public class BillVo implements Serializable {

    private Long total;

    private List<Provider> providerList;

    private List<Bill> billList;
}
