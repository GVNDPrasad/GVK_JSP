<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%!
	String id = "user";
	String password = "password";
%>
<% 
	String userId = request.getParameter("userId");
	String userPassword = request.getParameter("password");
%>
<% if(id.equals(userId) && password.equals(userPassword)) { %>
<%@include file="welcome.jsp" %>
<% } else { %>
<jsp:forward page="invalid-login.jsp"/>
<% } %>
</body>
</html>