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
	<h1 style="color: blue">Welcome</h1>
	<form:form modelAttribute="fn11">
	</form:form>
	<a href="/create" >Create Task  </a><br/>
	<a href="/editemp" >Update A Task  </a><br/>
	<a href="/delete" >Delete A Task  </a><br/>
	<a href="/read" >Display All Tasks</a>

</body>
</html>