package com.lhzl.drp.service;

import com.lhzl.drp.dao.TriprulesMapper;
import com.lhzl.drp.dao.UserInfoMapper;
import com.lhzl.drp.model.Triprules;
import com.lhzl.drp.model.UserInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service("shuttleruleService")
public class ShuttleruleServiceImpl implements ShuttleruleService {

    @Autowired
    public TriprulesMapper triprulesMapper;

    @Override
    public List<Triprules> queryShuttlerule(Map<String, Object> map) {
        return triprulesMapper.queryShuttlerule(map);
    }

}
