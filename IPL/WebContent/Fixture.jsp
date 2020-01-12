<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<%@page import="DAO.DAO"%>
<%@page import="java.util.ArrayList"%>

<%@page import="java.sql.*"%>
<%@page import="Bean.FixtureBean"%>

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
</head>
<title>Fixture</title>
<body>
<div align="center">
<h2>Fixtures</h2>
</div>
<a href ="Home.jsp"><button type="button">Back</button></a><br><br>
 <form action="FixtureServlet" method="post">
             <div align="left">
<table id="customers">
<tr>
	<th>Match Number</th>
	<th>Match Date</th>
	<th>Fixture</th>
	<th>Venue</th>
</tr>
<% ArrayList<FixtureBean> e= (ArrayList<FixtureBean>)request.getAttribute("data1");
	for(FixtureBean c:e)
	{
%><tr>
    <td><%=c.getMatch_no() %></td>
    <td><%=c.getMatch_date() %></td>
    <td><%=c.getFixture() %></td>
    <td><%=c.getVenue() %></td>
</tr>
<%
}
%>
</table>

</div><br>
</form>
<a href="Home.jsp" ><button type="button">Back</button></a>
</body>
</html>