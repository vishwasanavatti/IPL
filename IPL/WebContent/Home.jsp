<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style>
div.container {
	display:inline-block;
    width: 100%;
    border: 1px solid gray;
}
header, footer {
    padding: 1em;
    color: white;
    background-color: black;
    clear: left;
    text-align: center;
}
div button{
    display:inline-block;
}

.main {
  background-color:#f1f1f1;
  * The width is 60%, by default */
}


nav ul {
    list-style-type: none;
    padding: 0;
}
   
nav ul a {
    text-decoration: none;
}

article {
    margin-left: 170px;
    border-left: 1px solid gray;
    padding: 1em;
    overflow: hidden;
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
</style>
 
</head>
<title>IPL 2018</title>
<body>
	<header>        
        <img src="C:\Users\MOON\Desktop\IPL-1.jpg" alt="IPL LOGO" align="middle"
        style="width:1200px;height:550px;">
    </header>
   
 <div class="main " ><br>
 		
		<div style="width: 40%; margin: 0px auto;">	<a href="New.jsp"><button class="button" type="button" >New Bet</button></a>
			&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
			<a href="Result.jsp" ><button  class="button" type="button" >Result</button></a></div>
		
		<form action="FixtureServlet" method="post" >
			
		<div style="width: 20%; margin: 0px auto;">	<input  class="button" type="submit" name="action1"  value="Fixture" ></input></div>
			
		</form><br><br></div>
  <footer>
		  <p>Created by: Vishwas A M</p>
		  <p>Contact information: <a href="mailto:vish.ckm@gmail.com">
		  vish.ckm@gmail.com</a></p>
  </footer></div>
    </body>
</html>
