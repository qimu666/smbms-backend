package com.qimu.smbms.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author qimu
 */
@Controller
public class LoginController {
    @RequestMapping("/login.to")
    public String index() {
        return "../login";
    }
}
