package com.lhzl.drp.service;

import com.lhzl.drp.dao.PermissionInfoMapper;
import com.lhzl.drp.dao.RoleInfoMapper;
import com.lhzl.drp.model.PermissionInfo;
import com.lhzl.drp.model.RoleInfo;
import com.lhzl.drp.util.DataBaseUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
    private RoleInfoMapper roleinfoMapper;

    @Autowired
    private PermissionInfoMapper permissioninfoMapper;

    /**
     * 角色列表
     *
     * @param userid 用户id
     * @return 角色列表
     */
    @Override
    public List<RoleInfo> roleList(long userid) {
        return this.roleinfoMapper.selectByUid(userid);
    }

    /**
     * 保存角色信息
     *
     * @param role 角色信息
     * @return 是否成功
     */
    @Override
    public int saveRole(RoleInfo role) {
        int result = 1;
        try {
            int count = this.roleinfoMapper.existRoleName(role.getUserid(), role.getRolename(), role.getId());
            if (count != 0) {
                result = 2;
            } else {
                if (role.getId() == 0) {
                    role.setFlag("U");
                    DataBaseUtil.setCreateInfo(role, role.getUpdateby());
                    result = this.roleinfoMapper.insert(role);
                } else {
                    RoleInfo roleinfo = this.roleinfoMapper.selectByPrimaryKey(role.getId());
                    if ("S".equals(roleinfo.getFlag())) {
                        result = 3;
                        return result;
                    }
                    result = this.roleinfoMapper.updateByPrimaryKeySelective(role);
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
            RoleInfo roleinfo = this.roleinfoMapper.selectByPrimaryKey(roleid);
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

    /**
     * 权限列表
     *
     * @return 权限列表
     */
    @Override
    public List<PermissionInfo> pmsnList() {
        return this.permissioninfoMapper.selectAll();
    }
}
