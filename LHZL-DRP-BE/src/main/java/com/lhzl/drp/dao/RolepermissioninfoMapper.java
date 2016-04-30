package com.lhzl.drp.dao;

import com.lhzl.drp.model.RolePermissionInfo;

public interface RolePermissionInfoMapper {
    int deleteByPrimaryKey(Long id);

    int insert(RolePermissionInfo record);

    int insertSelective(RolePermissionInfo record);

    RolePermissionInfo selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(RolePermissionInfo record);

    int updateByPrimaryKey(RolePermissionInfo record);
}