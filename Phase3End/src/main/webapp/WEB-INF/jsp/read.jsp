<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<style>
li {
	display: inline-block;
	margin: 0 10px;
}
</style>
<body>

	<h1>Display page</h1>
	<ul>
		<c:forEach items="${task}" var="tasks">
			<b>Id:</b>
			<li>${tasks.id}</li>
			<b>Name:</b>
			<li>${tasks.name}</li>
			<b>Start Date:</b>
			<li>${tasks.startDate}</li>
			<b>End Date:</b>
			<li>${tasks.endDate}</li>
			<b>Description:</b>
			<li>${tasks.description}</li>
			<b>Email:</b>
			<li>${tasks.email}</li>
			<b>Severity:</b>
			<li>${tasks.severity}</li>
			<br />
		</c:forEach>
	</ul>

	<a type="button" href="/welcome">Home</a>

</body>
</html>