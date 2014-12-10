
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
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-course" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="category" title="${message(code: 'course.category.label', default: 'Category')}" />
					
						<g:sortableColumn property="endCourse" title="${message(code: 'course.endCourse.label', default: 'End Course')}" />
					
						<g:sortableColumn property="startCourse" title="${message(code: 'course.startCourse.label', default: 'Start Course')}" />
					
						<th><g:message code="course.teacher.label" default="Teacher" /></th>
					
						<g:sortableColumn property="uniqueNumebr" title="${message(code: 'course.uniqueNumebr.label', default: 'Unique Numebr')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${courseInstanceList}" status="i" var="courseInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${courseInstance.id}">${fieldValue(bean: courseInstance, field: "category")}</g:link></td>
					
						<td><g:formatDate date="${courseInstance.endCourse}" /></td>
					
						<td><g:formatDate date="${courseInstance.startCourse}" /></td>
					
						<td>${fieldValue(bean: courseInstance, field: "teacher")}</td>
					
						<td>${fieldValue(bean: courseInstance, field: "uniqueNumebr")}</td>
					
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
