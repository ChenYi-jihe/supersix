<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP '7.7.1.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  			 不允许IP地址192.开头的访问 <br>
  			 <%String ip=request.getRemoteAddr();
  			 	out.print(ip);
 %>
 <br>
	<% 
  		
  			 String iphead=ip.substring(0, ip.indexOf("."));	
  			 out.print(iphead);
  			 int intip= Integer.parseInt(iphead);
  			   %>
  			   <%
  			   		 if(intip==192){    %>
  			   		 <script type="text/javascript">
  			   		 alert("访问禁止")</script>
  			   		 
  			   <%} %>		 
  			
  	
  			
  			  
  			 
  </body>
</html>
