package com.qimu.smbms.controller;


import com.qimu.smbms.service.AddressService;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;

/**
 * @author qimu
 * @Version: 1.0
 */
@RestController
public class AddressController {
    @Resource
    private AddressService addressService;
}
