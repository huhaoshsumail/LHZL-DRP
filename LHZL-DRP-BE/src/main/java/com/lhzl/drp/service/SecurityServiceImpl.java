package com.lhzl.drp.service;

import com.lhzl.drp.dao.RoleinfoMapper;
import com.lhzl.drp.model.Roleinfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 权限管理实现类
 * @author  chen jinyi
 */
@Service("securityService")
public class SecurityServiceImpl implements SecurityService {

    @Autowired
    private RoleinfoMapper roleinfoMapper;

    /**
     * 角色礼包
     *
     * @param userid 用户id
     * @return 角色列表
     */
    @Override
    public List<Roleinfo> roleList(long userid) {
        return this.roleinfoMapper.selectByUid(userid);
    }

    /**
     * 保存橘色信息
     *
     * @param role 角色信息
     * @return 是否成功
     */
    @Override
    public int saveRole(Roleinfo role) {
        if (role.getId() == 0) {
            return this.roleinfoMapper.insert(role);
        } else {
            return this.roleinfoMapper.updateByPrimaryKey(role);
        }
    }

    /**
     * 删除角色
     *
     * @param roleid 角色id
     * @return 是否成功
     */
    @Override
    public int delRole(long roleid) {
        return this.roleinfoMapper.deleteByPrimaryKey(roleid);
    }
}
