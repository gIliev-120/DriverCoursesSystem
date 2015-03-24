<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
<meta name="layout" content="main"/>
<title>Insert title here</title>
</head>
<body>
  <div class="body">
 	<g:form action="authenticate">
  		<label for="username"></label><input type="text" name="username"/>
  		<label for="password"></label><input type="password" name="password"/>
  		<label>&nbsp;</label><input type="submit" value="Login"/>
  		
  	</g:form> 
  </div>
</body>
</html>