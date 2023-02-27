package com.qimu.smbms.controller;

import com.qimu.smbms.common.BaseResponse;
import com.qimu.smbms.common.ErrorCode;
import com.qimu.smbms.common.ResultUtil;
import com.qimu.smbms.common.CheckInputCommon;
import com.qimu.smbms.exception.BusinessException;
import com.qimu.smbms.model.domain.Provider;
import com.qimu.smbms.model.request.ProviderPageRequest;
import com.qimu.smbms.model.vo.bill.ProviderVo;
import com.qimu.smbms.service.ProviderService;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author qimu
 */
@RestController
@CrossOrigin(value = {"http://localhost:8089", "http://101.43.61.87"}, allowCredentials = "true")
@RequestMapping("/provider")
public class ProviderController {
    @Resource
    private ProviderService providerService;

    /**
     * 获取供应商
     *
     * @return 所有供应商信息
     */
    @GetMapping("/list")
    public BaseResponse<List<Provider>> providerList() {
        List<Provider> providerList = providerService.list();
        if (providerList.isEmpty()) {
            throw new BusinessException(ErrorCode.RESULT_ERROR, "供应商不存在");
        }
        return ResultUtil.success(providerList, ErrorCode.SUCCESS);
    }

    /**
     * 获取供应商信息列表
     *
     * @param providerPageRequest 接收前端的数据
     * @return 用户信息列表
     */
    @PostMapping("/providers")
    public BaseResponse<ProviderVo> getProviders(@RequestBody ProviderPageRequest providerPageRequest) {
        CheckInputCommon.notNull(providerPageRequest);
        Integer pageIndex = providerPageRequest.getPageIndex();
        String proCode = providerPageRequest.getProCode();
        String proName = providerPageRequest.getProName();
        Integer pageSize = providerPageRequest.getPageSize();
        String proContact = providerPageRequest.getProContact();
        ProviderVo providerPage = providerService.selectProviders(proCode, proName, proContact, pageIndex, pageSize);
        return ResultUtil.success(providerPage);
    }

    /**
     * 通过id获取供应商
     *
     * @param id 供应商id
     * @return 供应商信息
     */
    @GetMapping("/{id}")
    public BaseResponse<Provider> getProvider(@PathVariable("id") Integer id) {
        CheckInputCommon.checkId(id);
        Provider provider = providerService.getProviderById(id);
        return ResultUtil.success(provider);
    }

    /**
     * 更新供应商信息
     *
     * @param provider 接收前端的数据
     * @return 操作结果
     */
    @PutMapping("/save")
    public BaseResponse<Provider> updateProvider(@RequestBody Provider provider) {
        CheckInputCommon.notNull(provider);
        boolean updateStatus = providerService.updateProvider(provider);
        return updateStatus ? ResultUtil.success(ErrorCode.SUCCESS) : ResultUtil.error(ErrorCode.ERROR_CODE, "操作失败");
    }

    /**
     * 根据id删除供应商
     *
     * @param id 供应商id
     * @return 操作结果
     */
    @DeleteMapping("/{id}")
    public BaseResponse<Provider> deleteProvider(@PathVariable("id") Integer id) {
        CheckInputCommon.checkId(id);
        boolean deleteStatus = providerService.removeById(id);
        return deleteStatus ? ResultUtil.success(ErrorCode.SUCCESS, "删除成功") : ResultUtil.error(ErrorCode.ERROR_CODE, "删除失败");
    }

    /**
     * 添加供应商
     *
     * @param provider 接收前端信息
     * @return 新供应商id
     */

    @PostMapping("/save")
    public BaseResponse<Long> addProvider(@RequestBody Provider provider) {
        CheckInputCommon.notNull(provider);
        Long addStatus = providerService.addProvider(provider);
        return ResultUtil.success(addStatus, ErrorCode.SUCCESS);
    }
}

