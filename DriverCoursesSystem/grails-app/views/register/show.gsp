
<%@ page import="com.drivercoursessystem.userpanel.Register" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'register.label', default: 'Register')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-register" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-register" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list register">
			
				<g:if test="${registerInstance?.username}">
				<li class="fieldcontain">
					<span id="username-label" class="property-label"><g:message code="register.username.label" default="Username" /></span>
					
						<span class="property-value" aria-labelledby="username-label"><g:fieldValue bean="${registerInstance}" field="username"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${registerInstance?.password}">
				<li class="fieldcontain">
					<span id="password-label" class="property-label"><g:message code="register.password.label" default="Password" /></span>
					
						<span class="property-value" aria-labelledby="password-label"><g:fieldValue bean="${registerInstance}" field="password"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${registerInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="register.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${registerInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${registerInstance?.mobilePhone}">
				<li class="fieldcontain">
					<span id="mobilePhone-label" class="property-label"><g:message code="register.mobilePhone.label" default="Mobile Phone" /></span>
					
						<span class="property-value" aria-labelledby="mobilePhone-label"><g:fieldValue bean="${registerInstance}" field="mobilePhone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${registerInstance?.course}">
				<li class="fieldcontain">
					<span id="course-label" class="property-label"><g:message code="register.course.label" default="Course" /></span>
					
						<span class="property-value" aria-labelledby="course-label"><g:fieldValue bean="${registerInstance}" field="course"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${registerInstance?.gender}">
				<li class="fieldcontain">
					<span id="gender-label" class="property-label"><g:message code="register.gender.label" default="Gender" /></span>
					
						<span class="property-value" aria-labelledby="gender-label"><g:fieldValue bean="${registerInstance}" field="gender"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${registerInstance?.firstName}">
				<li class="fieldcontain">
					<span id="firstName-label" class="property-label"><g:message code="register.firstName.label" default="First Name" /></span>
					
						<span class="property-value" aria-labelledby="firstName-label"><g:fieldValue bean="${registerInstance}" field="firstName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${registerInstance?.lastName}">
				<li class="fieldcontain">
					<span id="lastName-label" class="property-label"><g:message code="register.lastName.label" default="Last Name" /></span>
					
						<span class="property-value" aria-labelledby="lastName-label"><g:fieldValue bean="${registerInstance}" field="lastName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${registerInstance?.middleName}">
				<li class="fieldcontain">
					<span id="middleName-label" class="property-label"><g:message code="register.middleName.label" default="Middle Name" /></span>
					
						<span class="property-value" aria-labelledby="middleName-label"><g:fieldValue bean="${registerInstance}" field="middleName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${registerInstance?.years}">
				<li class="fieldcontain">
					<span id="years-label" class="property-label"><g:message code="register.years.label" default="Years" /></span>
					
						<span class="property-value" aria-labelledby="years-label"><g:fieldValue bean="${registerInstance}" field="years"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:registerInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${registerInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
