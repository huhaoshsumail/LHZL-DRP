package com.lhzl.drp.service;

import com.lhzl.drp.model.Roleinfo;

import java.util.List;

/**
 * 权限管理接口
 * @author  chen jinyi
 */
public interface SecurityService {

    /**
     * 角色礼包
     * @param userid    用户id
     * @return  角色列表
     */
    List<Roleinfo> roleList(long userid);

    /**
     * 保存橘色信息
     * @param role  角色信息
     * @return  是否成功
     */
    int saveRole(Roleinfo role);

    /**
     * 删除角色
     * @param roleid    角色id
     * @return  是否成功
     */
    int delRole(long roleid);
}
