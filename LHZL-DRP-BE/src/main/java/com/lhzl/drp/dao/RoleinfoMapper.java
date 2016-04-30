package com.lhzl.drp.dao;

import com.lhzl.drp.model.RoleInfo;

import java.util.List;

public interface RoleInfoMapper {
    int deleteByPrimaryKey(Long id);

    int insert(RoleInfo record);

    int insertSelective(RoleInfo record);

    RoleInfo selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(RoleInfo record);

    int updateByPrimaryKey(RoleInfo record);

    List<RoleInfo> selectByUid(Long userid);

    int existRoleName(long userid, String roleName, long rid);
}