<%@ page import="com.drivercoursessystem.adminpanel.Payments" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'payments.label', default: 'Payments')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#edit-payments" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><g:link controller="employeeLogin" action="adminredirect">Начало</g:link></li>
				<li><g:link class="list" action="index">Списък с плащания</g:link></li>
				<li><g:link class="create" action="create">Добави Плащане</g:link></li>
				<li style="float: right;"><g:link action="logout" >Изход</g:link></li>
			</ul>
		</div>
		<div id="edit-payments" class="content scaffold-edit" role="main">
			<h1>Редактирай плащане</h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${paymentsInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${paymentsInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form url="[resource:paymentsInstance, action:'update']" method="PUT" >
				<g:hiddenField name="version" value="${paymentsInstance?.version}" />
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
					<g:actionSubmit class="save" action="update" value="Обнови" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
