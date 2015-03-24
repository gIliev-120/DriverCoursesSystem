
<%@ page import="com.drivercoursessystem.adminpanel.Employee" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'employee.label', default: 'Employee')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-employee" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
		<ul>
			<li><a class="home" href="${createLink(uri: '/')}">Начало</a></li>
			<li><g:link class="create" action="create">Регистирай служител</g:link></li>
		</ul>
	</div>
		<div id="list-employee" class="content scaffold-list" role="main">
			<h1>Списък на служителите</h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="username" title="${message(code: 'employee.username.label', default: 'Потребителско име')}" />
					
						<g:sortableColumn property="password" title="${message(code: 'employee.password.label', default: 'Парола')}" />
					
						<g:sortableColumn property="role" title="${message(code: 'employee.role.label', default: 'Длъжност')}" />
					
						<th><g:message code="employee.teacher.label" default="Учител" /></th>
					
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
