package com.lhzl.drp.service;

import com.lhzl.drp.dao.RoleinfoMapper;
import com.lhzl.drp.model.Roleinfo;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

/**
 * 权限管理实现类
 *
 * @author chen jinyi
 */
@Service("securityService")
public class SecurityServiceImpl implements SecurityService {

    private static final Logger logger = LoggerFactory.getLogger(SecurityServiceImpl.class);

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
        int result = 1;
        try {
            int count = this.roleinfoMapper.existRoleName(role.getUserid(), role.getRolename());
            if (count != 0) {
                result = 2;
            } else {
                role.setUpdateby("chenjy");
                role.setUpdatetime(new Date());
                if (role.getId() == 0) {
                    role.setFlag("U");
                    role.setCreatby(role.getUpdateby());
                    role.setCreattime(role.getUpdatetime());
                    result = this.roleinfoMapper.insert(role);
                } else {
                    Roleinfo roleinfo = this.roleinfoMapper.selectByPrimaryKey(role.getId());
                    if ("S".equals(roleinfo.getFlag())) {
                        result = 3;
                        return result;
                    }
                    result = this.roleinfoMapper.updateByPrimaryKey(role);
                }
            }
        } catch (Exception e) {
            result = -1;
            this.logger.error("角色保存异常", e);
        }
        return result;
    }

    /**
     * 删除角色
     *
     * @param roleid 角色id
     * @return 是否成功
     */
    @Override
    public int delRole(long roleid) {
        int result = 1;
        try {
            Roleinfo roleinfo = this.roleinfoMapper.selectByPrimaryKey(roleid);
            if (roleinfo == null) {
                result = 0;
                return result;
            } else {
                if ("S".equals(roleinfo.getFlag())) {
                    result = 2;
                    return result;
                }
                result = this.roleinfoMapper.deleteByPrimaryKey(roleid);
            }
        } catch (Exception e) {
            result = -1;
            this.logger.error("删除角色异常", e);
        }
        return result;
    }
}
