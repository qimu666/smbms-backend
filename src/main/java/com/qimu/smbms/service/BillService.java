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
     * 分页获取订单信息
     * 支持模糊查询
     *
     * @param productName 产品名
     * @param providerId  供应商id
     * @param isPayment   是否支付
     * @param pageIndex   当前页
     * @param pageSize    显示的个数
     * @return 订单列表信息
     */
    BillVo selectBills(String productName, Long providerId, Integer isPayment, Integer pageIndex, Integer pageSize);

    /**
     * 通过id获取订单信息
     *
     * @param id 订单id
     * @return 订单信息
     */
    Bill getBillById(Integer id);

    /**
     * 添加新订单
     *
     * @param bill 订单实体类
     * @return 新订单id
     */
    Long addBill(Bill bill);

    /**
     * 修改订单信息
     *
     * @param bill 订单实体类
     * @return 成功或失败
     */
    boolean updateBill(Bill bill);
}
