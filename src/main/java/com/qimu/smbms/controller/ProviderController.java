package com.qimu.smbms.controller;

import com.qimu.smbms.common.BaseResponse;
import com.qimu.smbms.common.ErrorCode;
import com.qimu.smbms.common.ResultUtil;
import com.qimu.smbms.exception.BusinessException;
import com.qimu.smbms.model.domain.Provider;
import com.qimu.smbms.service.ProviderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author qimu
 */
@Controller
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
    @ResponseBody
    public BaseResponse<List<Provider>> providerList() {
        List<Provider> providerList = providerService.list();
        if (providerList.isEmpty()) {
            throw new BusinessException(ErrorCode.RESULT_ERROR, "供应商不存在");
        }
        return ResultUtil.success(providerList, ErrorCode.SUCCESS);
    }
}

