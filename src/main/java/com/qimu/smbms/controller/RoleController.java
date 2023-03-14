package com.qimu.smbms.controller;

import com.qimu.smbms.common.BaseResponse;
import com.qimu.smbms.common.ErrorCode;
import com.qimu.smbms.common.ResultUtil;
import com.qimu.smbms.exception.BusinessException;
import com.qimu.smbms.model.domain.Role;
import com.qimu.smbms.service.RoleService;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author qimu
 */
@RestController
public class RoleController {
    @Resource
    private RoleService roleService;

    /**
     * 用户角色信息
     *
     * @return 所有用户角色信息
     */
    @GetMapping("/list")
    public BaseResponse<List<Role>> roleList() {
        List<Role> roleList = roleService.list();
        if (roleList.isEmpty()) {
            throw new BusinessException(ErrorCode.RESULT_ERROR, "角色不存在");
        }
        return ResultUtil.success(roleList, ErrorCode.SUCCESS);
    }
}
