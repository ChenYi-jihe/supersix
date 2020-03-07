<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>用户信息展示从cookie获取</title>
</head>
<body>
<%    	request.setCharacterEncoding("utf-8");	        	
String username = ""; //用户名    	
String password = ""; //密码    	    	
Cookie[] cookies = request.getCookies();    	//保存有cookie对象    	
if(cookies != null && cookies.length > 0){    		
	for(Cookie c: cookies){    			
		if(c.getName().equals("username")){    				
			username = URLEncoder.encode(c.getValue(),"utf-8");}    			
		if(c.getName().equals("password")){    				
			password = URLEncoder.encode(c.getValue(),"utf-8");}
		}
	}  %>          

<h1>用户信息</h1>
<hr>
用户名:<%=username %><br>
密码：<%=password %><br>
</body>
</html>