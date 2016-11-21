<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">  
<title>User Sign Up</title>
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>  
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>  
<body>
<form:form modelAttribute="newUser" method="post">
<table>
<div class="form-group">
	<tr> 
	<td>First Name: <form:input path="fName"  type="text" class="form-control"/></td>
	<td> <form:errors path="fName" cssStyle="color:red;"/></td>
	</tr>
	<tr> 
	<td>Last Name:<form:input path="lName" type="text" class="form-control"/></td>
	<td><form:errors path="lName" cssStyle="color:red;"/></td>
	</tr>
	<tr> 
	<td>Phone No: <form:input path="phone"  class="form-control"/></td>
	<td><form:errors path="phone" cssStyle="color:red;"/></td>
	</tr>
	<tr> 
	<td>Email: <form:input path="email"  class="form-control"/></td>
	<td><form:errors path="email" cssStyle="color:red;"/></td>
	</tr>
	<tr> 
	<td>Date Of Birth: <form:input path="dob"  class="form-control"/></td>
	<td><form:errors path="dob" cssStyle="color:red;"/></td>
	</tr>
	<tr>

	<td>Street: <form:input path="address.street"  class="form-control" /></td>
	<td><form:errors path="address.street" cssStyle="color:red;"/></td>
	</tr>
	<tr>
	<td>City: <form:input path="address.city"  class="form-control" /></td>
	<td><form:errors path="address.city" cssStyle="color:red;"/></td>
	</tr>
	<tr>
	<td>State: <form:input path="address.state"   class="form-control"/></td>
	<td><form:errors path="address.state" cssStyle="color:red;"/></td>
	</tr>
	<tr>
	<td>ZIP Code: <form:input path="address.zip"   class="form-control"/></td>
	<td><form:errors path="address.zip" cssStyle="color:red;"/></td>
	</tr>
	<tr>
	<td>Country: <form:input path="address.country"  class="form-control"/></td>
	<td><form:errors path="address.country" cssStyle="color:red;"/></td>
	</tr>
	<tr>
	<td>Username: <form:input path="user.username"  class="form-control"/></td>
	<td><form:errors path="user.username" cssStyle="color:red;"/></td>
	</tr>
	<tr>
	<td>Password: <form:input path="user.password"  type="password" class="form-control"/></td>
	<td><form:errors path="user.password" cssStyle="color:red;"/></td>
	</tr>

</div>
</table>
<form:hidden path="user.enabled" value="true"/>
<input type="submit" value="SignUp">
</form:form>
</body>
</html>