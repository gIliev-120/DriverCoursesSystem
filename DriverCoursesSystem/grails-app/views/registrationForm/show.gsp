
<%@ page import="com.drivercoursessystem.userpanel.RegistrationForm" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'registrationForm.label', default: 'RegistrationForm')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-registrationForm" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-registrationForm" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list registrationForm">
			

			
				<g:if test="${registrationFormInstance?.password}">
				<li class="fieldcontain">
					<span id="password-label" class="property-label"><g:message code="registrationForm.password.label" default="Password" /></span>
					
						<span class="property-value" aria-labelledby="password-label"><g:fieldValue bean="${registrationFormInstance}" field="password"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${registrationFormInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="registrationForm.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${registrationFormInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${registrationFormInstance?.firstName}">
				<li class="fieldcontain">
					<span id="firstName-label" class="property-label"><g:message code="registrationForm.firstName.label" default="First Name" /></span>
					
						<span class="property-value" aria-labelledby="firstName-label"><g:fieldValue bean="${registrationFormInstance}" field="firstName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${registrationFormInstance?.lastName}">
				<li class="fieldcontain">
					<span id="lastName-label" class="property-label"><g:message code="registrationForm.lastName.label" default="Last Name" /></span>
					
						<span class="property-value" aria-labelledby="lastName-label"><g:fieldValue bean="${registrationFormInstance}" field="lastName"/></span>
					
				</li>
				</g:if>

			
				<g:if test="${registrationFormInstance?.years}">
				<li class="fieldcontain">
					<span id="years-label" class="property-label"><g:message code="registrationForm.years.label" default="Years" /></span>
					
						<span class="property-value" aria-labelledby="years-label"><g:fieldValue bean="${registrationFormInstance}" field="years"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${registrationFormInstance?.mobilePhone}">
				<li class="fieldcontain">
					<span id="mobilePhone-label" class="property-label"><g:message code="registrationForm.mobilePhone.label" default="Mobile Phone" /></span>
					
						<span class="property-value" aria-labelledby="mobilePhone-label"><g:fieldValue bean="${registrationFormInstance}" field="mobilePhone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${registrationFormInstance?.course}">
				<li class="fieldcontain">
					<span id="course-label" class="property-label"><g:message code="registrationForm.course.label" default="Course" /></span>
					
						<span class="property-value" aria-labelledby="course-label"><g:link controller="course" action="show" id="${registrationFormInstance?.course?.id}">${registrationFormInstance?.course?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:registrationFormInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${registrationFormInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
