<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
request.setCharacterEncoding("utf-8"); //防止中文乱码		
//首先判断用户是否选择保存登陆状态		
String[] isUseCookies = request.getParameterValues("isUseCookies"); 
//选择保存:不为空且大于0		
if(isUseCookies != null && isUseCookies.length>0){
			String username = request.getParameter("username");  			
			//使用URLEncoder解决 无法在Cookies对象中无法保存中文字符的问题			
			String password = request.getParameter("password");			
			if(username==null||password==null){
				response.sendRedirect("7.7.5.1.jsp");
			}else{
			//使用Cookies对象保存字符串			
			Cookie usernemeCookie = new Cookie("username",username);			
			Cookie passwordCookie = new Cookie("password",password);}}

%>



<h1>登陆成功</h1>
<hr>
<a href="7.7.5.3.jsp">查看用户信息</a>


</body>

</html>