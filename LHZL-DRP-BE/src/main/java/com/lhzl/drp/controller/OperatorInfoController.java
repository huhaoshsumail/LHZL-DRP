package com.lhzl.drp.controller;

import com.lhzl.drp.model.Operatorinfo;
import com.lhzl.drp.model.Response;
import com.lhzl.drp.service.OperatorinfoService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import redis.clients.jedis.ShardedJedis;
import redis.clients.jedis.ShardedJedisPool;

import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

//操作员类
@Controller
@RequestMapping("/operatorInfoController")
public class OperatorInfoController {

    private static final Logger logger = LoggerFactory.getLogger(OperatorInfoController.class);

    @Autowired
    private OperatorinfoService opeatorinfoService;
    @Autowired
    private ShardedJedisPool shardedJedisPool;

    @RequestMapping("/login")
    @ResponseBody
    public Response login(@RequestBody Operatorinfo oi) {
        int count = opeatorinfoService.login(oi);
        if (count > 0) {
            ShardedJedis shardedJedis = shardedJedisPool.getResource();
            String skey = "session:" + oi.getOpacct();
            String token = UUID.randomUUID().toString();
            if (shardedJedis.exists(skey)) {
                String oldtoken = shardedJedis.get(skey);
                shardedJedis.del(skey);
                shardedJedis.del("token:" + oldtoken);
            }
            if (shardedJedis.setnx(skey, token) == 1) {
                shardedJedis.expire(skey, 3600 * 24);
                shardedJedis.hset("token:" + token, "opacct", oi.getOpacct());
                shardedJedis.expire("token:" + token, 3600 * 24);
            } else {
                token = shardedJedis.get(skey);
            }
            Map<String, Object> data = new HashMap<>();
            data.put("token", token);
            return new Response().success(data);
        } else {
            return new Response().failure("登录失败");
        }
    }
}
