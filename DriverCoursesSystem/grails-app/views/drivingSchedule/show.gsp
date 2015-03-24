
<%@ page import="drivercoursessystem.DrivingSchedule" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'drivingSchedule.label', default: 'DrivingSchedule')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-drivingSchedule" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-drivingSchedule" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list drivingSchedule">
			
				<g:if test="${drivingScheduleInstance?.calendarDate}">
				<li class="fieldcontain">
					<span id="calendarDate-label" class="property-label"><g:message code="drivingSchedule.calendarDate.label" default="Calendar Date" /></span>
					
						<span class="property-value" aria-labelledby="calendarDate-label"><g:formatDate date="${drivingScheduleInstance?.calendarDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${drivingScheduleInstance?.hours}">
				<li class="fieldcontain">
					<span id="hours-label" class="property-label"><g:message code="drivingSchedule.hours.label" default="Hours" /></span>
					
						<span class="property-value" aria-labelledby="hours-label"><g:link controller="drivingHours" action="show" id="${drivingScheduleInstance?.hours?.id}">${drivingScheduleInstance?.hours?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${drivingScheduleInstance?.student}">
				<li class="fieldcontain">
					<span id="student-label" class="property-label"><g:message code="drivingSchedule.student.label" default="Student" /></span>
					
						<span class="property-value" aria-labelledby="student-label"><g:link controller="students" action="show" id="${drivingScheduleInstance?.student?.id}">${drivingScheduleInstance?.student?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${drivingScheduleInstance?.teachers}">
				<li class="fieldcontain">
					<span id="teachers-label" class="property-label"><g:message code="drivingSchedule.teachers.label" default="Teachers" /></span>
					
						<span class="property-value" aria-labelledby="teachers-label"><g:link controller="teacher" action="show" id="${drivingScheduleInstance?.teachers?.id}">${drivingScheduleInstance?.teachers?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${drivingScheduleInstance?.weekDay}">
				<li class="fieldcontain">
					<span id="weekDay-label" class="property-label"><g:message code="drivingSchedule.weekDay.label" default="Week Day" /></span>
					
						<span class="property-value" aria-labelledby="weekDay-label"><g:link controller="weekDays" action="show" id="${drivingScheduleInstance?.weekDay?.id}">${drivingScheduleInstance?.weekDay?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:drivingScheduleInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${drivingScheduleInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
