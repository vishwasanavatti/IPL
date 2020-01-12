<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE >
<%@page import="DAO.DAO"%>
<%@page import="java.util.ArrayList"%>

<%@page import="java.sql.*"%>
<%@page import="Bean.FixtureBean"%>
<%@page import="Bean.ResultBean"%>
<html>
<head>
<style>
#customers {
    font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
    border-collapse: collapse;
    width: 100%;
}

#customers td, #customers th {
    border: 1px solid #ddd;
    padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
    padding-top: 12px;
    padding-bottom: 12px;
    text-align: left;
    background-color: #4CAF50;
    color: white;
}
body {
    background-color: rgb(201, 76, 76);
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Net Amount</title>
</head>
<h2>Net Amount</h2><br>
<body>
<% DAO dao=new DAO();%>
<% int netAmt=dao.getTotalAmount();
   int win=dao.getTotalwin();
   int loss=dao.getTotalloss();
   int play=dao.getTotalmatches();
%>
<table id="customers">
<tr>
	<th>Matches Played</th>
	<th>Total Wins</th>
	<th>Total Loss</th>
	<th>Net Amount</th>
</tr>

<tr>
    <td><%=play%></td>
    <td><%=win%></td>
    <td><%=loss%></td>
    <td><%=netAmt %></td>
</tr>
</table><br><br>
&emsp;<a href="Result.jsp" ><button type="button" style="width:80px;height:25px;">Back</button></a>&emsp;
<a href="Home.jsp"><button type="button"style="width:80px;height:25px;">Home</button></a>
</body>
</html>