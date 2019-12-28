<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<%@page import="DAO.DAO"%>
<%@page import="java.util.ArrayList"%>

<%@page import="java.sql.*"%>
<%@page import="Bean.FixtureBean"%>
<%@page import="Bean.ResultBean"%>
<%@page import="java.util.Date"%>

<html>
<head>
<script>
function validateForm() {
    var x = document.forms["New"]["ratio"].value;
    var y = document.forms["New"]["amt"].value;
    var z = document.forms["New"]["team"].value;
    if (x == "") {
        alert("Please enter ratio");
        return false;
    }
    else if(y==""){
    	alert("Please enter Amount");
    	return false;
    }
    else if(z==""){
    	alert("Please select team");
    	return false;
    }
}
</script>
<style>
.info {
    background-color: #e7f3fe;
    border-left: 6px solid #2196F3;
}

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
<title>New Bet</title>
</head>
<body>
<form action="NewServlet" method="post">
<div align="left">
<table id="customers">
<tr>
<th>Match No</th>
<th>Match Date</th>
<th>Fixture</th>
<th>Venue</th>
</tr>

<% ArrayList<FixtureBean> e=(ArrayList<FixtureBean>)request.getAttribute("bets");
	for(FixtureBean c:e)
	{
%><tr>
<td><%=c.getMatch_no()%></td>
<td><%=c.getMatch_date()%></td>
<td><%=c.getFixture() %></td>
<td><%=c.getVenue() %></td>
</tr>
<%
}
%>
</table><br><br>
</div></form>
<form name="New" action="AddServlet" method="post" onsubmit="return validateForm()">
		<% ArrayList<FixtureBean> ee=(ArrayList<FixtureBean>)request.getAttribute("bets");
		for(FixtureBean c:ee)
		{	
			Date date=c.getMatch_date();
			String fixture=c.getFixture();
			String arr[]=c.getFixture().split("vs");
			String a=arr[0];
			String b=arr[1];
		%>
		<input type="hidden" name="owner" value="<%=request.getParameter("owner")%>"/></input>
		<input type="hidden" name="matchNo" value="<%=request.getParameter("matchNo")%>"/></input>
		<input type="hidden" name="matchDt" value="<%=date%>"/></input>
		<input type="hidden" name="fixture" value="<%=fixture%>"/></input>
		<input type="hidden" name="oppo" value="<%=request.getParameter("oppo")%>"/></input>
		<input type="hidden" name="venue" value="<%=request.getParameter("venue").toString()%>"/></input>
		<br><br>
		Ratio &nbsp;&nbsp;&nbsp;&nbsp;
		<input type="number" step="any" name="ratio" value="1"></input><br><br>
		<div class="info">	
			Note: <br>
			1)if odds is even, Give 1.<br>
			2)if odds is against you, Give -ve number. Eg: -1.5<br>
			3)if odds is with you, Give +ve number. Eg: +1.5 
		</div>
		<br>
		Team&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<!-- 		<input type="text" name="team"></input><br><br> -->
		<input type="radio" name="team" value="<%=a%>"><%=a%>&emsp;
  		 <input type="radio" name="team" value="<%=b%>"><%=b%><br><br>
		<%
		}
		%>
		Amount&nbsp;
		<input type="number" name="amt"></input><br><br>
		<button class="button button4" type="submit" name="action5" value="placeBet" ">Place Bet</button>&emsp;<br>
</form><br>
<a href="New.jsp"><button class="button button4" type="button">Back</button></a>&emsp;
<a href="Home.jsp"><button class="button button4" type="button">Home</button></a>
</body>
</html>