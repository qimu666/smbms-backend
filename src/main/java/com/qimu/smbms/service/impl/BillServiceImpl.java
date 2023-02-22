package com.qimu.smbms.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.qimu.smbms.mapper.BillMapper;
import com.qimu.smbms.mapper.ProviderMapper;
import com.qimu.smbms.model.domain.Bill;
import com.qimu.smbms.model.domain.Provider;
import com.qimu.smbms.model.vo.bill.BillVo;
import com.qimu.smbms.service.BillService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author qimu
 * @description 针对表【smbms_bill】的数据库操作Service实现
 * @createDate 2023-02-18 15:50:01
 */
@Service
public class BillServiceImpl extends ServiceImpl<BillMapper, Bill>
        implements BillService {
    @Resource
    private BillMapper billMapper;
    @Resource
    private ProviderMapper providerMapper;

    @Override
    public BillVo selectBills(String productName, Integer providerId, Integer isPayment, Integer pageIndex, Integer pageSize) {
        Page<Bill> billPage = new Page<>(pageIndex, pageSize);
        LambdaQueryWrapper<Bill> billLambdaQueryWrapper = new LambdaQueryWrapper<>();
        billLambdaQueryWrapper.eq(isPayment != null && !isPayment.equals(0), Bill::getIsPayment, isPayment);
        billLambdaQueryWrapper.eq(providerId != null && !providerId.equals(0), Bill::getProviderId, providerId);
        billLambdaQueryWrapper.like(StringUtils.isNotBlank(productName), Bill::getProductName, productName);
        Page<Bill> billSelectData = billMapper.selectPage(billPage, billLambdaQueryWrapper);
        List<Bill> billsList = billSelectData.getRecords();
        for (Bill bill : billsList) {
            Long billProviderId = bill.getProviderId();
            Provider provider = providerMapper.selectById(billProviderId);
            bill.setProviderName(provider.getProName());
        }
        BillVo billVo = new BillVo();
        billVo.setBillList(billsList);
        billVo.setTotal(billSelectData.getTotal());
        return billVo;
    }
}




