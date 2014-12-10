<%@ page import="com.drivercoursessystem.userpanel.Register" %>



<div class="fieldcontain ${hasErrors(bean: registerInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="register.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="username" maxlength="20" required="" value="${registerInstance?.username}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: registerInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="register.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="password" maxlength="8" required="" value="${registerInstance?.password}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: registerInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="register.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="email" required="" value="${registerInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: registerInstance, field: 'mobilePhone', 'error')} required">
	<label for="mobilePhone">
		<g:message code="register.mobilePhone.label" default="Mobile Phone" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="mobilePhone" maxlength="13" required="" value="${registerInstance?.mobilePhone}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: registerInstance, field: 'course', 'error')} required">
	<label for="course">
		<g:message code="register.course.label" default="Course" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="course" from="${registerInstance.constraints.course.inList}" required="" value="${registerInstance?.course}" valueMessagePrefix="register.course"/>

</div>

<div class="fieldcontain ${hasErrors(bean: registerInstance, field: 'gender', 'error')} required">
	<label for="gender">
		<g:message code="register.gender.label" default="Gender" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="gender" from="${registerInstance.constraints.gender.inList}" required="" value="${registerInstance?.gender}" valueMessagePrefix="register.gender"/>

</div>

<div class="fieldcontain ${hasErrors(bean: registerInstance, field: 'firstName', 'error')} required">
	<label for="firstName">
		<g:message code="register.firstName.label" default="First Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="firstName" required="" value="${registerInstance?.firstName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: registerInstance, field: 'lastName', 'error')} required">
	<label for="lastName">
		<g:message code="register.lastName.label" default="Last Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="lastName" required="" value="${registerInstance?.lastName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: registerInstance, field: 'middleName', 'error')} required">
	<label for="middleName">
		<g:message code="register.middleName.label" default="Middle Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="middleName" required="" value="${registerInstance?.middleName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: registerInstance, field: 'years', 'error')} required">
	<label for="years">
		<g:message code="register.years.label" default="Years" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="years" required="" value="${registerInstance?.years}"/>

</div>

