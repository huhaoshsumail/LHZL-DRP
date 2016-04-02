package com.lhzl.drp.dao;

import com.lhzl.drp.model.Themeinfo;

public interface ThemeinfoMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Themeinfo record);

    int insertSelective(Themeinfo record);

    Themeinfo selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(Themeinfo record);

    int updateByPrimaryKey(Themeinfo record);
}