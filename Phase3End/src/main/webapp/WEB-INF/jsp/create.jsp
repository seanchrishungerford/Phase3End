<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Task</title>
</head>
<body>
	<h1 style="color: blue">Task Created: </h1>

	<form:form action="find" method="post" modelAttribute="hello2">
		<table>
			<tr>
			 <td><b>Id:</b> ${hello2.id}<form:hidden path="id" name="id" />
				</td>
			</tr>
			<tr>
				<td><b>Task name:</b> ${hello2.name}<form:hidden path="name" name="name" />
				</td>
			</tr>
			<tr>
				<td><b>Start Date:</b> ${hello2.startDate}<form:hidden path="startDate"
						name="startDate" />
				</td>
			</tr>
			<tr>
				<td><b>End Date:</b> ${hello2.endDate}<form:hidden path="endDate" name="endDate" />
				</td>
			</tr>
			<tr>
				<td><b>Description:</b> ${hello2.description}<form:hidden path="description"
						name="description" />
				</td>
			</tr>
			<tr>
				<td><b>Email:</b> ${hello2.email}<form:hidden path="email" name="email" />
				</td>
			</tr>
			<tr>
				<td><b>Severity:</b> ${hello2.severity}<form:hidden path="severity"
						name="severity" />
				</td>
			</tr>
			<tr>
				<td><a type="button" href="/welcome">Home</a>
				</td>

			</tr>
		</table>

	</form:form>
</body>
</html>