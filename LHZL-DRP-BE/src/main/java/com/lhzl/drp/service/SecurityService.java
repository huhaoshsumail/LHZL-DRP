package com.lhzl.drp.service;

import com.lhzl.drp.model.PermissionInfo;
import com.lhzl.drp.model.RoleInfo;

import java.util.List;

/**
 * 权限管理接口
 * @author  chen jinyi
 */
public interface SecurityService {

    /**
     * 角色列表
     * @param userid    用户id
     * @return  角色列表
     */
    List<RoleInfo> roleList(long userid);

    /**
     * 保存橘色信息
     * @param role  角色信息
     * @return  是否成功
     */
    int saveRole(RoleInfo role);

    /**
     * 删除角色
     * @param roleid    角色id
     * @return  是否成功
     */
    int delRole(long roleid);

    /**
     * 权限列表
     * @return  权限列表
     */
    List<PermissionInfo> pmsnList();
}
