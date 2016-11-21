<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"  %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product</title>
</head>
<body>
<div style="border:2px solid blue; width:300px;float:left; margin:5px">
<h1> Vehicle Detail</h1>

<p> ID:${vehicle.id } </p>
<p> Brand: ${vehicle.brand }</p>
<p> Type: ${vehicle.type}</p> 
<p> Vehicle Plate No: ${vehicle.vehiclePlateNumber }</p>
<p> Model: ${vehicle.model} </p>
<p> No of Seats: ${vehicle.numberOfSeats } </p> 
<p> Daily Price: ${vehicle.dailyPrice}</p>

<br/>

<a href="<spring:url value="/vehicle/delete?id=${vehicle.id}" /> "> </span> Delete </a>
<br/>
<a href="<spring:url value="/vehicle/update?id=${product.id}" /> "> </span> Update </a>
</div>


</body>
</html>