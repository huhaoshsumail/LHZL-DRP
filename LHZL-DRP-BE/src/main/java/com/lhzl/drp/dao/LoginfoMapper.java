package com.lhzl.drp.dao;

import com.lhzl.drp.model.Loginfo;

public interface LoginfoMapper {
    int deleteByPrimaryKey(Long logid);

    int insert(Loginfo record);

    int insertSelective(Loginfo record);

    Loginfo selectByPrimaryKey(Long logid);

    int updateByPrimaryKeySelective(Loginfo record);

    int updateByPrimaryKeyWithBLOBs(Loginfo record);

    int updateByPrimaryKey(Loginfo record);
}