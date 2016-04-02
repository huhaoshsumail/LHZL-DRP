package com.lhzl.drp.dao;

import com.lhzl.drp.model.Rolepmsninfo;

public interface RolepmsninfoMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Rolepmsninfo record);

    int insertSelective(Rolepmsninfo record);

    Rolepmsninfo selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(Rolepmsninfo record);

    int updateByPrimaryKey(Rolepmsninfo record);
}