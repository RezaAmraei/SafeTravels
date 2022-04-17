
    <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page isErrorPage="true" %>
		<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
		<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Task</title>
</head>
<body>

<h1>Edit Expense</h1>
<a href="/">Go back</a>

<form:form action="/editting/${currExpense.id}" method="post" modelAttribute="editExpense" >

<input type="hidden" name="_method" value="put">
<p>
<form:label path="expenseName"> Expense Name:</form:label>
<form:errors path="expenseName"/>
<form:input path="expenseName" value="${currExpense.expenseName}" />
</p>

<p>
<form:label path="vendor"> Vendor:</form:label>
<form:errors path="vendor"/>
<form:input path="vendor" value="${currExpense.vendor}"/>
</p>

<p>
<form:label path="amount"> Amount:</form:label>
<form:errors path="amount"/>
<form:input path="amount" type="number" step="any" value="${currExpense.amount}"/>
</p>

<p>
<form:label path="description"> Description:</form:label>
<form:errors path="description"/>
<form:input path="description" value="${currExpense.description}"/>
</p>

<input type="submit" value="Submit" />
</form:form>
</body>
</html>