<%@ page import="com.drivercoursessystem.adminpanel.Teacher" %>



<div class="fieldcontain ${hasErrors(bean: teacherInstance, field: 'car', 'error')} ">
	<label for="car">
		<g:message code="teacher.car.label" default="Car" />
		
	</label>
	<g:select id="car" name="car.id" from="${com.drivercoursessystem.adminpanel.Cars.list()}" optionKey="id" value="${teacherInstance?.car?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: teacherInstance, field: 'firstName', 'error')} required">
	<label for="firstName">
		<g:message code="teacher.firstName.label" default="First Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="firstName" required="" value="${teacherInstance?.firstName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: teacherInstance, field: 'lastName', 'error')} required">
	<label for="lastName">
		<g:message code="teacher.lastName.label" default="Last Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="lastName" required="" value="${teacherInstance?.lastName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: teacherInstance, field: 'subject', 'error')} required">
	<label for="subject">
		<g:message code="teacher.subject.label" default="Subject" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="subject" from="${teacherInstance.constraints.subject.inList}" required="" value="${teacherInstance?.subject}" valueMessagePrefix="teacher.subject"/>

</div>

