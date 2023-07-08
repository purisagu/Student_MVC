<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Save Data</title>
</head>
<body>
<center>
<h1> Enter Your Details</h1>
<form action="save" method="post">
<table>
Name:<input type="text" name="name"><br>
Email:<input type="email" name="email"><br>
Password:<input type="password" name="password"><br>
Mobile:<input type="tel" pattern="[0-9]{10}" name="mobile"><br>
Gender:
<input type="radio" name="gender" value="male">Male
<input type="radio" name="gender" value="female">Female<br><br>
DOB:<input type="date" name="date"><br><br>
<button>Save</button>
<button type="reset">Cancel</button>
</table>
</form>
</center>
</body>
</html>