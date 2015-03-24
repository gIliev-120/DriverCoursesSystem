
<%@ page import="com.drivercoursessystem.adminpanel.Teacher" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'teacher.label', default: 'Teacher')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-teacher" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}">Начало</a></li>
				<li><g:link class="create" action="create">Добави Преподавател</g:link></li>
			</ul>
		</div>
		<div id="list-teacher" class="content scaffold-list" role="main">
			<h1>Списък с преподаватели</h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="teacher.car.label" default="Кола" /></th>
					
						<g:sortableColumn property="firstName" title="${message(code: 'teacher.firstName.label', default: 'Име')}" />
					
						<g:sortableColumn property="lastName" title="${message(code: 'teacher.lastName.label', default: 'Фамилия')}" />
					
						<g:sortableColumn property="subject" title="${message(code: 'teacher.subject.label', default: 'Дисциплина')}" />
					

					
					</tr>
				</thead>
				<tbody>
				<g:each in="${teacherInstanceList}" status="i" var="teacherInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${teacherInstance.id}">${fieldValue(bean: teacherInstance, field: "car")}</g:link></td>
					
						<td>${fieldValue(bean: teacherInstance, field: "firstName")}</td>
					
						<td>${fieldValue(bean: teacherInstance, field: "lastName")}</td>
					
						<td>${fieldValue(bean: teacherInstance, field: "subject")}</td>
					

					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${teacherInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
