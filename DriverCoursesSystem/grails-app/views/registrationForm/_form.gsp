<%@ page import="com.drivercoursessystem.userpanel.RegistrationForm" %>



<div class="fieldcontain ${hasErrors(bean: registrationFormInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="registrationForm.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="username" maxlength="20" required="" value="${registrationFormInstance?.username}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: registrationFormInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="registrationForm.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="password" maxlength="8" required="" value="${registrationFormInstance?.password}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: registrationFormInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="registrationForm.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="email" required="" value="${registrationFormInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: registrationFormInstance, field: 'firstName', 'error')} required">
	<label for="firstName">
		<g:message code="registrationForm.firstName.label" default="First Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="firstName" required="" value="${registrationFormInstance?.firstName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: registrationFormInstance, field: 'lastName', 'error')} required">
	<label for="lastName">
		<g:message code="registrationForm.lastName.label" default="Last Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="lastName" required="" value="${registrationFormInstance?.lastName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: registrationFormInstance, field: 'gender', 'error')} required">
	<label for="gender">
		<g:message code="registrationForm.gender.label" default="Gender" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="gender" from="${registrationFormInstance.constraints.gender.inList}" required="" value="${registrationFormInstance?.gender}" valueMessagePrefix="registrationForm.gender"/>

</div>

<div class="fieldcontain ${hasErrors(bean: registrationFormInstance, field: 'years', 'error')} required">
	<label for="years">
		<g:message code="registrationForm.years.label" default="Years" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="years" from="${17..60}" class="range" required="" value="${fieldValue(bean: registrationFormInstance, field: 'years')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: registrationFormInstance, field: 'mobilePhone', 'error')} required">
	<label for="mobilePhone">
		<g:message code="registrationForm.mobilePhone.label" default="Mobile Phone" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="mobilePhone" maxlength="13" required="" value="${registrationFormInstance?.mobilePhone}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: registrationFormInstance, field: 'course', 'error')} required">
	<label for="course">
		<g:message code="registrationForm.course.label" default="Course" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="course" name="course.id" from="${com.drivercoursessystem.adminpanel.Course.list()}" optionKey="id" required="" value="${registrationFormInstance?.course?.id}" class="many-to-one"/>

</div>


