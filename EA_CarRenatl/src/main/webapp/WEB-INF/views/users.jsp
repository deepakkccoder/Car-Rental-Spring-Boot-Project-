<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"  %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">  
<title>List of Users</title>
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>  
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>  
<body>
<div class="page-header ">
			<h3>Users List</h3>
</div>

<c:forEach items="${ users}" var="users">



<div class="col-sm-6 col-md-3" style="margin: 15px">
<table style="border:2px solid green">
<tr><td>First Name:${users.fName}</td></tr>
<tr><td>Last Name:${users.lName}</td></tr>
<tr><td>Phone No:${users.phone}</td></tr>
<tr><td>Email :${users.email}</td></tr>
<tr><td>Street :${users.address.street}</td></tr>
<tr><td>City :${users.address.city}</td></tr>
<tr><td>State :${users.address.state}</td></tr>
<tr><td>Country :${users.address.country}</td></tr>
<a href="<spring:url value="/user/delete?id=${users.id}" /> "> </span> Delete </a>
<br/>
<a href="<spring:url value="/user/update?id=${users.id}" /> "> </span> Update </a>

</table>
</div>
</c:forEach>

</body>
</html>