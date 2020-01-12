<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<%@page import="DAO.DAO"%>
<%@page import="java.util.ArrayList"%>

<%@page import="java.sql.*"%>
<%@page import="Bean.FixtureBean"%>
<%@page import="Bean.ResultBean"%>

<html>
<head>
<style>
body {
    background-color: rgb(201, 76, 76);
}

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
</style>
<div align ="left"><h2>Result updated Successfully!</h2></div>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>New Bet</title>
</head>
<body>
<a href="Home.jsp"><button type="button">Home</button></a><br><br>
<table id="customers">
<tr>
<th>Match Number</th>
		<th>Match Date</th>
		<th>Fixture</th>
		<th>Venue</th>
		<th>Ratio</th>
		<th>Team Chosen</th>
		<th>Bet Amount</th>
		<th>Result</th>
		<th>Match Amount</th>
</tr>
<% DAO dao=new DAO();
ArrayList<FixtureBean> e=dao.viewResult();
	for(FixtureBean c:e)
	{
%><tr>
	<td><%=c.getMatch_no() %></td>
    <td><%=c.getMatch_date() %></td>
    <td><%=c.getFixture() %></td>
    <td><%=c.getVenue()%></td>
    <td><%=c.getRatio() %></td>
    <td><%=c.getBet_team() %></td>
    <td><%=c.getBet_amt()%></td>
    <td><%=c.getResult() %></td>
    <td><%=c.getTot_amt() %></td>
</tr>
<%
}
%>
</table><br><br>
<a href="Home.jsp"><button type="button">Home</button></a>
</body>
</html>