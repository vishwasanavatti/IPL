<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script>
function validateForm() {
    var x = document.forms["update"]["matchNo"].value;
    var y = document.forms["update"]["venue"].value;
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
<title>Update Result</title>
</head>
<body>
<h2>Please Enter Match Number and Venue</h2>
<form name="update" action="UpdateServlet" method="post" onsubmit="return validateForm()">
	<div align="left">
 	 	<form method="get" onsubmit="updateResult.jsp">   
 	 		<b><b>Who is updating?</b><br><br>
 	 		<input type="radio" name="owner" value="Vishwas">Vishwas</input>
 	 		<input type="radio" name="owner" value="Nikesh">Nikesh</input>
 	 		<input type="radio" name="owner" value="Sushmith">Sushmith</input>
 	 		<input type="radio" name="owner" value="Others">Others</input></b><br><br>        
			<b>Match Number&nbsp;</b>
			<input type="number" name="matchNo"  style="width:150px;height:18px;"></input><br><br>
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
			</form>
			<button class="button button4" type="submit" name="action6" value="getUpdate">Update Result</button>&emsp;
			<a class ="button button4" href="Home.jsp">Home</a>
			<br><br>
		</form>
	</div> 
</form>

</body>
</html>