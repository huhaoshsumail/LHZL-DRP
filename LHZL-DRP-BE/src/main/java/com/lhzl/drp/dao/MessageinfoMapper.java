package com.lhzl.drp.dao;

import com.lhzl.drp.model.Messageinfo;

public interface MessageinfoMapper {
    int deleteByPrimaryKey(Long msgid);

    int insert(Messageinfo record);

    int insertSelective(Messageinfo record);

    Messageinfo selectByPrimaryKey(Long msgid);

    int updateByPrimaryKeySelective(Messageinfo record);

    int updateByPrimaryKeyWithBLOBs(Messageinfo record);

    int updateByPrimaryKey(Messageinfo record);
}