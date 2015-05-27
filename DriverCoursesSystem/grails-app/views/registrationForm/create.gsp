<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<title>Регистрация</title>
	</head>
	<body>
	<g:if test="${flash.message}">
		<div class="message" style="display: block">
			<p>${flash.message}</p>
		</div>
	</g:if>

		<g:form url="[resource:'RegistrationForm', action:'handleRegistration']" >
			<fieldset class="form">
				<g:render template="form"/>
			</fieldset>
			<fieldset class="buttons">
				<g:submitButton name="create" class="save" value="Регистрирай" />
			</fieldset>
		</g:form>
	</body>
</html>
