<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
    <link href="<c:url value="/css/newcss.css" />" rel="stylesheet">
    <title>Upload Assignments</title>
</head>
<body id="loginf">
    <div id="upload2">
    <h1 id="banner">Upload assignment</h1>
	<form method="POST" action="uploadFile" enctype="multipart/form-data">
            File to upload: <input type="file" name="file"><br><br>
            Name: <input type="text" name="name"><br><br>
		<input type="submit" value="Upload">
	</form>
    </div>
</body>
</html>