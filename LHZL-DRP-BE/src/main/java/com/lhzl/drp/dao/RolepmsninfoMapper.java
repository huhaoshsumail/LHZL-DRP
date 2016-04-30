package com.lhzl.drp.dao;

import com.lhzl.drp.model.RolepmsnInfo;

public interface RolepmsnInfoMapper {
    int deleteByPrimaryKey(Long id);

    int insert(RolepmsnInfo record);

    int insertSelective(RolepmsnInfo record);

    RolepmsnInfo selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(RolepmsnInfo record);

    int updateByPrimaryKey(RolepmsnInfo record);
}