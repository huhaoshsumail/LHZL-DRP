package com.lhzl.drp.service;

import com.lhzl.drp.dao.UserinfoMapper;
import com.lhzl.drp.model.Userinfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service("userService")
public class UserServiceImpl implements UserService {

    @Autowired
    public UserinfoMapper userinfoMapper;

    @Override
    public Userinfo queryUserById(long id) {
        return userinfoMapper.selectByPrimaryKey(id);
    }

    @Override
    public List<Userinfo> queryUser(Map<String, Object> map) {
        return userinfoMapper.queryUser(map);
    }

    @Override
    public void insertUser(Userinfo user) {
        userinfoMapper.insert(user);
    }

    @Override
    public void updateUser(Userinfo user) {
        userinfoMapper.updateByPrimaryKey(user);
    }

    @Override
    public void deleteUser(long ids) {
        userinfoMapper.deleteByPrimaryKey(ids);
    }

}
