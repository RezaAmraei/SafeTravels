<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page isErrorPage="true" %>
		<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
		<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<table>	
	<tr>
		<th>Expense</th>
		<th>Vendor</th>
		<th>Amount</th>
		<th>Actions</th>
	</tr>
	<c:forEach var="oneExpense" items="${allExpenses}">
	<tr>
		<td><a href="/expense/details/${oneExpense.id}"><c:out value="${oneExpense.expenseName}"/></a></td>
		<td><c:out value="${oneExpense.vendor}"/></td>
		<td><c:out value="${oneExpense.amount}"/></td>
		<td><a href="/edit/${oneExpense.id}">Edit</a></td>
		<form action="/delete/${oneExpense.id}">
		<!-- Ask what this does -->
		<!-- <input type="hidden" name="_method" value="delete" /> -->
		
		<td><input type="submit" value="Delete" /></td>
		</form>
		
	</tr>	
	</c:forEach>	
	
</table>
<h1>Add an Expense:</h1>
<!-- Whats the difference between form and form:form -->
<form:form action="/add/expense" method="post" modelAttribute="addExpense" >

<p>
<form:label path="expenseName"> Expense Name:</form:label>
<form:errors path="expenseName"/>
<form:input path="expenseName"/>
</p>

<p>
<form:label path="vendor"> Vendor:</form:label>
<form:errors path="vendor"/>
<form:input path="vendor"/>
</p>

<p>
<form:label path="amount"> Amount:</form:label>
<form:errors path="amount"/>
<form:input path="amount" type="number" step="any"/>
</p>

<p>
<form:label path="description"> Description:</form:label>
<form:errors path="description"/>
<form:input path="description"/>
</p>

<input type="submit" value="Submit" />
</form:form>
</body>
</html>