
<%@ page import="com.drivercoursessystem.adminpanel.Employee" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'employee.label', default: 'Employee')}" />
		<title>Списък служители</title>
	</head>
	<body>
		<a href="#list-employee" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><g:link controller="employeeLogin" action="adminredirect">Начало</g:link></li>
				<li><g:link class="create" action="create">Нов Служител</g:link></li>
				<li style="float: right"><g:link controller="EmployeeLogin" action="logout">Изход</g:link></li>
			</ul>
		</div>
		<div id="list-employee" class="content scaffold-list" role="main">
			<h1>Списък служители</h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="username" title="${message(code: 'employee.username.label', default: 'Потребителско име')}" />

						<g:sortableColumn property="password" title="${message(code: 'employee.password.label', default: 'Парола')}" />

						<g:sortableColumn property="role" title="${message(code: 'employee.role.label', default: 'Роля')}" />
					
						<th><g:message code="employee.teacher.label" default="Инструктор" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${employeeInstanceList}" status="i" var="employeeInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${employeeInstance.id}">${fieldValue(bean: employeeInstance, field: "username")}</g:link></td>
					
						<td>${fieldValue(bean: employeeInstance, field: "password")}</td>
					
						<td>${fieldValue(bean: employeeInstance, field: "role")}</td>
					
						<td>${fieldValue(bean: employeeInstance, field: "teacher")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${employeeInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
