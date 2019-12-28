<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE >
<%@page import="DAO.DAO"%>
<%@page import="java.util.ArrayList"%>

<%@page import="java.sql.*"%>
<%@page import="Bean.*"%>
<html>
<head>
<style>
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
<title>Stats</title>
</head>
<body>
<h2>Stats</h2>
<form method="get" action="getNetAmount.jsp"> 
 	 		<b><b>Choose Player to see his IPL 2018 Stats</b><br><br>
 	 		<input type="radio" name="owner" value="Vishwas">Vishwas</input>
 	 		<input type="radio" name="owner" value="Nikesh">Nikesh</input>
 	 		<input type="radio" name="owner" value="Sushmith">Sushmith</input>
 	 		<input type="radio" name="owner" value="Others">Others</input></b><br><br>
 	 		<button class="button button4" type="submit" >Get Stats</button>
 	</form>
 	<br>
 	<a href="Home.jsp"><button class="button button4" type="button">Home</button></a>
</body>
</html>