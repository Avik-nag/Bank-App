<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<link rel = "stylesheet" type="text/css" href="style.css">
<head>
<title>Success Page</title>
</head>
<body>
<h1>Rs <%= session.getAttribute("amt") %> has been successfully transferred to Account <%= session.getAttribute("raccno") %></h1>
<form class="box" action="home.jsp" method="post">
	<input type="submit" value="Home">
	 Back to Home
</form>
</body>
</html>