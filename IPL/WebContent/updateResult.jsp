<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="DAO.DAO"%>
<%@page import="java.util.ArrayList"%>

<%@page import="java.sql.*"%>
<%@page import="Bean.FixtureBean"%>
<%@page import="Bean.ResultBean"%>

<html>
<head>
<style>
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
body {
    background-color: rgb(201, 76, 76);
}

.button2 {background-color: #008CBA;} /* Blue */
.button3 {background-color: #f44336;} /* Red */ 
.button4 {background-color: #e7e7e7; color: black;} /* Gray */ 
.button5 {background-color: #555555;} /* Black */

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
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Result</title>
</head>
<body>
<form action="UpdateServlet" method="post">
<div align="left">
<table id="customers">
<tr>
<th>Match No</th>
<th>Match Date</th>
<th>Fixture</th>
<th>Venue</th>
<th>Ratio</th>
<th>Played For</th>
<th>Amount</th> 
</tr>

<% ArrayList<FixtureBean> e=(ArrayList<FixtureBean>)request.getAttribute("up");
	for(FixtureBean c:e)
	{
%><tr>
<td><%=c.getMatch_no()%></td>
<td><%=c.getMatch_date()%></td>
<td><%=c.getFixture() %></td>
<td><%=c.getVenue() %></td>
<td><%=c.getRatio() %></td>
<td><%=c.getBet_team() %></td>
<td><%=c.getBet_amt() %></td>
</tr>
<%
}
%>
</table><br><br>
</div></form>
<form action="UpdateResultServlet" method="post">
		<input type="hidden" name="matchNo" value="<%=request.getParameter("matchNo")%>"/></input>
		<input type="hidden" name="venue" value="<%=request.getParameter("venue").toString()%>"/></input>
		<br><br>
		<b>Result &emsp;&nbsp;&nbsp;</b>
		 <input type="radio" name="result" value="win">Won&emsp;
  		 <input type="radio" name="result" value="loss">Lost<br><br>
		 <button class="button button4 "type="submit" name="action7" value="update">Update</button>
</form>

</body>
</html>