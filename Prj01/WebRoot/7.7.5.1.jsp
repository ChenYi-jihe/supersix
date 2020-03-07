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


<h1>用户登陆</h1>
	<hr>	
	<form name="loginForm" action="7.7.5.2.jsp" method="post">
		<table>
			<tr>
				<td>UserName:</td>
				<td><input type="text"  name="username" value=""/></td>			
				</tr><tr>	
				<td>Password:</td>				
				<td><input type="password" name="password" value=""/></td>			
				</tr><tr>				
				<td colspan="2"><input type="checkbox" name="isUseCookies" checked="checked"/>记住我的登陆状态</td>			
				</tr><tr>				
				<td colspan="2" align="center"><input type="submit" value="登陆"/><input type="reset" value="取消" /></td>			
			</tr>
		</table>	
	</form>

</body>
</html>