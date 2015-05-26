<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <link href="<c:url value="/css/newcss.css" />" rel="stylesheet">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
</head>
<body id="loginf">
<h1 id="banner">Persons</h1>

<c:url var="addUrl" value="/persons/add" />
<table border="1" style="border: 1px solid; border-collapse: collapse; width: 500px; text-align:center">
	<thead>
		<tr>
			<th>First Name</th>
			<th>Last Name</th>
			<th>Courses</th>
			<th colspan="3"></th>
		</tr>
	</thead>
	<tbody>
	<c:forEach items="${persons}" var="person">
			<c:url var="editUrl" value="/persons/edit?id=${person.id}" />
			<c:url var="deleteUrl" value="/persons/delete?id=${person.id}" />
		<tr>
			<td><c:out value="${person.firstName}" /></td>
			<td><c:out value="${person.lastName}" /></td>
                        <td><c:out value="${person.courses1}" /><br>
                            <c:out value="${person.courses2}" /><br>
                            <c:out value="${person.courses3}" /></td>
			<td><a href="${editUrl}">Edit</a></td>
			<td><a href="${deleteUrl}">Delete</a></td>
			<td><a href="${addUrl}">Add</a></td>
		</tr>       
	</c:forEach>
	</tbody>
</table>

<c:if test="${empty persons}">
    <p>There are currently no persons in the list. <a href="${addUrl}">Add</a> a person.</p>
</c:if>

<c:url var="mainPage" value="/main" />
<br><br><br><a href="${mainPage}">Go back to main page</a>

</body>
</html>