<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ page isErrorPage="true" %>
		<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
		<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Expense Details</title>
</head>
<body>
<h1>Expense Details</h1>
<h3><a href="/">Go Back</a></h3>

<h2>Expense Name:</h2>
<label for="expenseName"><c:out value ="${expense.expenseName}"/></label>
<h2>Expense Description :</h2>
<label for="expenseDescription"><c:out value ="${expense.description}"/></label>
<h2>Vendor :</h2>
<label for="expenseVendor"><c:out value ="${expense.vendor}"/></label>
<h2>Amount Spent :</h2>
<label for="exenseAmount"><c:out value ="${expense.amount}"/></label>

</body>
</html>