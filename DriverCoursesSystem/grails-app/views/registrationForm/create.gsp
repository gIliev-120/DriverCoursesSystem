<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'registrationForm.label', default: 'RegistrationForm')}" />
		<title>Регистрация</title>
	</head>
	<body>
		<a href="#create-registrationForm" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>

		<div id="create-registrationForm" class="content scaffold-create" role="main">
			<h1>Регистрирай се </h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${registrationFormInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${registrationFormInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form url="[resource:registrationFormInstance, action:'save']" >
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
					<g:submitButton name="create" class="save" value="Създай регистрация" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
