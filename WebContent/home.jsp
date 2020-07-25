<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<link rel = "stylesheet" type="text/css" href="style.css">
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home page</title>
</head>
<body>
<form class="box" method="post">
<center>
	<h1>Welcome To Swiss Bank </h1><br/>
	 <h2><%= session.getAttribute("name") %></h2>
		<h3><a href="CheckBalance">Check Balance</a></h3>
		<h3><a href="changePwd.jsp">Change Password</a></h3>
		<h3><a href="transfer.jsp">Transfer Amount</a></h3>
		<h3><a href="Loan.jsp">Apply Loan</a></h3>
		<h3><a href="GetStatement">Get Statement</a></h3>
		<h3><a href="Logout">Logout</a></h3>
</form>
</center>
</body></html>




