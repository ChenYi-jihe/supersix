<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>welcome</title>
</head>
<body>
<%
String s = request.getParameter("select");
Cookie cookie = new Cookie("n",s);

cookie.setMaxAge(600);
response.addCookie(cookie);
Cookie[] cookies= request.getCookies();
	for(int i=0;i<cookies.length;i++){
		if(cookies[i].getName().equals("n")){
			s = cookies[i].getValue();
		}
	}

%>
<p style="background-color: <%=s %>">欢迎你的访问</p>
</body>
</html>