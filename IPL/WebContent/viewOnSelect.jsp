<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
<title>Please Select for result</title>
</head>
<body>
<form action="ViewServlet" method="post" >
		<b><h2>Choose a Player to view Result</h2><br><br>
 	 		<input type="radio" name="owner" value="Vishwas">Vishwas</input>
 	 		<input type="radio" name="owner" value="Nikesh">Nikesh</input>
 	 		<input type="radio" name="owner" value="Sushmith">Sushmith</input>
 	 		<input type="radio" name="owner" value="Others">Others</input></b>	<br>
      <br> <button class="button button4" type="submit" name="action2"  value="Results" ">View Result</button>&emsp;
      <br><br>
</form>
<a href="Home.jsp"><button class="button button4" type="button">Home</button></a>
</body>
</html>