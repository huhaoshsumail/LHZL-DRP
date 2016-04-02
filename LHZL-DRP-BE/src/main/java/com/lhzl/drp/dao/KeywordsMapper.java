package com.lhzl.drp.dao;

import com.lhzl.drp.model.Keywords;

public interface KeywordsMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Keywords record);

    int insertSelective(Keywords record);

    Keywords selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(Keywords record);

    int updateByPrimaryKey(Keywords record);
}