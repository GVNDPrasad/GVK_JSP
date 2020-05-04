<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1 align="center">jsp:useBean Example</h1>
<jsp:useBean id="obj" class="examples.Calculate" scope="page" /> 
<%
	int number1 = 10;
	int number2 = 50;
%>
<div style="background-color: #a9e8dd;padding: 20px;">
	<%= "Sum of "+number1+" & "+number2+" is "+obj.sum(number1, number2) %>
</div>
<br/>
<div style="background-color: #a9e8dd;padding: 20px;">
	<%= "Subraction "+number1+" from "+number2+" is "+obj.sub(number2, number1) %>
</div>
<br/>
<div style="background-color: #a9e8dd;padding: 20px;">
	<%= "Multiplication of "+number1+" & "+number2+" is "+obj.multiply(number1, number2) %>
</div>
<br/>
<div style="background-color: #a9e8dd;padding: 20px;">
	<%= "Division of "+number1+" by "+number2+" is "+obj.div(number1, number2) %>
</div>
<br/>
</body>
</html>