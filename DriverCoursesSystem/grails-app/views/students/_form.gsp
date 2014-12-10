<%@ page import="com.drivercoursessystem.adminpanel.Students" %>



<div class="fieldcontain ${hasErrors(bean: studentsInstance, field: 'firstName', 'error')} required">
	<label for="firstName">
		<g:message code="students.firstName.label" default="First Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="firstName" required="" value="${studentsInstance?.firstName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: studentsInstance, field: 'middleName', 'error')} required">
	<label for="middleName">
		<g:message code="students.middleName.label" default="Middle Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="middleName" required="" value="${studentsInstance?.middleName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: studentsInstance, field: 'lastName', 'error')} required">
	<label for="lastName">
		<g:message code="students.lastName.label" default="Last Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="lastName" required="" value="${studentsInstance?.lastName}"/>

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

<div class="fieldcontain ${hasErrors(bean: studentsInstance, field: 'homePhone', 'error')} required">
	<label for="homePhone">
		<g:message code="students.homePhone.label" default="Home Phone" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="homePhone" maxlength="12" required="" value="${studentsInstance?.homePhone}"/>

</div>

