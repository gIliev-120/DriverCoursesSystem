
<%@ page import="drivercoursessystem.DrivingSchedules" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'drivingSchedules.label', default: 'DrivingSchedules')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-drivingSchedules" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-drivingSchedules" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="calendarDate" title="${message(code: 'drivingSchedules.calendarDate.label', default: 'Calendar Date')}" />
					
						<th><g:message code="drivingSchedules.hours.label" default="Hours" /></th>
					
						<th><g:message code="drivingSchedules.student.label" default="Student" /></th>
					
						<th><g:message code="drivingSchedules.teachers.label" default="Teachers" /></th>
					
						<th><g:message code="drivingSchedules.weekDay.label" default="Week Day" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${drivingSchedulesInstanceList}" status="i" var="drivingSchedulesInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${drivingSchedulesInstance.id}">${fieldValue(bean: drivingSchedulesInstance, field: "calendarDate")}</g:link></td>
					
						<td>${fieldValue(bean: drivingSchedulesInstance, field: "hours")}</td>
					
						<td>${fieldValue(bean: drivingSchedulesInstance, field: "student")}</td>
					
						<td>${fieldValue(bean: drivingSchedulesInstance, field: "teachers")}</td>
					
						<td>${fieldValue(bean: drivingSchedulesInstance, field: "weekDay")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${drivingSchedulesInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
