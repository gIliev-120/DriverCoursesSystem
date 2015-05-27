<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
<meta name="layout" content="main"/>
<title>Вход</title>
	<style>

	.login_form {
		padding-left:  40%;
		padding-right: 40%; }
		.login_form>.submitButton{
			margin-left: 35%;
			margin-right: 35%;
		}
	</style>
</head>
<body>
  <div class="body">
	  <g:if test="${flash.message}">
		  <div class="message" style="display: block">
			  <p>${flash.message}</p>
		  </div>
	  </g:if>
 	<g:form action="authenticate">
	<div class="login_form">
		<div class="username">
		<label for="username">
				<span>Потребителско име</span><span class="required-indicator">*</span>
				<input type="text" name="username"/>
		</label>
		</div>

		<div class="password">
  		<label for="password">
			<span>Парола</span><span class="required-indicator">*</span>
			<input type="password" name="password"/>
  		</label>
		</div>
		<div class="submitButton">
		<label>&nbsp;</label><input type="submit" value="Login"/>
		</div>
	</div>
	</g:form>
  </div>
</body>
</html>