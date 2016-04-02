package com.lhzl.drp.service;

import com.lhzl.drp.model.Operatorinfo;
import com.lhzl.drp.model.Userinfo;

import java.util.List;
import java.util.Map;

public interface SupplierService {

    Operatorinfo queryOperById(long id);

    List<Operatorinfo> queryOper(Map<String, Object> map);

    void insertOper(Operatorinfo oper);

    void updateOper(Operatorinfo oper);

    void deleteOper(long id);
}
