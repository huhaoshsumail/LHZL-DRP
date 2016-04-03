package com.lhzl.drp.cache;

import com.alibaba.fastjson.JSON;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;
import redis.clients.jedis.JedisPoolConfig;

public final class CacheKit {
    private static final Logger logger = LoggerFactory.getLogger(CacheKit.class);
    //Redis服务器IP
    private static String ADDR = "127.0.0.1";

    //Redis的端口号
    private static int PORT = 6379;

    //访问密码
    private static String AUTH = "admin";

    //可用连接实例的最大数目，默认值为8；
    //如果赋值为-1，则表示不限制；如果pool已经分配了maxActive个jedis实例，则此时pool的状态为exhausted(耗尽)。
    private static int MAX_ACTIVE = 1024;

    //控制一个pool最多有多少个状态为idle(空闲的)的jedis实例，默认值也是8。
    private static int MAX_IDLE = 200;

    //等待可用连接的最大时间，单位毫秒，默认值为-1，表示永不超时。如果超过等待时间，则直接抛出JedisConnectionException；
    private static int MAX_WAIT = 10000;

    private static int TIMEOUT = 10000;

    //在borrow一个jedis实例时，是否提前进行validate操作；如果为true，则得到的jedis实例均是可用的；
    private static boolean TEST_ON_BORROW = true;

    private static JedisPool jp = null;

    /**
     * 初始化Redis连接池
     */
    static {
        try {
           // static JedisPool jp;
            JedisPoolConfig config = new JedisPoolConfig();
            config.setMaxTotal(MAX_ACTIVE);
            config.setMaxIdle(MAX_IDLE);
            config.setMaxWaitMillis(MAX_WAIT);
            config.setTestOnBorrow(TEST_ON_BORROW);
            jp = new JedisPool(config, ADDR, PORT);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }



    public static String set(String key, String value) {
        Jedis j = null;
        try {
            j = jp.getResource();
            return j.set(key, value);
        } finally {
            if(j != null)
                j.close();
        }
    }

    public static boolean exists(String key) {
        Jedis j = null;
        try {
            j = jp.getResource();
            return j.exists(key);
        } finally {
            if(j != null)
                j.close();
        }
    }

    public static long hset(String key, String e, String value) {
        Jedis j = null;
        try {
            j = jp.getResource();
            return j.hset(key, e, value);
        } finally {
            if(j != null)
                j.close();
        }
    }

    public static long expire(String key, int time) {
        Jedis j = null;
        try {
            j = jp.getResource();
            return j.expire(key, time);
        } finally {
            if(j != null)
                j.close();
        }
    }

    public static long del(String key) {
        Jedis j = null;
        try {
            j = jp.getResource();
            return j.del(key);
        } finally {
            if(j != null)
                j.close();
        }
    }

    public static String hget(String key, String e) {
        Jedis j = null;
        try {
            j = jp.getResource();
            return j.hget(key, e);
        } finally {
            if(j != null)
                j.close();
        }
    }

    public static String setJSON(String key, Object value) {
        Jedis j = null;
        try {
            j = jp.getResource();
            return j.set(key, JSON.toJSONString(value));
        } finally {
            if(j != null)
                j.close();
        }
    }

    public static String get(String key) {
        Jedis j = null;
        try {
            j = jp.getResource();
            return j.get(key);
        } finally {
            if(j != null)
                j.close();
        }
    }

    public static <T> T getJSON(String key, Class<T> clazz) {
        Jedis j = null;
        try {
            j = jp.getResource();
            String o = j.get(key);
            return o == null ? null : JSON.parseObject(o, clazz);
        } finally {
            if(j != null)
                j.close();
        }
    }

    public static long setnx(String key, String value) {
        Jedis j = null;
        try {
            j = jp.getResource();
            return j.setnx(key, value);
        } finally {
            if(j != null)
                j.close();
        }
    }

    public static long setnxJSON(String key, Object value) {
        Jedis j = null;
        try {
            j = jp.getResource();
            return j.setnx(key, JSON.toJSONString(value));
        } finally {
            if(j != null)
                j.close();
        }
    }

}
