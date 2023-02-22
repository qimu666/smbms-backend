package com.qimu.smbms.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.qimu.smbms.model.domain.Role;
import org.apache.ibatis.annotations.Mapper;

/**
* @author qimu
* @description 针对表【smbms_role】的数据库操作Mapper
* @createDate 2023-02-18 15:50:23
* @Entity com.qimu.model.domain.Role
*/
@Mapper
public interface RoleMapper extends BaseMapper<Role> {

}




