<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
  <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"  %>
  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Page</title>
</head>
<body>
<h1> Login Page</h1>

<form action="<c:url value="/j_spring_security_check"></c:url>" method=
"post">
	User: <input name="username" />
	<br/>
	Password: <input type="password" name='password'/>
	<br/>
	 <input type="hidden"  name="${_csrf.parameterName}"   value="${_csrf.token}"/>
	<input type="submit"/>
</form>
</body>
</html>