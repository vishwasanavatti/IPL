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
a {
text-decoration: none;
color: #000; /* or whatever colour your text is */
}
#customers {
    font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
    border-collapse: collapse;
    width: 100%;
}

#customers td, #customers th {
    border: 1px solid #ddd;
    text-align: center;
    padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr: {background-color: #ddd;}

#customers th {
    padding-top: 12px;
    padding-bottom: 12px;
    text-align: center;
    background-color: #4CAF50;
    color: white;
}
body {
    background-color: rgb(201, 76, 76);
}
.button {
    background-color: #4CAF50;
    border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
}

.button2 {background-color: #008CBA;} /* Blue */
.button3 {background-color: #f44336;} /* Red */ 
.button4 {background-color: #e7e7e7; color: black;} /* Gray */ 
.button5 {background-color: #555555;} /* Black */

</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<title>Fixture</title>
<body>
<div align="center">
<h2>Fixtures</h2>
</div>
<a href ="Home.jsp"><button class="button button4" type="button">Back</button></a><br><br>
 <form action="FixtureServlet" method="post">
             <div align="left">
<table id="customers" >
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
    <td><a href="New.jsp"><%=c.getMatch_no() %></a></td>
    <td><a href="New.jsp"><%=c.getMatch_date() %></a></td>
    <td><a href="New.jsp"><%=c.getFixture() %></a></td>
    <td><a href="New.jsp"><%=c.getVenue() %></a></td>
</tr>
<%
}
%>
</table>
</div><br>
</form>
<a href="Home.jsp" ><button class="button button4" type="button">Back</button></a>
</body>
</html>