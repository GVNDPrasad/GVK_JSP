<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <!-- import section -->
<%@ page import="examples.Data, java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<!-- declaration section -->
<%! 
	String title = "Welcome to JSP import attribute";
	int a = 1;
	int b = 2;
	int c;
%>
<h1 align="center"><%= title %></h1>
<div style="background-color: #a9e8dd;padding: 20px;">
<%= Data.getWelcomeString() %> <!-- evaluation section -->
</div>
<br/>
<!-- code section -->
<%
	Data d = new Data();
	c = a + b;
%>
<div style="background-color: #a9e8dd;padding: 20px;">
	<%= d.getDateFromJava()+": this date comes from normal method of java class." %>
</div>
<br/>
<div style="background-color: #a9e8dd;padding: 20px;">
<% 
	out.println(new Date()+": this data comes from jsp page by using 'java.util.Date' which is imported in jsp page."); 
%>
</div>
<br/>
<div style="background-color: #a9e8dd;padding: 20px;">
	<%= "Sum of "+a+" and "+b+" is "+c %> 
</div>
</body>
</html>