package com.lhzl.drp.dao;

import com.lhzl.drp.model.Permissioninfo;

public interface PermissioninfoMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Permissioninfo record);

    int insertSelective(Permissioninfo record);

    Permissioninfo selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(Permissioninfo record);

    int updateByPrimaryKeyWithBLOBs(Permissioninfo record);

    int updateByPrimaryKey(Permissioninfo record);
}