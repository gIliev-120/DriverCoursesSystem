
<%@ page import="drivercoursessystem.DrivingSchedule" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'drivingSchedule.label', default: 'DrivingSchedule')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-drivingSchedule" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-drivingSchedule" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="calendarDate" title="${message(code: 'drivingSchedule.calendarDate.label', default: 'Calendar Date')}" />
					
						<th><g:message code="drivingSchedule.hours.label" default="Hours" /></th>
					
						<th><g:message code="drivingSchedule.student.label" default="Student" /></th>
					
						<th><g:message code="drivingSchedule.teachers.label" default="Teachers" /></th>
					
						<th><g:message code="drivingSchedule.weekDay.label" default="Week Day" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${drivingScheduleInstanceList}" status="i" var="drivingScheduleInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${drivingScheduleInstance.id}">${fieldValue(bean: drivingScheduleInstance, field: "calendarDate")}</g:link></td>
					
						<td>${fieldValue(bean: drivingScheduleInstance, field: "hours")}</td>
					
						<td>${fieldValue(bean: drivingScheduleInstance, field: "student")}</td>
					
						<td>${fieldValue(bean: drivingScheduleInstance, field: "teachers")}</td>
					
						<td>${fieldValue(bean: drivingScheduleInstance, field: "weekDay")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${drivingScheduleInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
