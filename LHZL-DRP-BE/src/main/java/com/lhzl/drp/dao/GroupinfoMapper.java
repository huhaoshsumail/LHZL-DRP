package com.lhzl.drp.dao;

import com.lhzl.drp.model.Groupinfo;

public interface GroupinfoMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Groupinfo record);

    int insertSelective(Groupinfo record);

    Groupinfo selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(Groupinfo record);

    int updateByPrimaryKey(Groupinfo record);
}