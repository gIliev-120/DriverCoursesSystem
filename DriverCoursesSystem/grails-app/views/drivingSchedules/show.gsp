
<%@ page import="drivercoursessystem.DrivingSchedules" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'drivingSchedules.label', default: 'DrivingSchedules')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-drivingSchedules" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-drivingSchedules" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list drivingSchedules">
			
				<g:if test="${drivingSchedulesInstance?.calendarDate}">
				<li class="fieldcontain">
					<span id="calendarDate-label" class="property-label"><g:message code="drivingSchedules.calendarDate.label" default="Calendar Date" /></span>
					
						<span class="property-value" aria-labelledby="calendarDate-label"><g:formatDate date="${drivingSchedulesInstance?.calendarDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${drivingSchedulesInstance?.hours}">
				<li class="fieldcontain">
					<span id="hours-label" class="property-label"><g:message code="drivingSchedules.hours.label" default="Hours" /></span>
					
						<span class="property-value" aria-labelledby="hours-label"><g:link controller="drivingHours" action="show" id="${drivingSchedulesInstance?.hours?.id}">${drivingSchedulesInstance?.hours?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${drivingSchedulesInstance?.student}">
				<li class="fieldcontain">
					<span id="student-label" class="property-label"><g:message code="drivingSchedules.student.label" default="Student" /></span>
					
						<span class="property-value" aria-labelledby="student-label"><g:link controller="students" action="show" id="${drivingSchedulesInstance?.student?.id}">${drivingSchedulesInstance?.student?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${drivingSchedulesInstance?.teachers}">
				<li class="fieldcontain">
					<span id="teachers-label" class="property-label"><g:message code="drivingSchedules.teachers.label" default="Teachers" /></span>
					
						<span class="property-value" aria-labelledby="teachers-label"><g:link controller="teacher" action="show" id="${drivingSchedulesInstance?.teachers?.id}">${drivingSchedulesInstance?.teachers?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${drivingSchedulesInstance?.weekDay}">
				<li class="fieldcontain">
					<span id="weekDay-label" class="property-label"><g:message code="drivingSchedules.weekDay.label" default="Week Day" /></span>
					
						<span class="property-value" aria-labelledby="weekDay-label"><g:link controller="weekDays" action="show" id="${drivingSchedulesInstance?.weekDay?.id}">${drivingSchedulesInstance?.weekDay?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:drivingSchedulesInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${drivingSchedulesInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
