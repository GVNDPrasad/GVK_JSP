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

Cookie ck[]=request.getCookies();
out.println("Cookies list <br/>");
for(int i = 0; i < ck.length; ++i) {
	out.println("Cookie name: "+ck[i].getName()+", Cookie value: "+ck[i].getValue()+"<br/>");
}

%>
<a href="./">Home</a>
</body>
</html>