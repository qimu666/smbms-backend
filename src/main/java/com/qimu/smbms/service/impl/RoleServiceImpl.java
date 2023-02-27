package com.qimu.smbms.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.qimu.smbms.mapper.RoleMapper;
import com.qimu.smbms.model.domain.Role;
import com.qimu.smbms.service.RoleService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * @author qimu
 * @description 针对表【smbms_role】的数据库操作Service实现
 * @createDate 2023-02-18 15:50:23
 */
@Service
@Transactional(rollbackFor = Exception.class)
public class RoleServiceImpl extends ServiceImpl<RoleMapper, Role>
        implements RoleService {

}




