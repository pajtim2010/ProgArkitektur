<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <link href="<c:url value="/css/newcss.css" />" rel="stylesheet">
    <title>projectwebapp</title>
</head>
<body id="loginf">
 
<h1 id="banner">Student mangement</h1>
<c:url var="mainPage" value="/main" />
<a href="${mainPage}">Go back to main page</a>
<br><br>
<form:form method="post" action="add" commandName="user">
 
    <table>
    <tr>
        <td><form:label path="firstname">First Name</form:label></td>
        <td><form:input path="firstname" /></td>
    </tr>
    <tr>
        <td><form:label path="lastname">Last Name</form:label></td>
        <td><form:input path="lastname" /></td>
    </tr>
    <tr>
        <td><form:label path="email">E-Mail</form:label></td>
        <td><form:input path="email" /></td>
    </tr>
    <tr>
        <td><form:label path="telephone">Telephone</form:label></td>
        <td><form:input path="telephone" /></td>
    </tr>
    <tr>
        <td colspan="2">
            <input type="submit" value="Add User"/>
        </td>
    </tr>
</table> 
</form:form>
 
     
<h3>Users</h3>
<c:if  test="${!empty userList}">
<table class="data" border="1" style="border: 1px solid; border-collapse: collapse; width: 500px; text-align:center">
<tr>
    <th>Name</th>
    <th>Email</th>
    <th>Telephone</th>
    <th colspan="3"></th>
</tr>
<c:forEach items="${userList}" var="user">
    <tr>
        <td><c:out value="${user.lastname}, ${user.firstname}"/> </td>
        <td><c:out value="${user.email}"/></td>
        <td><c:out value="${user.telephone}"/></td>
        <td><a href="delete/${user.id}">delete</a></td>
    </tr>
</c:forEach>
</table>
</c:if>
 
</body>
</html>