package com.qimu.smbms.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.qimu.smbms.common.ErrorCode;
import com.qimu.smbms.common.CheckInputCommon;
import com.qimu.smbms.exception.BusinessException;
import com.qimu.smbms.mapper.ProviderMapper;
import com.qimu.smbms.model.domain.Provider;
import com.qimu.smbms.model.vo.bill.ProviderVo;
import com.qimu.smbms.service.ProviderService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

/**
 * @author qimu
 * @description 针对表【smbms_provider】的数据库操作Service实现
 * @createDate 2023-02-18 15:50:20
 */
@Service
public class ProviderServiceImpl extends ServiceImpl<ProviderMapper, Provider>
        implements ProviderService {
    @Resource
    private ProviderMapper providerMapper;

    /**
     * 分页获取所以供应商信息
     * 支持模糊查询
     *
     * @param proCode    模糊查询供应商编号
     * @param proName    模糊查询供应商名字
     * @param proContact 联系人
     * @param pageIndex  当前页
     * @param pageSize   显示的数量
     * @return 供应商信息
     */
    @Override
    public ProviderVo selectProviders(String proCode, String proName, String proContact, Integer pageIndex, Integer pageSize) {
        Page<Provider> providerPage = new Page<>(pageIndex, pageSize);
        LambdaQueryWrapper<Provider> providerLambdaQueryWrapper = new LambdaQueryWrapper<>();
        providerLambdaQueryWrapper.like(StringUtils.isNotBlank(proCode), Provider::getProCode, proCode);
        providerLambdaQueryWrapper.like(StringUtils.isNotBlank(proName), Provider::getProName, proName);
        providerLambdaQueryWrapper.like(StringUtils.isNotBlank(proContact), Provider::getProContact, proContact);
        Page<Provider> providerSelectData = providerMapper.selectPage(providerPage, providerLambdaQueryWrapper);
        List<Provider> providersList = providerSelectData.getRecords();
        ProviderVo providerVo = new ProviderVo();
        providerVo.setProviderList(providersList);
        providerVo.setTotal(providerSelectData.getTotal());
        return providerVo;
    }

    /**
     * 通过id获取供应商
     *
     * @param id 供应商id
     * @return 供应商信息
     */
    @Override
    public Provider getProviderById(Integer id) {
        return providerMapper.selectById(id);
    }

    /**
     * 添加供应商
     *
     * @param provider 供应商
     * @return 新供应商id
     */
    @Override
    @Transactional(rollbackFor = Exception.class)
    public Long addProvider(Provider provider) {
        Provider newProvider = checkParam(provider);
        newProvider.setCreationDate(new Date());
        LambdaQueryWrapper<Provider> providerLambdaQueryWrapper = new LambdaQueryWrapper<>();
        providerLambdaQueryWrapper.eq(Provider::getProCode, newProvider.getProCode());
        Provider addProvider = providerMapper.selectOne(providerLambdaQueryWrapper);
        if (addProvider != null) {
            throw new BusinessException(ErrorCode.USER_EXITS, "该供应商已存在");
        }
        boolean addStatus = this.save(newProvider);
        if (!addStatus) {
            throw new BusinessException(ErrorCode.ERROR_CODE, "供应商添加失败,请重试");
        }
        return provider.getId();
    }

    /**
     * 更新供应商信息
     *
     * @param provider 供应商
     * @return 成功或失败
     */
    @Override
    @Transactional(rollbackFor = Exception.class)
    public boolean updateProvider(Provider provider) {
        Long id = provider.getId();
        Provider newProvider = checkParam(provider);
        newProvider.setModifyDate(new Date());
        if (id == null || id < 0) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "输入有误 (>_<) !!!");
        }
        return this.updateById(provider);
    }

    /**
     * 校验供应商字段是否满足要求
     *
     * @param provider 供应商
     * @return 供应商对象
     */
    private Provider checkParam(Provider provider) {
        String proCode = provider.getProCode();
        String proName = provider.getProName();
        String proDesc = provider.getProDesc();
        String proContact = provider.getProContact();
        String proPhone = provider.getProPhone();
        String proAddress = provider.getProAddress();
        String proFax = provider.getProFax();
        provider.setModifyDate(new Date());
        providerCheck(proName, proPhone);
        CheckInputCommon.checkStringIsAnyBlank(proCode, proName, proDesc, proContact, proPhone, proAddress, proFax);
        return provider;
    }

    /**
     * 校验手机号和供应商名是否正确
     *
     * @param proName  供应商名
     * @param proPhone 手机号
     */

    private void providerCheck(String proName, String proPhone) {
        CheckInputCommon.stringPattern(proName);
        CheckInputCommon.phonePattern(proPhone);
    }

}




