<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'students.label', default: 'Students')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
		%{--<g:javascript src="pricecsCalculation.js"/>--}%
	</head>
	<body>
		<a href="#create-students" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><g:link controller="employeeLogin" action="adminredirect">Начало</g:link></li>
				<li><g:link class="list" action="index">Списък на курсистите</g:link></li>
				<li style="float: right"><g:link controller="EmployeeLogin" action="logout">Изход</g:link></li>
			</ul>
		</div>
		<div id="create-students" class="content scaffold-create" role="main">
			<h1>Създай курсист</h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${studentsInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${studentsInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form url="[resource:studentsInstance, action:'save']" >
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
					<g:submitButton name="create" class="save" value="Създай" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
