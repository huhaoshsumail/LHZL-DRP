package com.lhzl.drp.dao;

import com.lhzl.drp.model.Operatorinfo;
import com.lhzl.drp.model.Userinfo;

import java.util.List;
import java.util.Map;

public interface OperatorinfoMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Operatorinfo record);

    int insertSelective(Operatorinfo record);

    Operatorinfo selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(Operatorinfo record);

    int updateByPrimaryKey(Operatorinfo record);

    /**
     * 查询操作员
     *
     * @param map
     * @return
     */
    List<Operatorinfo> queryOper(Map<String, Object> map);


    Operatorinfo login(Operatorinfo oi);
}