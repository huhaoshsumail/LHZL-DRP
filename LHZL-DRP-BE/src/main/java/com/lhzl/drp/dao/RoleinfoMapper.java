package com.lhzl.drp.dao;

import com.lhzl.drp.model.Roleinfo;

import java.util.List;

public interface RoleinfoMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Roleinfo record);

    int insertSelective(Roleinfo record);

    Roleinfo selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(Roleinfo record);

    int updateByPrimaryKey(Roleinfo record);

    List<Roleinfo> selectByUid(Long userid);
}