<%@page import="mvc.dto.Student"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Result</title>
</head>
<body>

<center>
<h1> All Details </h1>

<h1 style='color:green'>${Success}</h1>

<%--<%List<Student> list=(List<Student>)request.getAttribute("list"); %>--%>

<table border="1">
<tr>
<th>Id</th>
<th>Name</th>
<th>Email</th>
<th>Mobile</th>
<th>Gender</th>
<th>Dob</th>
<th>Age</th>
<th>Delete</th>
<th>Edit</th>
</tr>

<%--Using this by JSTL we have to add dependedinces and jstl core taglib defination which as
 inbuilt tags avoid us to use he scriplet tags --%>
 
<c:forEach var="s" items="${list}"><%-- foreach(Student s:list) --%>

<tr>
<th>${s.getId()}</th>
<th>${s.getName()}</th>
<th>${s.getEmail()}</th>
<th>${s.getMobile()}</th>
<th>${s.getGender()}</th>
<th>${s.getDob()}</th>
<th>${s.getAge()}</th>
<th><a href="delete?id=${s.getId()}"><button>Delete</button></a></th>
<th><a href="edit?id=${s.getId()}"><button>Edit</button></a></th>
</tr>

<%--Using Scriplet tag we write these --%>

<%--<%for(Student s:list){ %>
<tr>
<th><%=s.getId() %></th>
<th><%=s.getName() %></th>
<th><%=s.getEmail() %></th>
<th><%=s.getMobile() %></th>
<th><%=s.getGender() %></th>
<th><%=s.getDob() %></th>
<th><%=s.getAge() %></th>
<th><button>Delete</button></th>
<th><button>Edit</button></th>
</tr>
<%} %>--%>

</c:forEach>

</table>
<br>

</center>

</body>
</html>