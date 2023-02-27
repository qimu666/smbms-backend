package com.qimu.smbms.controller;


import com.qimu.smbms.service.AddressService;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;

/**
 * @author qimu
 * @Version: 1.0
 */
@RestController
@Transactional
@CrossOrigin(value = {"http://localhost:8089", "http://101.43.61.87"}, allowCredentials = "true")
public class AddressController {
    @Resource
    private AddressService addressService;
}
