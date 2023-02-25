package com.qimu.smbms.controller;

import com.qimu.smbms.common.BaseResponse;
import com.qimu.smbms.common.ErrorCode;
import com.qimu.smbms.common.ResultUtil;
import com.qimu.smbms.exception.BusinessException;
import com.qimu.smbms.model.domain.Role;
import com.qimu.smbms.service.RoleService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author qimu
 */
@Controller
@CrossOrigin(value = {"http://localhost:8089", "http://101.43.61.87"}, allowCredentials = "true")
public class RoleController {
    @Resource
    private RoleService roleService;

    /**
     * 获取供应商
     *
     * @return 所有供应商信息
     */
    @GetMapping("/list")
    @ResponseBody
    public BaseResponse<List<Role>> roleList() {
        List<Role> roleList = roleService.list();
        if (roleList.isEmpty()) {
            throw new BusinessException(ErrorCode.RESULT_ERROR, "角色不存在");
        }
        return ResultUtil.success(roleList, ErrorCode.SUCCESS);
    }
}
