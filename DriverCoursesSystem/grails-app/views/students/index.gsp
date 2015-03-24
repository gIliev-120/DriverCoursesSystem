
<%@ page import="com.drivercoursessystem.adminpanel.Students" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'students.label', default: 'Students')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-students" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}">Начало</a></li>
				<li><g:link class="create" action="create">Запиши Курсист</g:link></li>
			</ul>
		</div>
		<div id="list-students" class="content scaffold-list" role="main">
			<h1>Списък Курсити</h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="firstName" title="${message(code: 'students.firstName.label', default: 'Име')}" />
					
						<g:sortableColumn property="lastName" title="${message(code: 'students.lastName.label', default: 'Фамилия')}" />
					
						<th><g:message code="students.courses.label" default="Курс" /></th>

						<g:sortableColumn property="email" title="${message(code: 'students.email.label', default: 'Email')}" />
					
						<g:sortableColumn property="mobilePhone" title="${message(code: 'students.mobilePhone.label', default: 'Мобилен тел.')}" />

						<g:sortableColumn property="paidSum" title="${message(code: 'students.paidSum.label', default: 'Платена Сума')}" />

						<g:sortableColumn property="restOfSum" title="${message(code: 'students.restOfSum.label', default: 'Остатък за плащане')}" />
					

					
					</tr>
				</thead>
				<tbody>
				<g:each in="${studentsInstanceList}" status="i" var="studentsInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${studentsInstance.id}">${fieldValue(bean: studentsInstance, field: "firstName")}</g:link></td>
					
						<td>${fieldValue(bean: studentsInstance, field: "lastName")}</td>

						<td>${fieldValue(bean: studentsInstance, field: "courses")}</td>

						<td>${fieldValue(bean: studentsInstance, field: "email")}</td>
					
						<td>${fieldValue(bean: studentsInstance, field: "mobilePhone")}</td>

						<td>${fieldValue(bean: studentsInstance, field: "paidSum")}</td>

						<td>${fieldValue(bean: studentsInstance, field: "restOfSum")}</td>
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${studentsInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
