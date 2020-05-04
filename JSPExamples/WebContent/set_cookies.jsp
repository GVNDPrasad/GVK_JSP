<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

String userId = request.getParameter("userId");
String email = request.getParameter("email");
Cookie userIdCookie=new Cookie("userId",userId); 
userIdCookie.setMaxAge(24 * 60 * 60);
Cookie emailCookie=new Cookie("email",email); 
emailCookie.setMaxAge(24 * 60 * 60);
response.addCookie(userIdCookie);
response.addCookie(emailCookie);

%>

<%= userId+" added successfully." %>

</body>
<a href="./">Home</a>
</html>