package com.qimu.smbms.controller;

import com.qimu.smbms.service.ProviderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author qimu
 */
@Controller
@RequestMapping("/provider")
public class ProviderController {
    @Autowired
    private ProviderService providerService;

    // /**
    //  * 获取供应商
    //  *
    //  * @return 所有供应商信息
    //  */
    // @GetMapping("/providers_list")
    // @ResponseBody
    // public BaseResponse<List<Provider>> providerList() {
    //     List<Provider> providerList = providerService.getProviderList();
    //     if (providerList.isEmpty()) {
    //         throw new BusinessException(ErrorCode.RESULT_ERROR, "供应商");
    //     }
    //     return ResultUtil.success(providerList, ErrorCode.SUCCESS);
    // }
}

