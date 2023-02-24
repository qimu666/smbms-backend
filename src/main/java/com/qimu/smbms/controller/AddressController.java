package com.qimu.smbms.controller;


import com.qimu.smbms.service.AddressService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;

import javax.annotation.Resource;

/**
 * @author qimu
 */
@Controller
public class AddressController {
    @Resource
    private AddressService addressService;

}
