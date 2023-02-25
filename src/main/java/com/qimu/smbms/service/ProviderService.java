package com.qimu.smbms.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.qimu.smbms.model.domain.Provider;
import com.qimu.smbms.model.vo.bill.ProviderVo;

/**
 * @author qimu
 * @description 针对表【smbms_provider】的数据库操作Service
 * @createDate 2023-02-18 15:50:20
 */
public interface ProviderService extends IService<Provider> {
    /**
     * 通过id获取供应商
     *
     * @param id 供应商id
     * @return 供应商信息
     */
    Provider getProviderById(Integer id);

    /**
     * 添加供应商
     *
     * @param provider 供应商
     * @return 新供应商id
     */
    Long addProvider(Provider provider);

    /**
     * 更新供应商信息
     *
     * @param provider 供应商
     * @return 成功或失败
     */
    boolean updateProvider(Provider provider);

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
    ProviderVo selectProviders(String proCode, String proName, String proContact, Integer pageIndex, Integer pageSize);
}
