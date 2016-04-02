package com.lhzl.drp.util;

import java.io.File;
import java.math.RoundingMode;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.security.MessageDigest;
import java.text.DecimalFormat;
import java.text.NumberFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;



public class Tools {
	private static SimpleDateFormat sdfs = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	private static SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	
	public static String accuracy(double num, double total, int scale){  
        DecimalFormat df = (DecimalFormat)NumberFormat.getInstance();  
        //可以设置精确几位小数  
        df.setMaximumFractionDigits(scale);  
        //模式 例如四舍五入  
        df.setRoundingMode(RoundingMode.HALF_UP);  
        double accuracy_num = num / total * 100;  
        return df.format(accuracy_num)+"%";  
	}  
	 public static double doubles(double a, int n){
         int s = 1;
         for (int i = 0; i < n; i++) {
             s = s * 10;
         }
         a = a * s;
         a = (double)((int)a) / s;
         return a;
     }
	 /**
	  * 返回xml文件制定节点内容的集合
	  * @param path xml文件路径
	  * @param node 节点名称
	  * @return
	  */
	 public static List<String> getStrList(String path,String node){
			List<String> lis = new ArrayList<String>();
			//得到DOM 的解析工厂,,可以创建一个工具类
					DocumentBuilderFactory dbf =DocumentBuilderFactory.newInstance();
					try {
						//工厂创建解析器
						DocumentBuilder db = dbf.newDocumentBuilder();
						//解析xml 得到DOM树
						Document doc = db.parse(new File(path));
						
						//得到所有的path节点的集合
						NodeList usblis = doc.getElementsByTagName(node);
						
						for(int i = 0;i<usblis.getLength();i++){
							lis.add(((Element)usblis.item(i)).getTextContent());
						}
					} catch (Exception e) {
						e.printStackTrace();
					}
			return lis;
		}

		
		/**
		 * yyyy-MM-dd HH:mm:ss
		 * @param date
		 * @return
		 */
		public static String getStrs(Date date){
			String str = "";
			try {
				str = sdfs.format(date);
			} catch (Exception e) {
				e.printStackTrace();
			}
			return str;
		}
		/**
		 * yyyy-MM-dd
		 * @param date
		 * @return
		 */
		public static String getStr(Date date){
			String str = "";
			try {
				str = sdf.format(date);
			} catch (Exception e) {
				e.printStackTrace();
			}
			return str;
		}
		/**
		 * yyyy-MM-dd HH:mm:ss
		 * @param date
		 * @return
		 */
		public static Date getdates(String str){
			Date d = null;
			try {
				d = sdfs.parse(str);
			} catch (Exception e) {
				e.printStackTrace();
			}
			return d;
		}
		/**
		 * yyyy-MM-dd
		 * @param date
		 * @return
		 */
		public static Date getdate(String str){
			Date d = null;
			try {
				d = sdf.parse(str);
			} catch (Exception e) {
				e.printStackTrace();
			}
			return d;
		}
		/**
		 * 用户自定义
		 * yyyy-MM-dd HH:mm:ss
		 */
		public static String getDateStr(Date d,String str){
			String strs = "";
			try {
				strs = new SimpleDateFormat(str).format(d);
			} catch (Exception e) {
				e.printStackTrace();
			}
			return strs;
		}
		/*
		 * 返回用日志
		 
		public static LogInfo getLoginUi(HttpServletRequest request,String conent){
			UserInfo ui= (UserInfo) request.getSession().getAttribute(Contains.Login.userinfo);
			InetAddress inet = null;
			try {
				inet = InetAddress.getLocalHost();
			} catch (UnknownHostException e) {
				e.printStackTrace();
			}
			return new LogInfo(ui,conent,inet.getHostAddress().toString());
		}*/
//		/*
//		 * 返回用日志
//		 */
//		public static LogInfo getLoginUi(HttpServletRequest request,String conent){
//			UserInfo ui= (UserInfo) request.getSession().getAttribute(Contains.Login.userinfo);
//			return new LogInfo(ui,conent);
//		}
		
		/**
		 * 返回4位数字的验证码
		 */
		public static String vifName(){
			
			String str = new Date().getTime()*new Date().getTime()+"";
			
			return str.substring(str.length()-4,str.length());
		}
		
		public static String string2MD5(String inStr){  
	        MessageDigest md5 = null;  
	        try{  
	            md5 = MessageDigest.getInstance("MD5");  
	        }catch (Exception e){
	            System.out.println(e.toString());  
	            e.printStackTrace();  
	            return "";
	        }  
	        char[] charArray = inStr.toCharArray();  
	        byte[] byteArray = new byte[charArray.length];  
	  
	        for (int i = 0; i < charArray.length; i++)  
	            byteArray[i] = (byte) charArray[i];  
	        byte[] md5Bytes = md5.digest(byteArray);  
	        StringBuffer hexValue = new StringBuffer();  
	        for (int i = 0; i < md5Bytes.length; i++){  
	            int val = ((int) md5Bytes[i]) & 0xff;  
	            if (val < 16)  
	                hexValue.append("0");  
	            hexValue.append(Integer.toHexString(val));  
	        }  
	        return hexValue.toString();  
	    }    
}
