<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<%@page import="DAO.DAO"%>
<%@page import="java.util.ArrayList"%>

<%@page import="java.sql.*"%>
<%@page import="Bean.*"%>
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

#customers tr: {background-color: #ddd;}

#customers th {
    padding-top: 12px;
    padding-bottom: 12px;
    text-align: left;
    background-color: #4CAF50;
    color: white;
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
<div align ="left"><h2>Result updated Successfully!</h2></div>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Bet Update</title>
</head>
<body>
<!-- <a href="Home.jsp"><button type="button">Home</button></a><br><br> -->
<!-- <table id="customers"> -->
<!-- <tr> -->
<!-- <th>Match Number</th> -->
<!-- 		<th>Player</th> -->
<!-- 		<th>Opponent</th> -->
<!-- 		<th>Match Date</th> -->
<!-- 		<th>Fixture</th> -->
<!-- 		<th>Venue</th> -->
<!-- 		<th>Ratio</th> -->
<!-- 		<th>Team Chosen</th> -->
<!-- 		<th>Bet Amount</th> -->
<!-- 		<th>Result</th> -->
<!-- 		<th>Match Amount</th> -->
<!-- </tr> -->
<%-- <% DAO dao=new DAO(); --%>
<!-- // ArrayList<MatchResultBean> e=dao.viewResult(); -->
<!-- // 	for(MatchResultBean c:e) -->
<!-- // 	{ -->
<%-- %><tr> --%>
<%-- 	<td><%=c.getOwner1() %></td> --%>
<%-- 	<td><%=c.getOpponent() %></td> --%>
<%-- 	<td><%=c.getMatch_no() %></td> --%>
<%--     <td><%=c.getMatch_date() %></td> --%>
<%--     <td><%=c.getFixture() %></td> --%>
<%--     <td><%=c.getVenue()%></td> --%>
<%--     <td><%=c.getRatio() %></td> --%>
<%--     <td><%=c.getBet_team() %></td> --%>
<%--     <td><%=c.getBet_amt()%></td> --%>
<%--     <td><%=c.getRes() %></td> --%>
<%--     <td><%=c.getMatch_amt() %> --%>
<!-- </tr> -->
<%-- <% --%>
<!-- // } -->
<%-- %> --%>
<!-- </table><br><br> -->
<!-- <a href="Home.jsp"><button type="button">Home</button></a>&emsp; -->

<a href="getUpdateResult.jsp"><button class="button button4" type="button">Update More</button></a>
<a href="viewOnSelect.jsp"><button class="button button4" type="button">View Result</button></a>
</body>
</html>