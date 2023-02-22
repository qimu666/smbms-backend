package com.qimu.smbms.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.qimu.smbms.common.ErrorCode;
import com.qimu.smbms.exception.BusinessException;
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
import java.util.Objects;
import java.util.stream.Collectors;

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
        List<Bill> billList = billsList.stream().peek(bill -> {
            Long billProviderId = bill.getProviderId();
            Provider provider = providerMapper.selectById(billProviderId);
            bill.setProviderName(provider.getProName());
        }).collect(Collectors.toList());
        BillVo billVo = new BillVo();
        List<Provider> providers = providerMapper.selectList(null);
        billVo.setBillList(billList);
        billVo.setProviderList(providers);
        billVo.setTotal(billSelectData.getTotal());
        return billVo;
    }

    @Override
    public Bill getBillById(Integer id) {
        LambdaQueryWrapper<Bill> billLambdaQueryWrapper = new LambdaQueryWrapper<>();
        billLambdaQueryWrapper.eq(Bill::getId, id);
        Bill bill = baseMapper.selectOne(billLambdaQueryWrapper);
        Long billId = bill.getId();
        Provider provider = providerMapper.selectById(billId);
        bill.setProviderName(provider.getProName());
        return bill;
    }

    @Override
    public Long addBill(Bill bill) {
        String billCode = bill.getBillCode();
        String productName = bill.getProductName();
        String productUnit = bill.getProductUnit();
        Integer isPayment = bill.getIsPayment();
        Long providerId = bill.getProviderId();

        if (StringUtils.isAnyBlank(billCode, productName, productUnit)) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "输入参数有误");
        }
        if (isPayment == null || Objects.equals(isPayment, 0)) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "输入参数有误");
        }
        if (providerId == null || Objects.equals(providerId, 0L)) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "输入参数有误");
        }

        LambdaQueryWrapper<Bill> billLambdaQueryWrapper = new LambdaQueryWrapper<>();
        billLambdaQueryWrapper.eq(Bill::getBillCode, billCode);
        Bill billOne = billMapper.selectOne(billLambdaQueryWrapper);
        if (billOne != null) {
            throw new BusinessException(ErrorCode.USER_EXITS, "订单已存在");
        }

        boolean addStatus = this.save(bill);
        if (!addStatus) {
            throw new BusinessException(ErrorCode.ERROR_CODE, "订单创建失败,请重试");
        }

        return bill.getId();
    }
}




