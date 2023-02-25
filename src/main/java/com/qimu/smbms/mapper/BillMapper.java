package com.qimu.smbms.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.qimu.smbms.model.domain.Bill;
import org.apache.ibatis.annotations.Mapper;

/**
 * @author qimu
 * @description 针对表【smbms_bill】的数据库操作Mapper
 * @createDate 2023-02-18 15:50:01
 * @Entity com.qimu.model.domain.Bill
 */
@Mapper
public interface BillMapper extends BaseMapper<Bill> {

}




