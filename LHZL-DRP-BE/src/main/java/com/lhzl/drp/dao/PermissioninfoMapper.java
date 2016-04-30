package com.lhzl.drp.dao;


import com.lhzl.drp.model.PermissionInfo;

import java.util.List;

public interface PermissionInfoMapper {
    int deleteByPrimaryKey(Long id);

    int insert(PermissionInfo record);

    int insertSelective(PermissionInfo record);

    PermissionInfo selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(PermissionInfo record);

    int updateByPrimaryKey(PermissionInfo record);

    List<PermissionInfo> selectAll();
}