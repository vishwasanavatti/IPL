<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE >
<%@page import="DAO.DAO"%>
<%@page import="java.util.ArrayList"%>

<%@page import="java.sql.*"%>
<%@page import="Bean.*"%>
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
<title>Net Amount</title>
</head>
<h2>Net Amount</h2><br>
<body>
<input type="hidden" name="owner" value="<%=request.getParameter("owner")%>"/></input>

<% DAO dao=new DAO();%>
<% String own=request.getParameter("owner");
	int netAmt=dao.getTotalAmount(own);
   int win=dao.getTotalwin(own);
   int loss=dao.getTotalloss(own);
   int play=dao.getTotalmatches(own);
%>
<table id="customers">
<tr>
	<th>Played</th>
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
&emsp;<a href="getStats.jsp" ><button class="button button4" type="button" >Back</button></a>&emsp;
<a href="Home.jsp"><button class="button button4" type="button">Home</button></a>
</body>
</html>