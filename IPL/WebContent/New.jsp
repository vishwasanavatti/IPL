<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<%@page import="DAO.DAO"%>
<%@page import="java.util.ArrayList"%>

<%@page import="java.sql.*"%>
<%@page import="Bean.ResultBean"%>

<html>
<head>
<script>
function validateForm() {
    var x = document.forms["New"]["matchNo"].value;
    var y = document.forms["New"]["venue"].value;
    if (x == "") {
        alert("Mention Match Number");
        return false;
    }
    else if(y==""){
    	alert("Please select Venue");
    	return false;
    }
}
</script>
<style>
header, footer {
    padding: 1em;
    color: white;
    background-color: black;
    clear: left;
    text-align: center;
}
.button {
    background-color: #4CAF50; /* Green */
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

body {
    background-color: rgb(201, 76, 76);
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body >

&emsp;&emsp;&emsp;<h1>&emsp;&emsp;New Bet</h1>

<br>
 <form name="New" action="NewServlet" method="post" onsubmit="return validateForm()">
     <div align="left">
 	 	<form method="get" onsubmit="View.jsp"> 
 	 		<b>Who is betting?
 	 		<input type="radio" name="owner" value="Vishwas">Vishwas</input>
 	 		<input type="radio" name="owner" value="Nikesh">Nikesh</input>
 	 		<input type="radio" name="owner" value="Sushmith">Sushmith</input>
 	 		<input type="radio" name="owner" value="Others">Others</input> </b><br><br>         
			<b>Match Number&nbsp;</b>
			<input type="number" name="matchNo" style="width:150px;height:18px;"></input><br><br>
			<b>Venue&emsp;&emsp;&emsp;&emsp;</b>
<!-- 			<input type="text" name="venue" ></input><br><br> -->
			<select name="venue" style="width:155px;height:25px;"> 
			  <option value="Null" ></option>
			  <option value="Mumbai" >Mumbai</option> 
			  <option value="Mohali" >Mohali</option>
			  <option value="Kolkata">Kolkata</option>
			  <option value="Banglore">Bengaluru</option>
			  <option value="Jaipur">Jaipur</option>
			  <option value="Indore">Indore</option>
			  <option value="Delhi">Delhi</option>
			  <option value="Hyderabad">Hyderabad</option>
			  <option value="Chennai">Chennai</option>
			</select><br><br>
			<button class="button button4" type="submit" name="action4" value="Bet" >Bet</button>&emsp;
			<a class ="button button4" href="Home.jsp">Home</a>
			<br><br>
		</form>
	</div>
</form>

<br><br>

</body>
</html>