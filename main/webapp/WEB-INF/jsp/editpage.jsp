<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
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

<h1 id="banner">Edit Person</h1>

<c:url var="saveUrl" value="/persons/edit?id=${personAttribute.id}" />
<form:form modelAttribute="personAttribute" method="POST" action="${saveUrl}">
	<table>
		<tr>
			<td><form:label path="id">Id:</form:label></td>
			<td><form:input path="id" disabled="true"/></td>
		</tr>
	
		<tr>
			<td><form:label path="firstName">First Name:</form:label></td>
			<td><form:input path="firstName"/></td>
		</tr>

		<tr>
			<td><form:label path="lastName">Last Name</form:label></td>
			<td><form:input path="lastName"/></td>
		</tr>
		
		<tr>
                        <td><form:label path="courses1">Course 1:</form:label></td>
                        <td>
                        <form:select path="courses1">
                            <form:option value="infoArkitektur">InfoArk</form:option>
                            <form:option value="matte">matte</form:option>
                        </form:select>
                        </td>
			
		</tr>
                <tr>
                        <td><form:label path="courses2">Course 2:</form:label></td>
                        <td>
                        <form:select path="courses2">
                            <form:option value="infoArkitektur">InfoArk</form:option>
                            <form:option value="matte">matte</form:option>
                        </form:select>
                        </td>
			
		</tr>
                <tr>
                        <td><form:label path="courses3">Course 3:</form:label></td>
                        <td>
                        <form:select path="courses3">
                            <form:option value="infoArkitektur">InfoArk</form:option>
                            <form:option value="matte">matte</form:option>
                        </form:select>
                        </td>
			
		</tr>
	</table>
	
	<input type="submit" value="Save" />
</form:form>

</body>
</html>