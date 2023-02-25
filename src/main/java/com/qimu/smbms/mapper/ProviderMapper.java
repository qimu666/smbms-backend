package com.qimu.smbms.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.qimu.smbms.model.domain.Provider;
import org.apache.ibatis.annotations.Mapper;

/**
 * @author qimu
 * @description 针对表【smbms_provider】的数据库操作Mapper
 * @createDate 2023-02-18 15:50:20
 * @Entity com.qimu.model.domain.Provider
 */
@Mapper
public interface ProviderMapper extends BaseMapper<Provider> {

}




