<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Form</title>
</head>
<body>
	<h1>Student form</h1>
	
	<form:form action="proccessForm" modelAttribute="student" >
		First Name : <form:input path="firstName" />
		<br><br>
		Last Name : <form:input path="lastName" />
		<br><br>
		Country : <form:select path="country">
					<form:option value="BRA" label="Brazil"></form:option>
					<form:option value="IR" label="Iran"></form:option>
					<form:option value="US" label="United States"></form:option>
					</form:select>
				
		<br><br>
		Java <form:radiobutton path="favoriteLanguage" value="Java"/>
		C# <form:radiobutton path="favoriteLanguage" value="C#"/>
		GO <form:radiobutton path="favoriteLanguage" value="Go"/>
		<br><br>
		
		Linux <form:checkbox path="operatingSystems" value="Linux"/>
		Mac <form:checkbox path="operatingSystems" value="Mac"/>
		Windows <form:checkbox path="operatingSystems" value="Windows"/>
		
		<br><br>
		<input type="submit"  value="Submit"/>
		<br><br>
		</form:form>
	
	<!-- important using -->
	<!-- form:options items="${studen.countryOptions}" -->
	
	
	
	
</body>
</html>