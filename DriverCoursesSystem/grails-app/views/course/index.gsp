
<%@ page import="com.drivercoursessystem.adminpanel.Course" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'course.label', default: 'Course')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-course" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><g:link controller="employeeLogin" action="adminredirect">Начало</g:link></li>
				<li><g:link class="create" action="create">Създай курс</g:link></li>
				<li style="float: right"><g:link controller="EmployeeLogin" action="logout">Изход</g:link></li>
			</ul>
		</div>
		<div id="list-course" class="content scaffold-list" role="main">
			<h1>Списък на курсовете</h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="category" title="${message(code: 'course.category.label', default: 'Категория')}" />

						<g:sortableColumn property="startCourse" title="${message(code: 'course.startCourse.label', default: 'Начало на курса')}" />

						<g:sortableColumn property="endCourse" title="${message(code: 'course.endCourse.label', default: 'Край на курса')}" />
					
						<th><g:message code="course.drivingTeacher.label" default="Инстуктор по кормуване" /></th>
					
						<g:sortableColumn property="price" title="${message(code: 'course.price.label', default: 'цена')}" />
					

					
						<th><g:message code="course.theoryTeacher.label" default="Инструктор по теория" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${courseInstanceList}" status="i" var="courseInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${courseInstance.id}">${fieldValue(bean: courseInstance, field: "category")}</g:link></td>

						<td><g:formatDate format="dd-MM-yyyy" date="${courseInstance.startCourse}" /></td>
						<td><g:formatDate format="dd-MM-yyyy" date="${courseInstance.endCourse}" /></td>
					
						<td>${fieldValue(bean: courseInstance, field: "drivingTeacher")}</td>
					
						<td>${fieldValue(bean: courseInstance, field: "price")}</td>
					

					
						<td>${fieldValue(bean: courseInstance, field: "theoryTeacher")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${courseInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
