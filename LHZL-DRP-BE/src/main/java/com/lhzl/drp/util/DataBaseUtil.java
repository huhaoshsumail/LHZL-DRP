package com.lhzl.drp.util;

import org.springframework.beans.factory.annotation.Autowired;
import redis.clients.jedis.ShardedJedisPool;

import javax.servlet.http.HttpServletRequest;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Date;

/**
 * Created by chenhao on 2016/4/5.
 */
public class DataBaseUtil {

    public static void setCreateInfo(Object obj, String createBy) {
        Method setCreatby = null;
        Method setCreattime = null;
        try {
            setCreatby = obj.getClass().getMethod("setCreatby", new Class[]{String.class});
            setCreattime = obj.getClass().getMethod("setCreattime", new Class[]{Date.class});
            setCreatby.invoke(obj, new Object[]{createBy});
            setCreattime.invoke(obj, new Object[]{new Date()});
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        } catch (NoSuchMethodException e) {
            e.printStackTrace();
        }
    }

    public static void setUpdateInfo(Object obj, String updateBy) {
        Method setUpdateby = null;
        Method tUpdatetime = null;
        try {
            setUpdateby = obj.getClass().getMethod("setUpdateby", new Class[]{String.class});
            tUpdatetime = obj.getClass().getMethod("tUpdatetime", new Class[]{Date.class});
            setUpdateby.invoke(obj, new Object[]{updateBy});
            tUpdatetime.invoke(obj, new Object[]{new Date()});
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        } catch (NoSuchMethodException e) {
            e.printStackTrace();
        }
    }
}
