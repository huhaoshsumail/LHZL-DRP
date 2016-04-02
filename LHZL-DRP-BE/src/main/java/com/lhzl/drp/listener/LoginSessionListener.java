package com.lhzl.drp.listener;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionAttributeListener;
import javax.servlet.http.HttpSessionBindingEvent;

import com.lhzl.drp.model.Operatorinfo;
import com.lhzl.drp.util.Contains;
import com.lhzl.drp.util.Tools;

/**
 * session监听器 用来监听用户是否登录
 *
 *
 */
public class LoginSessionListener implements HttpSessionAttributeListener  {
    Map<String,HttpSession> map = new HashMap<String,HttpSession>();
  //session属性添加的时候被调用
    public void attributeAdded(HttpSessionBindingEvent event) {
        String name = event.getName();
        
        if(name.equals(Contains.Login.operatorinfo)){
            Operatorinfo oi = (Operatorinfo)event.getValue();
            if(map.get(oi.getId())!=null){
                HttpSession session = map.get(oi.getId());
               
                String path = session.getServletContext().getContextPath();
                String str = Tools.getStrs(new Date());
                String ipinfo = "";
                String sessionId=session.getId();
    			try {
    				ipinfo = InetAddress.getLocalHost().getHostAddress().toString();
    			} catch (UnknownHostException e) {
    				e.printStackTrace();
    			}
    			//session.removeAttribute(Contains.Login.operatorinfo);
            }
            
            //将session以用户名为索引放入session
            map.put(oi.getId().toString(), event.getSession());
        }
    }
    	
  //session属性删除的时候调用
    public void attributeRemoved(HttpSessionBindingEvent event) {
        String name = event.getName();
        if(name.equals(Contains.Login.operatorinfo)){
            Operatorinfo ui = (Operatorinfo)event.getValue();
            HttpSession session = map.get(ui.getOpername());
            //移除的session在map中移除
            map.remove(ui.getOpername());
        }
    }
    
    //session属性修改的时候调用
    public void attributeReplaced(HttpSessionBindingEvent event) {
        String name = event.getName();
        if(name.equals(Contains.Login.operatorinfo)){
            Operatorinfo oldOperatorinfo = (Operatorinfo)event.getValue();
            //移除旧的登录信息
            map.remove(oldOperatorinfo.getOpername());
            
            //新的的登录信息
            Operatorinfo oi = (Operatorinfo)event.getSession().getAttribute(Contains.Login.operatorinfo);

            //判断是否在别的机器上登录过
            if(map.get(oi.getOpername())!=null){
                HttpSession session = map.get(oi.getOpername());
                session.removeAttribute(Contains.Login.operatorinfo);
            }
            map.put(oi.getOpername(), event.getSession());
        }
    }
}
