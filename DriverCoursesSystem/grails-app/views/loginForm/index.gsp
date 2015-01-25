<%@ page import="com.drivercoursessystem.userpanel.RegistrationForm" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
<meta name="layout" content="main"/>
<title>Login</title>
</head>
<body>
  <div class="body">
  	<g:form action="authenticate">
  		<label for="email"></label><input type="text" name="email"/>
  		<label for="password"></label><input type="password" name="password"/>
  		<label>&nbsp;</label><input type="submit" value="Login"/>
  		
  	</g:form>
  </div>
</body>
</html>