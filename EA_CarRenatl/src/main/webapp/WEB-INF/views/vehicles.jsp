<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"  %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>All Vehicle</title>
</head>
<body>
<h2> Vehicle Details </h2>
<c:forEach items="${vehicles}" var="vehicles">
<div style="border:2px solid blue; width:300px;float:left; margin:5px">
<p> Vehicle Brand: ${vehicles.brand }</p>
<img src="<c:url value="/resource/images/C${products.id }.png"></c:url>" alt="image" style = "width:250px; height:150px"/>
<p> Model : ${vehicles.model }</p>
<br/>
<a href="<spring:url value="/vehicle?id=${vehicles.id}" /> "> </span> Details </a>
</div>
</c:forEach>

</body>
</html>