package com.lhzl.drp.dao;

import com.lhzl.drp.model.LineAmtsInfo;

public interface LineAmtsInfoMapper {
    int deleteByPrimaryKey(Long id);

    int insert(LineAmtsInfo record);

    int insertSelective(LineAmtsInfo record);

    LineAmtsInfo selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(LineAmtsInfo record);

    int updateByPrimaryKey(LineAmtsInfo record);
}