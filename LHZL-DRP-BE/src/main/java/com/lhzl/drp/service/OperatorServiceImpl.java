package com.lhzl.drp.service;

import com.lhzl.drp.dao.OperatorinfoMapper;
import com.lhzl.drp.dao.UserinfoMapper;
import com.lhzl.drp.model.Operatorinfo;
import com.lhzl.drp.model.Userinfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service("operatorinfoService")
public class OperatorServiceImpl implements OperatorinfoService {

    @Autowired
    public OperatorinfoMapper operatorinfoMapper;


    @Override
    public int login(Operatorinfo oi) {
        return operatorinfoMapper.login(oi);
    }

}
