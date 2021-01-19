<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
</head>
<body>
	<h1 style="color: blue">Login</h1>
	<form:form modelAttribute="fn10">
		Username: <form:input path="username" />
		Password: <form:input path="password" />
		<input type="submit" value="Submit">
	</form:form>

</body>
</html>