<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit</title>
</head>
<body>
<center>
<h1>Edit the Details</h1>
<form:form action="update" modelAttribute="student" method="post">
Id:<form:input path="id" readonly="true"/><br>
Name:<form:input path="name"/><br>
Email:<form:input path="email"/><br>
Gender:<form:radiobutton path="gender" value="male"/>Male
	   <form:radiobutton path="gender" value="female"/>Female<br>
Mobile:<form:input path="mobile"/><br>
Password:<form:input path="password"/><br>
Dob:<input name="date" value="${student.getDob()}"><br>
<button>Update</button><button type="reset">Cancel</button>
</form:form>
</center>
</body>
</html>