<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.Date" %>
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

<p>You have edited a person with id ${id} at <%= new java.util.Date() %></p>

<c:url var="mainUrl" value="/persons" />
<p>Return to <a href="${mainUrl}">Main List</a></p>

</body>
</html>