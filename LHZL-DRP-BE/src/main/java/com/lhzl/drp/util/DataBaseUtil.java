package com.lhzl.drp.util;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Date;

/**
 * Created by chenhao on 2016/4/5.
 */
public class DataBaseUtil {

    public static void setCreateInfo(Object obj, String createBy) {
        Method setCreateby = null;
        Method setCreatetime = null;
        try {
            setCreateby = obj.getClass().getMethod("setCreateby", new Class[]{String.class});
            setCreatetime = obj.getClass().getMethod("setCreatetime", new Class[]{Date.class});
            setCreateby.invoke(obj, new Object[]{createBy});
            setCreatetime.invoke(obj, new Object[]{new Date()});
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
            tUpdatetime = obj.getClass().getMethod("setUpdatetime", new Class[]{Date.class});
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
