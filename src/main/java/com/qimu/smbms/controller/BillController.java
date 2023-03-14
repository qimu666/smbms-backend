package com.qimu.smbms.controller;

import com.qimu.smbms.common.BaseResponse;
import com.qimu.smbms.common.ErrorCode;
import com.qimu.smbms.common.ResultUtil;
import com.qimu.smbms.common.CheckInputCommon;
import com.qimu.smbms.model.domain.Bill;
import com.qimu.smbms.model.request.BillPageRequest;
import com.qimu.smbms.model.vo.bill.BillVo;
import com.qimu.smbms.service.BillService;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;

/**
 * @author qimu
 */
@RestController
@RequestMapping("/bill")
public class BillController {
    @Resource
    private BillService billService;

    @PostMapping("/bills")
    public BaseResponse<BillVo> getBills(@RequestBody BillPageRequest billPageRequest) {
        CheckInputCommon.notNull(billPageRequest);
        Integer pageIndex = billPageRequest.getPageIndex();
        String productName = billPageRequest.getProductName();
        Integer isPayment = billPageRequest.getIsPayment();
        Long providerId = billPageRequest.getProviderId();
        Integer pageSize = billPageRequest.getPageSize();
        BillVo billPage = billService.selectBills(productName, providerId, isPayment, pageIndex, pageSize);
        return ResultUtil.success(billPage);
    }

    @GetMapping("/{id}")
    public BaseResponse<Bill> getBill(@PathVariable("id") Integer id) {
        CheckInputCommon.checkId(id);
        Bill bill = billService.getBillById(id);
        return ResultUtil.success(bill);
    }

    @PutMapping({"/save"})
    @ResponseBody
    public BaseResponse<Bill> updateBill(@RequestBody Bill bill) {
        CheckInputCommon.notNull(bill);
        boolean updateStatus = this.billService.updateBill(bill);
        return updateStatus ? ResultUtil.success(ErrorCode.SUCCESS) : ResultUtil.error(ErrorCode.ERROR_CODE, "操作失败");
    }

    @DeleteMapping({"/{id}"})
    @ResponseBody
    public BaseResponse<Bill> deleteBill(@PathVariable("id") Integer id) {
        CheckInputCommon.checkId(id);
        boolean deleteStatus = this.billService.removeById(id);
        return deleteStatus ? ResultUtil.success(ErrorCode.SUCCESS, "删除成功") : ResultUtil.error(ErrorCode.ERROR_CODE, "删除失败");
    }

    @PostMapping({"/save"})
    @ResponseBody
    public BaseResponse<Long> addBill(@RequestBody Bill bill) {
        CheckInputCommon.notNull(bill);
        Long addStatus = this.billService.addBill(bill);
        return ResultUtil.success(addStatus, ErrorCode.SUCCESS);
    }
}
