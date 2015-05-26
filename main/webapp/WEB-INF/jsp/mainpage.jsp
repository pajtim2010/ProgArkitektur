<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
    <head>
        <link href="<c:url value="/css/newcss.css" />" rel="stylesheet">
    </head>
    <body>
        <img id="logo" src="<c:url value="/css/studhioalogo.png" />" />
        <div id="main">
            <a href="/ProjectWebapp/persons" class="courseReg">Course Registration</a><br>
            <a href="/ProjectWebapp/list" class="userMgmt">User Management</a>
            <a href="/ProjectWebapp/upload" class="upload">Deliver Assigment</a>
            <br>
            <br>
            <h6><a href="<c:url value='j_spring_security_logout'/>" class="logout">Logout</a></h6>
        </div>
    </body>
</html>