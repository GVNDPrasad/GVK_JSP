<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<H3 ALIGN="CENTER">
      Random number from 0 to 10 : 
      <FONT COLOR="RED">
        <%= (int) (Math.random() * 10) %>
      </FONT>
    </H3>
    <H4 ALIGN="CENTER">Refresh the page to see if the number changes...</H4>
</body>
</html>