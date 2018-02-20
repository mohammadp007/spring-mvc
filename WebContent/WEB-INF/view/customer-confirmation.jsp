<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Customer Confirmation</h1>
	
	<h1>
		Customer: ${customer.firstName} ${customer.lastName}
	</h1>
	<h1>
		Free passes: ${customer.freePasses}
	
	</h1>
	<%-- <h1>
		Phone Number: ${customer.phoneNumber}
	
	</h1> --%>
	
	<h1>
		 course code : ${customer.courseCode}
	
	</h1>
</body>
</html>