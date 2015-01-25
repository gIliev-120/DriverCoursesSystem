<%@ page import="com.drivercoursessystem.adminpanel.Students" %>



<div class="fieldcontain ${hasErrors(bean: studentsInstance, field: 'firstName', 'error')} required">
	<label for="firstName">
		<g:message code="students.firstName.label" default="First Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="firstName" required="" value="${studentsInstance?.firstName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: studentsInstance, field: 'lastName', 'error')} required">
	<label for="lastName">
		<g:message code="students.lastName.label" default="Last Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="lastName" required="" value="${studentsInstance?.lastName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: studentsInstance, field: 'years', 'error')} required">
	<label for="years">
		<g:message code="students.years.label" default="Years" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="years" from="${17..60}" class="range" required="" value="${fieldValue(bean: studentsInstance, field: 'years')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: studentsInstance, field: 'gender', 'error')} required">
	<label for="gender">
		<g:message code="students.gender.label" default="Gender" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="gender" from="${studentsInstance.constraints.gender.inList}" required="" value="${studentsInstance?.gender}" valueMessagePrefix="students.gender"/>

</div>

<div class="fieldcontain ${hasErrors(bean: studentsInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="students.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="email" required="" value="${studentsInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: studentsInstance, field: 'mobilePhone', 'error')} required">
	<label for="mobilePhone">
		<g:message code="students.mobilePhone.label" default="Mobile Phone" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="mobilePhone" maxlength="13" required="" value="${studentsInstance?.mobilePhone}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: studentsInstance, field: 'course', 'error')} required">
	<label for="course">
		<g:message code="students.course.label" default="Course" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="course" required="" value="${studentsInstance?.course}"/>

</div>

