package com.qimu.smbms.controller;

import com.qimu.smbms.model.domain.Bill;
import com.qimu.smbms.service.BillService;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

import javax.annotation.Resource;

@SpringBootTest
class BillControllerTest {
    @Resource
    private BillService billService;

    @Test
    void addBill() {
        Bill bill = new Bill();
        bill.setBillCode("222002");
        bill.setProductName("1111");
        bill.setProductUnit("qq");
        bill.setIsPayment(1);
        bill.setProviderId(1L);
        Long addStatus = billService.addBill(bill);
        Assertions.assertEquals(130L, addStatus);
    }
}