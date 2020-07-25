<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<link rel = "stylesheet" type="text/css" href="style.css">
<head>
<title>Change Password Page</title>
</head>
<body>
<form class="box" action="ChangePwd" method="post">
	New Password   : <input type="password" name="npwd" placeholder="Your New Password"/><br/>
	Confirm New Password: <input type="password" name="cnpwd" placeholder="Confirm New Password"/><br/>
	<input type="submit" value="Change"/>
</form>
</body>
</html>