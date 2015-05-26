<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<html>
    <head>
        <link href="<c:url value="/css/newcss.css" />" rel="stylesheet">
    </head>
        <body onload='document.loginForm.j_username.focus();'>
            
            <div id="loginmain">
                <img id="logo" src="<c:url value="/css/studhioalogo.png" />" />
		  
                <form name="f" id="loginf" action="<c:url value='j_spring_security_check'/>"
					method="POST">
                    <h1 id="banner">Login</h1>
			<table>
				<tr>
					<td>Username:</td>
					<td><input type='text' name='j_username' /></td>
				</tr>
				<tr>
					<td>Password:</td>
					<td><input type='password' name='j_password'></td>
				</tr>
				<tr>
					<td colspan="2">&nbsp;</td>
				</tr>
				<tr>
					<td colspan='2'><input name="submit" type="submit" value="Login">&nbsp;<input name="reset" type="reset" value="Reset"></td>
				</tr>
			</table>
		</form>
            </div>
	</body>
</html>