<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Customer Form</title>
<style>
	.error{
		color: red;
	}
</style>
</head>
<body>
	<h1>Student form</h1>
	
	<form:form action="proccessForm" modelAttribute="customer" >
		FirstName: <form:input path="firstName" />
		<br><br>
		LastName(*): <form:input path="lastName" />
				  <form:errors path="lastName" cssClass="error"></form:errors>
		<br><br>
		FreePasses: <form:input path="freePasses" />
				  <form:errors path="freePasses" cssClass="error"></form:errors>
		<br><br>
	
		
		CourseCode: <form:input path="courseCode" />
					<form:errors path="courseCode" cssClass="error"></form:errors>
		<br><br>
		<input type="submit"  value="Submit"/>
		<br><br>
		</form:form>

	
</body>
</html>