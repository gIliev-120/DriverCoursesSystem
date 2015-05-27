
<%@ page import="com.drivercoursessystem.adminpanel.Employee" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'employee.label', default: 'Employee')}" />
		<title>Покажи Служител</title>
	</head>
	<body>
		<a href="#show-employee" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><g:link controller="employeeLogin" action="adminredirect">Начало</g:link></li>
				<li><g:link class="create" action="create">Нов Служител</g:link></li>
				<li><g:link class="list" action="index">Списък с служители</g:link></li>
				<li style="float: right"><g:link controller="EmployeeLogin" action="logout">Изход</g:link></li>
			</ul>
		</div>
		<div id="show-employee" class="content scaffold-show" role="main">
			<h1>Покажи Служител</h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list employee">
			
				<g:if test="${employeeInstance?.username}">
				<li class="fieldcontain">
					<span id="username-label" class="property-label"><g:message code="employee.username.label" default="Потребителско име" /></span>
					
						<span class="property-value" aria-labelledby="username-label"><g:fieldValue bean="${employeeInstance}" field="username"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.password}">
				<li class="fieldcontain">
					<span id="password-label" class="property-label"><g:message code="employee.password.label" default="Парола" /></span>
					
						<span class="property-value" aria-labelledby="password-label"><g:fieldValue bean="${employeeInstance}" field="password"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.role}">
				<li class="fieldcontain">
					<span id="role-label" class="property-label"><g:message code="employee.role.label" default="Роля" /></span>
					
						<span class="property-value" aria-labelledby="role-label"><g:fieldValue bean="${employeeInstance}" field="role"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.teacher}">
				<li class="fieldcontain">
					<span id="teacher-label" class="property-label"><g:message code="employee.teacher.label" default="Инструктор" /></span>
					
						<span class="property-value" aria-labelledby="teacher-label"><g:link controller="teacher" action="show" id="${employeeInstance?.teacher?.id}">${employeeInstance?.teacher?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:employeeInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${employeeInstance}">Обнови</g:link>
					<g:actionSubmit class="delete" action="delete" value="Изтрий" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
