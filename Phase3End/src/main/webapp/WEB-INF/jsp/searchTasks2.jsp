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
	<h1 style="color: blue">Search for Task To <b>Edit</b> by ID:</h1>
	<form:form action="/editemp" method="post" modelAttribute="fn5">
		<form:input path="id" />
		<input type="submit" value="Submit">
	</form:form>
 
</body>
</html>