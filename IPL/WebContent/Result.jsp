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
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Result</title>
</head>
<body>
<h2>&emsp;&emsp;Result</h2>

<div style="width: 30%; margin: 0px auto;">
	<a href="getNetAmount.jsp"><button class="button" type="button" >Stats</button></a><br>
</div>
<!-- <a href="previousResult.jsp">Previous Results</a>&emsp; -->
<div style="width: 30%; margin: 0px auto;"><form action="ViewServlet" method="post" >
      <br> <button class="button" type="submit" name="action2"  value="Results" ">View Result</button><br><br>
</form></div>
<div style="width: 30%; margin: 0px auto;">
	<a href="getUpdateResult.jsp"><button class="button" type="button">Update Result</button></a>&emsp;
</div>
<br>
&emsp;&emsp;<a href="Home.jsp"><button type="button"style="width:80px;height:25px;">Home</button></a>
</body>
</html>