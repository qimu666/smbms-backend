package com.qimu.smbms.controller;

import com.qimu.smbms.common.BaseResponse;
import com.qimu.smbms.common.ResultUtil;
import com.qimu.smbms.model.request.BillPageRequest;
import com.qimu.smbms.model.vo.bill.BillVo;
import com.qimu.smbms.service.BillService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;


/**
 * @author qimu
 */
@Controller
@CrossOrigin(value = "http://localhost:8089", allowCredentials = "true")
@RequestMapping("/bill")
public class BillController {
    @Autowired
    private BillService billService;

    @PostMapping("/bills")
    @ResponseBody
    public BaseResponse<BillVo> productName(@RequestBody BillPageRequest billPageRequest) {
        Integer pageIndex = billPageRequest.getPageIndex();
        String productName = billPageRequest.getProductName();
        Integer isPayment = billPageRequest.getIsPayment();
        Integer providerId = billPageRequest.getProviderId();
        Integer pageSize = billPageRequest.getPageSize();
        BillVo billPage = billService.selectBills(productName, providerId, isPayment, pageIndex, pageSize);
        return ResultUtil.success(billPage);
    }
}
