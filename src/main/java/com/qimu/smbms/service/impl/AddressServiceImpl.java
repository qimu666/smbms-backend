package com.qimu.smbms.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.qimu.smbms.mapper.AddressMapper;
import com.qimu.smbms.model.domain.Address;
import com.qimu.smbms.service.AddressService;
import org.springframework.stereotype.Service;

/**
 * @author qimu
 * @description 针对表【smbms_address】的数据库操作Service实现
 * @createDate 2023-02-18 15:49:17
 */
@Service
public class AddressServiceImpl extends ServiceImpl<AddressMapper, Address>
        implements AddressService {

}




