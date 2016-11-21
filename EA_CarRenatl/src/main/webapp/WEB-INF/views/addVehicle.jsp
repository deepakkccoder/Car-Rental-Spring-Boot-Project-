<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<form:form modelAttribute="newVehicle" method="post"  >
<table>

<%-- <tr><td>Category:</td><td><form:select id="category" path="category.Id"
items="${categories}" itemValue="Id" itemLabel="cName" /></td>
	<td>	<form:errors path="category" cssStyle="color:red;"/></td>
	</tr> --%>	
<tr><td>Vehicle Brand:</td><td><form:input id="brand" name="brand" path="brand" type="text" /></td>
		<td><form:errors path="brand" cssStyle="color:red;"/></td>
</tr>
<tr><td>Vehicle Type:</td><td><form:input id="type" name="type" path="type" type="text" /></td>
		<td><form:errors path="type" cssStyle="color:red;"/></td>
</tr>
			
<tr><td>Plate Number:</td><td><form:input id="vehiclePlateNumber" name="vehiclePlateNumber" path="vehiclePlateNumber" type="text"/></td>
			<td><form:errors path="vehiclePlateNumber" cssStyle="color:red;"/></td>
</tr>


<tr><td>Model:</td><td><form:input id="model" name="model" path="model" type="text" /> </td>
		<td>	<form:errors path="model" cssStyle="color:red;"/></td>
		</tr>

<tr><td>Number of Seats:</td><td><form:input id="numberOfSeats" name="numberOfSeats" path="numberOfSeats" type="text" /> </td>
		<td>	<form:errors path="numberOfSeats" cssStyle="color:red;"/></td>
		</tr>		
<tr><td>Daily Price:</td><td><form:input id="dailyPrice" name="dailyPrice" path="dailyPrice" type="text" /> </td>
		<td>	<form:errors path="dailyPrice" cssStyle="color:red;"/></td>
		</tr>		


	

		<tr><td>	<input type="submit" value="Add"/></td></tr>
</table>			
</form:form>
</body>
</html>