package com.lhzl.drp.service;

import com.lhzl.drp.model.OperatorInfo;

import java.util.List;
import java.util.Map;

public interface SupplierService {

    OperatorInfo queryOperById(long id);

    List<OperatorInfo> queryOper(Map<String, Object> map);

    void insertOper(OperatorInfo oper);

    void updateOper(OperatorInfo oper);

    void deleteOper(long id);
}
