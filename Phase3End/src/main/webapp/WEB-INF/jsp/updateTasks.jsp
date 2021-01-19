<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Task</title>
</head>
<body>
	<h1 style="color: blue">Edit Task</h1>
	<form:form action="/editemp" method="post" modelAttribute="hello10">
		Id:<form:input type="text" path= "id" /><br/>
		Task Name:<form:textarea type="text" path= "name" />
		<br />
		Start Date:<form:input type="date" path="startDate" />
		<br />
		End Date:<form:input type="date" path="endDate" />
		<br />
		Description:<form:textarea path="description" />
		<br />
		Email:<form:input type="text" path="email" />
		<br />
		Severity:<input list="severity" name="severity">
	<datalist  id="severity">
	<option value="High" selected="selected">
	<option value="Medium">
	<option value="Low">
	</datalist>
		<br />
		<input type="submit" value="Submit">
	</form:form>
	<a type="button" href="/welcome">Home</a>
</body>
</html>