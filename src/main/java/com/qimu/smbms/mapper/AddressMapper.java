package com.qimu.smbms.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.qimu.smbms.model.domain.Address;
import org.apache.ibatis.annotations.Mapper;

/**
* @author qimu
* @description 针对表【smbms_address】的数据库操作Mapper
* @createDate 2023-02-18 15:49:17
* @Entity com.qimu.model.domain.Address
*/
@Mapper
public interface AddressMapper extends BaseMapper<Address> {

}




