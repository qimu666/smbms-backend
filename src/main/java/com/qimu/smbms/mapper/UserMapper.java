package com.qimu.smbms.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.qimu.smbms.model.domain.User;
import org.apache.ibatis.annotations.Mapper;

/**
* @author qimu
* @description 针对表【smbms_user(`smbms_user`)】的数据库操作Mapper
* @createDate 2023-02-18 15:50:26
* @Entity com.qimu.model.domain.User
*/
@Mapper
public interface UserMapper extends BaseMapper<User> {

}




