package com.lhzl.drp.service;

import com.lhzl.drp.dao.OperatorinfoMapper;
import com.lhzl.drp.dao.UserinfoMapper;
import com.lhzl.drp.model.Operatorinfo;
import com.lhzl.drp.model.Userinfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service("supplierService")
public class SupplierServiceImpl implements SupplierService {

    @Autowired
    public OperatorinfoMapper operinfoMapper;

    @Override
    public Operatorinfo queryOperById(long id) {
        return operinfoMapper.selectByPrimaryKey(id);
    }

    @Override
    public List<Operatorinfo> queryOper(Map<String, Object> map) {
        return operinfoMapper.queryOper(map);
    }

    @Override
    public void insertOper(Operatorinfo oper) {
        operinfoMapper.insert(oper);
    }

    @Override
    public void updateOper(Operatorinfo oper) {
        operinfoMapper.updateByPrimaryKey(oper);
    }

    @Override
    public void deleteOper(long ids) {
        operinfoMapper.deleteByPrimaryKey(ids);
    }

}
