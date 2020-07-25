
<link rel = "stylesheet" type="text/css" href="style.css">
<%@ page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
<title>Success Page</title>
</head>
<body>
<form class="box" action="home.jsp" method="post">
<h1>Dear Customer,</h1><br/>
<h2>Your Transactions are:</h2><br/>

<h2>Money Credited:</h2><br/>
<ul>
<%
ArrayList<Integer> arrayList = (ArrayList<Integer>)session.getAttribute("arrayList");
for(Integer x : arrayList)
{
	if(x>0)
		out.println("<li>"+"+"+x+"</li>");
}
%>
</ul>
<br/>
<h2>Money Debited:</h2>
<ul>
<%
for(Integer x : arrayList)
{
	if(x<0)
		out.println("<li>"+x+"</li>");
}
%>
</ul>
<input type="submit" value="Home">
	<input type="submit" value="Save as Text">
</body>
</html>




