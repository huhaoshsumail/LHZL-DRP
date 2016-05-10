package com.lhzl.drp.service;

import com.lhzl.drp.model.BookCode;
import com.lhzl.drp.model.OperatorInfo;
import com.lhzl.drp.model.Triprules;
import com.lhzl.drp.model.UserInfo;

import java.util.List;
import java.util.Map;

public interface ShuttleruleService {


    List<Triprules> queryShuttlerule(Map<String, Object> map);

    void insertShuttlerule(Triprules triprules);

    public void updateShuttlerule(Triprules triprules);

    public void deleteShuttlerule(long id);

}
