
<%@ page import="com.drivercoursessystem.adminpanel.Teacher" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'teacher.label', default: 'Teacher')}" />
		<title>Покажи Учител</title>
	</head>
	<body>
		<a href="#show-teacher" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<ul>
					<li><g:link controller="employeeLogin" action="adminredirect">Начало</g:link></li>
					<li><g:link class="create" action="create">Добави Инструктор</g:link></li>
					<li><g:link class="list" action="index">Списък с Инстурктори</g:link></li>
					<li style="float: right"><g:link controller="EmployeeLogin" action="logout">Изход</g:link></li>
				</ul>

			</ul>
		</div>
		<div id="show-teacher" class="content scaffold-show" role="main">
			<h1>Покажи Учител</h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list teacher">
			
				<g:if test="${teacherInstance?.car}">
				<li class="fieldcontain">
					<span id="car-label" class="property-label">Кола(Модел & Рег. номер)</span>
					
						<span class="property-value" aria-labelledby="car-label"><g:link controller="cars" action="show" id="${teacherInstance?.car?.id}">${teacherInstance?.car?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${teacherInstance?.firstName}">
				<li class="fieldcontain">
					<span id="firstName-label" class="property-label"><g:message code="teacher.firstName.label" default="Име" /></span>
					
						<span class="property-value" aria-labelledby="firstName-label"><g:fieldValue bean="${teacherInstance}" field="firstName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${teacherInstance?.lastName}">
				<li class="fieldcontain">
					<span id="lastName-label" class="property-label"><g:message code="teacher.lastName.label" default="Фамилия" /></span>
					
						<span class="property-value" aria-labelledby="lastName-label"><g:fieldValue bean="${teacherInstance}" field="lastName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${teacherInstance?.subject}">
				<li class="fieldcontain">
					<span id="subject-label" class="property-label"><g:message code="teacher.subject.label" default="Предмет" /></span>
					
						<span class="property-value" aria-labelledby="subject-label"><g:fieldValue bean="${teacherInstance}" field="subject"/></span>
					
				</li>
				</g:if>
			

			
			</ol>
			<g:form url="[resource:teacherInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${teacherInstance}">Обнови</g:link>
					<g:actionSubmit class="delete" action="delete" value="Изтрий" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
