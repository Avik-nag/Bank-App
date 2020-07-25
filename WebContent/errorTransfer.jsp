<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<link rel = "stylesheet" type="text/css" href="style.css">
<head>
<title>Transfer Page</title>
</head>
<body>
<h1><center>ERROR</h1></center>
<h2><center>Money to be transferred should be atleast RS.1</h2></center>
<form class="box" action="Transfer" method="post">
Receiver's Account Number: <input type="text" name="raccno" placeholder="Enter the account no." required="required"/><br/>
Amount To be Transferred : <input type="text" name="amt" placeholder="Enter the amount" required="required"/><br/>
<input type="submit" value="Transfer"/>
</form>
</body>
</html>