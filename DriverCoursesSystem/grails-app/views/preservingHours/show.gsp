
<%@ page import="drivercoursessystem.PreservingHours" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'preservingHours.label', default: 'PreservingHours')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-preservingHours" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-preservingHours" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list preservingHours">
			
				<g:if test="${preservingHoursInstance?.drivinghours}">
				<li class="fieldcontain">
					<span id="drivinghours-label" class="property-label"><g:message code="preservingHours.drivinghours.label" default="Drivinghours" /></span>
					
						<span class="property-value" aria-labelledby="drivinghours-label"><g:fieldValue bean="${preservingHoursInstance}" field="drivinghours"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${preservingHoursInstance?.drivingdate}">
				<li class="fieldcontain">
					<span id="drivingdate-label" class="property-label"><g:message code="preservingHours.drivingdate.label" default="Drivingdate" /></span>
					
						<span class="property-value" aria-labelledby="drivingdate-label"><g:formatDate date="${preservingHoursInstance?.drivingdate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${preservingHoursInstance?.student}">
				<li class="fieldcontain">
					<span id="student-label" class="property-label"><g:message code="preservingHours.student.label" default="Student" /></span>
					
						<span class="property-value" aria-labelledby="student-label"><g:link controller="students" action="show" id="${preservingHoursInstance?.student?.id}">${preservingHoursInstance?.student?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:preservingHoursInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${preservingHoursInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
