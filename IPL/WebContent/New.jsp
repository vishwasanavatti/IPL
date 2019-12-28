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
    var z= document.forms["New"]["owner"].value;
    var xyz= document.forms["New"]["oppo"].value;
    if (x == "") {
        alert("Mention Match Number");
        return false;
    }
    else if(y==""){
    	alert("Please select Venue");
    	return false;
    }
    else if(z==""){
    	alert("Please select player");
    	return false;
    }
    else if(xyz==""){
    	alert("Please mention the opponent");
    	return false;
    }
}

</script>
<style>
img:active {
    background-color: yellow;
}
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
p.ex1 {
    margin-left: 20px;
}
img {
  border-radius: 50%;
}
label > input{ /* HIDE RADIO */
  visibility: hidden; /* Makes input not-clickable */
  position: absolute; /* Remove input from document flow */
}
label > input + img{ /* IMAGE STYLES */
  cursor:pointer;
  border:2px solid transparent;
}
label > input:checked + img{ /* (RADIO CHECKED) IMAGE STYLES */
  border:2px solid #f00;
}

</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body >

&emsp;&emsp;&emsp;<h1>&emsp;&emsp;New Bet</h1>

<br>
 <form name="New" action="NewServlet" method="post" onsubmit="return validateForm()">
     <div >
     <p class="ex1">
 	 	<form method="get" onsubmit="View.jsp"> 
 	 		<b><b><font size="6">Please Choose Player</font></b><br><br>
 	 		<label><input type="radio" name="owner" value="Vishwas" ><img src="D:\Photos\Random\IMG_3391.jpg" class="image" alt="Vishwas" style="width:150px"></input></label>
 	 		<label><input type="radio" name="owner" value="Nikesh"><img src="D:\Photos\Homestay\DSC_0076.jpg" alt="Nikesh" style="width:150px"></input></label>
 	 		<label><input type="radio" name="owner" value="Sushmith"><img src="D:\Photos\Homestay\DSC_0122.jpg" alt="Sushmith" style="width:150px"></input></label>
 	 		<label><input type="radio" name="owner" value="Others"><img src="D:\Photos\Homestay\blank.png"   alt="Others" style="width:100px"></input></label></b><br><br>  
 	 		<b>Opponent</b>&emsp;&emsp;&nbsp;&nbsp;
 	 		<input type="text" name="oppo" style="width:152px;height:18px;" ></input><br><br>     
			<b>Match Number&nbsp;</b>
			<input type="number" name="matchNo" style="width:150px;height:19px;"></input><br><br>
			<b>Venue&emsp;&emsp;&emsp;&emsp;&nbsp;</b>
<!-- 			<input type="text" name="venue" ></input><br><br> -->
			<select name="venue" style="width:155px;height:27px;"> 
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
		</p>
	</div>
</form>

<br><br>

</body>
</html>