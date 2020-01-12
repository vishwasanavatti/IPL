<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE >
<%@page import="DAO.DAO"%>
<%@page import="java.util.ArrayList"%>

<%@page import="java.sql.*"%>
<%@page import="Bean.FixtureBean"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Previous Result</title>
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
</head>
<body>
<div align="center">
<h2>Fixtures</h2>
</div>      
 <a href="Home.jsp" ><button type="button">Home</button></a><br><br>
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
<% ArrayList<FixtureBean> e= (ArrayList<FixtureBean>)request.getAttribute("result");
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
</table>
</div><br>
       </form>
<a href="Result.jsp"><button type="button">Back</button></a>&emsp;
<a href="Home.jsp" ><button type="button">Home</button></a>
</body>
</html>