<%@ page import="com.drivercoursessystem.adminpanel.Teacher" %>



<div class="fieldcontain ${hasErrors(bean: teacherInstance, field: 'firstName', 'error')} required">
	<label for="firstName">
		<g:message code="teacher.firstName.label" default="First Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="firstName" required="" value="${teacherInstance?.firstName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: teacherInstance, field: 'middleName', 'error')} required">
	<label for="middleName">
		<g:message code="teacher.middleName.label" default="Middle Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="middleName" required="" value="${teacherInstance?.middleName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: teacherInstance, field: 'lastName', 'error')} required">
	<label for="lastName">
		<g:message code="teacher.lastName.label" default="Last Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="lastName" required="" value="${teacherInstance?.lastName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: teacherInstance, field: 'cars', 'error')} ">
	<label for="cars">
		<g:message code="teacher.cars.label" default="Cars" />
		
	</label>
	<g:select name="cars" from="${com.drivercoursessystem.adminpanel.Cars.list()}" multiple="multiple" optionKey="id" size="5" value="${teacherInstance?.cars*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: teacherInstance, field: 'courses', 'error')} ">
	<label for="courses">
		<g:message code="teacher.courses.label" default="Courses" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${teacherInstance?.courses?}" var="c">
    <li><g:link controller="course" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="course" action="create" params="['teacher.id': teacherInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'course.label', default: 'Course')])}</g:link>
</li>
</ul>


</div>

