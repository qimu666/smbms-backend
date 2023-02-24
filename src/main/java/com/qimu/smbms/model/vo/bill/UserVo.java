package com.qimu.smbms.model.vo.bill;

import com.qimu.smbms.model.domain.Role;
import com.qimu.smbms.model.domain.User;
import lombok.Data;

import java.io.Serializable;
import java.util.List;

/**
 * @author: QiMu
 * @Date: 2023年02月21日 11:26
 * @Version:1.0
 * @Description:
 */
@Data
public class UserVo implements Serializable {

    private Long total;

    private List<Role> roleList;

    private List<User> userList;
}
