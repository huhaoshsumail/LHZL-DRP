package com.lhzl.drp.dao;

import com.lhzl.drp.model.LineInfo;

import java.util.List;

public interface LineInfoMapper {
    int deleteByPrimaryKey(Long id);

    int insert(LineInfo record);

    int insertSelective(LineInfo record);

    LineInfo selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(LineInfo record);

    int updateByPrimaryKeyWithBLOBs(LineInfo record);

    int updateByPrimaryKey(LineInfo record);

    List<LineInfo> qryLines();
}