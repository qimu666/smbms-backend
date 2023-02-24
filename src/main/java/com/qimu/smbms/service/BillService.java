package com.qimu.smbms.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.qimu.smbms.model.domain.Bill;
import com.qimu.smbms.model.vo.bill.BillVo;

/**
 * @author qimu
 * @description 针对表【smbms_bill】的数据库操作Service
 * @createDate 2023-02-18 15:50:01
 */
public interface BillService extends IService<Bill> {
    /**
     * 分页俺条件查询数据
     *
     * @param productName
     * @param providerId
     * @param isPayment
     * @param pageIndex
     * @param pageSize
     * @return
     */
    BillVo selectBills(String productName, Long providerId, Integer isPayment, Integer pageIndex, Integer pageSize);

    /**
     * 根据id获取订单信息
     * @param id
     * @return
     */
    Bill getBillById(Integer id);

    Long addBill(Bill bill);

    boolean updateBill(Bill bill);
}
