
<%@ page import="com.drivercoursessystem.adminpanel.Students" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'students.label', default: 'Students')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-students" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-students" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list students">
			
				<g:if test="${studentsInstance?.firstName}">
				<li class="fieldcontain">
					<span id="firstName-label" class="property-label"><g:message code="students.firstName.label" default="First Name" /></span>
					
						<span class="property-value" aria-labelledby="firstName-label"><g:fieldValue bean="${studentsInstance}" field="firstName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${studentsInstance?.lastName}">
				<li class="fieldcontain">
					<span id="lastName-label" class="property-label"><g:message code="students.lastName.label" default="Last Name" /></span>
					
						<span class="property-value" aria-labelledby="lastName-label"><g:fieldValue bean="${studentsInstance}" field="lastName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${studentsInstance?.years}">
				<li class="fieldcontain">
					<span id="years-label" class="property-label"><g:message code="students.years.label" default="Years" /></span>
					
						<span class="property-value" aria-labelledby="years-label"><g:fieldValue bean="${studentsInstance}" field="years"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${studentsInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="students.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${studentsInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${studentsInstance?.mobilePhone}">
				<li class="fieldcontain">
					<span id="mobilePhone-label" class="property-label"><g:message code="students.mobilePhone.label" default="Mobile Phone" /></span>
					
						<span class="property-value" aria-labelledby="mobilePhone-label"><g:fieldValue bean="${studentsInstance}" field="mobilePhone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${studentsInstance?.courses}">
				<li class="fieldcontain">
					<span id="courses-label" class="property-label"><g:message code="students.courses.label" default="Courses" /></span>
					
						<span class="property-value" aria-labelledby="courses-label"><g:link controller="course" action="show" id="${studentsInstance?.courses?.id}">${studentsInstance?.courses?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${studentsInstance?.numberOfPaidExtraDrivingHours}">
				<li class="fieldcontain">
					<span id="numberOfPaidExtraDrivingHours-label" class="property-label"><g:message code="students.numberOfPaidExtraDrivingHours.label" default="Number Of Paid Extra Driving Hours" /></span>
					
						<span class="property-value" aria-labelledby="numberOfPaidExtraDrivingHours-label"><g:fieldValue bean="${studentsInstance}" field="numberOfPaidExtraDrivingHours"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${studentsInstance?.paidExtraDrivingHoursSum}">
				<li class="fieldcontain">
					<span id="paidExtraDrivingHoursSum-label" class="property-label"><g:message code="students.paidExtraDrivingHoursSum.label" default="Paid Extra Driving Hours Sum" /></span>
					
						<span class="property-value" aria-labelledby="paidExtraDrivingHoursSum-label"><g:fieldValue bean="${studentsInstance}" field="paidExtraDrivingHoursSum"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${studentsInstance?.paidSum}">
				<li class="fieldcontain">
					<span id="paidSum-label" class="property-label"><g:message code="students.paidSum.label" default="Paid Sum" /></span>
					
						<span class="property-value" aria-labelledby="paidSum-label"><g:fieldValue bean="${studentsInstance}" field="paidSum"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${studentsInstance?.restOfSum}">
				<li class="fieldcontain">
					<span id="restOfSum-label" class="property-label"><g:message code="students.restOfSum.label" default="Rest Of Sum" /></span>
					
						<span class="property-value" aria-labelledby="restOfSum-label"><g:fieldValue bean="${studentsInstance}" field="restOfSum"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:studentsInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${studentsInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
