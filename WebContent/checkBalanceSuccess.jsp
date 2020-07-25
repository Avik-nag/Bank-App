<link rel = "stylesheet" type="text/css" href="style.css">
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
<title>Success Page</title>
</head>
<body><center>
<h1>Dear <%= session.getAttribute("name") %></h1><br/>
<h2>Your balance is <%= session.getAttribute("balance") %></h2>
<form class="box" action="home.jsp" method="post">
	
	<input type="submit" value="Home">
</center>
</body>
</html>