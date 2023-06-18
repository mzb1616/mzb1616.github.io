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
Cookie denglu=new Cookie("denglu","失败");
String name=request.getParameter("name");
String password=request.getParameter("password");
if(name.equals("张三")&&password.equals("123")){
	denglu.setValue("成功");
	session.setAttribute("denglu","成功");
	out.print("已经成功登录<br>");
	out.print("<a href='001.jsp'>查看Cookie</a>");
	out.print("<a href='002.jsp'>查看Session</a>");
}else out.print("登陆失败,请重新输入");
response.addCookie(denglu);

%>


</body>
</html>