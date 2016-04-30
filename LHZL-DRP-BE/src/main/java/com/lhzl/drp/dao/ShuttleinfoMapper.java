package com.lhzl.drp.dao;

import com.lhzl.drp.model.ShuttleInfo;

public interface ShuttleInfoMapper {
    int deleteByPrimaryKey(Long id);

    int insert(ShuttleInfo record);

    int insertSelective(ShuttleInfo record);

    ShuttleInfo selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(ShuttleInfo record);

    int updateByPrimaryKey(ShuttleInfo record);
}