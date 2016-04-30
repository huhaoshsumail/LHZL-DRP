package com.lhzl.drp.service;

import com.lhzl.drp.dao.UserInfoMapper;
import com.lhzl.drp.model.UserInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service("userService")
public class UserServiceImpl implements UserService {

    @Autowired
    public UserInfoMapper userinfoMapper;

    @Override
    public UserInfo queryUserById(long id) {
        return userinfoMapper.selectByPrimaryKey(id);
    }

    @Override
    public List<UserInfo> queryUser(Map<String, Object> map) {
        return userinfoMapper.queryUser(map);
    }

    @Override
    public void insertUser(UserInfo user) {
        userinfoMapper.insert(user);
    }

    @Override
    public void updateUser(UserInfo user) {
        userinfoMapper.updateByPrimaryKey(user);
    }

    @Override
    public void deleteUser(long ids) {
        userinfoMapper.deleteByPrimaryKey(ids);
    }

}
