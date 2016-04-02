package com.lhzl.drp.dao;

import com.lhzl.drp.model.Rolepermissioninfo;

public interface RolepermissioninfoMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Rolepermissioninfo record);

    int insertSelective(Rolepermissioninfo record);

    Rolepermissioninfo selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(Rolepermissioninfo record);

    int updateByPrimaryKey(Rolepermissioninfo record);
}