package com.qimu.smbms.controller;


import com.qimu.smbms.service.AddressService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

@Controller
public class AddressController {
    @Autowired
    private AddressService addressService;

}
