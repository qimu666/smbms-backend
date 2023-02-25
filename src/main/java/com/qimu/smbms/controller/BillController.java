package com.qimu.smbms.controller;

import com.qimu.smbms.common.BaseResponse;
import com.qimu.smbms.common.ErrorCode;
import com.qimu.smbms.common.ResultUtil;
import com.qimu.smbms.constant.Common;
import com.qimu.smbms.model.domain.Bill;
import com.qimu.smbms.model.request.BillPageRequest;
import com.qimu.smbms.model.vo.bill.BillVo;
import com.qimu.smbms.service.BillService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;


/**
 * @author qimu
 */
@Controller
@CrossOrigin(value = {"http://localhost:8089", "http://101.43.61.87"}, allowCredentials = "true")
@RequestMapping("/bill")
public class BillController {
    @Resource
    private BillService billService;

    @PostMapping("/bills")
    @ResponseBody
    public BaseResponse<BillVo> getBills(@RequestBody BillPageRequest billPageRequest) {
        Common.notNull(billPageRequest);
        Integer pageIndex = billPageRequest.getPageIndex();
        String productName = billPageRequest.getProductName();
        Integer isPayment = billPageRequest.getIsPayment();
        Long providerId = billPageRequest.getProviderId();
        Integer pageSize = billPageRequest.getPageSize();
        BillVo billPage = billService.selectBills(productName, providerId, isPayment, pageIndex, pageSize);
        return ResultUtil.success(billPage);
    }

    @GetMapping("/{id}")
    @ResponseBody
    public BaseResponse<Bill> getBill(@PathVariable("id") Integer id) {
        Common.checkId(id);
        Bill bill = billService.getBillById(id);
        return ResultUtil.success(bill);
    }

    @PutMapping("/save")
    @ResponseBody
    public BaseResponse<Bill> updateBill(@RequestBody Bill bill) {
        Common.notNull(bill);
        boolean updateStatus = billService.updateBill(bill);
        if (updateStatus) {
            return ResultUtil.success(ErrorCode.SUCCESS);
        } else {
            return ResultUtil.error(ErrorCode.ERROR_CODE, "操作失败");
        }
    }

    @DeleteMapping("/{id}")
    @ResponseBody
    public BaseResponse<Bill> deleteBill(@PathVariable("id") Integer id) {
        Common.checkId(id);
        boolean deleteStatus = billService.removeById(id);
        if (deleteStatus) {
            return ResultUtil.success(ErrorCode.SUCCESS, "删除成功");
        } else {
            return ResultUtil.error(ErrorCode.ERROR_CODE, "删除失败");
        }
    }

    @PostMapping("/save")
    @ResponseBody
    public BaseResponse<Long> addBill(@RequestBody Bill bill) {
        Common.notNull(bill);
        Long addStatus = billService.addBill(bill);
        return ResultUtil.success(addStatus, ErrorCode.SUCCESS);
    }
}
