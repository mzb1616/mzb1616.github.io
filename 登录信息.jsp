<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>index</title>
</head>
<body>
 <%
  request.setCharacterEncoding("UTF-8");
  String name=request.getParameter("name");
  String password=request.getParameter("password");
  if(name!=null&&!name.trim().equals("")){
   Cookie cookie1=new Cookie("name",name);
   cookie1.setMaxAge(30);
   response.addCookie(cookie1);
   Cookie cookie2=new Cookie("password",password);
   cookie2.setMaxAge(30);
   response.addCookie(cookie2);
   
  }else{
   Cookie[] cookies=request.getCookies();
   if(cookies!=null&&cookies.length>0){
    for(Cookie cookie:cookies){
     String cookieName=cookie.getName();
     if("name".equals(cookieName)){
      String val=cookie.getValue();
      name=val;
     if("password".equals(cookieName)){
          String va=cookie.getValue();
          password=va;
     }
    }
   }
  }
 }
  if(name!=null&&!name.trim().equals("")){
	  out.println("登陆成功！");
	  out.println("<br>");
	  out.println("Hello:"+name);
  }else{
   response.sendRedirect("003.jsp");
  }
  
 %>
</body>
</html>