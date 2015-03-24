
<%@ page import="com.drivercoursessystem.adminpanel.Payments" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'payments.label', default: 'Payments')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-payments" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-payments" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list payments">
			
				<g:if test="${paymentsInstance?.student}">
				<li class="fieldcontain">
					<span id="student-label" class="property-label"><g:message code="payments.student.label" default="Student" /></span>
					
						<span class="property-value" aria-labelledby="student-label"><g:link controller="students" action="show" id="${paymentsInstance?.student?.id}">${paymentsInstance?.student?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${paymentsInstance?.paidSum}">
				<li class="fieldcontain">
					<span id="paidSum-label" class="property-label"><g:message code="payments.paidSum.label" default="Paid Sum" /></span>
					
						<span class="property-value" aria-labelledby="paidSum-label"><g:fieldValue bean="${paymentsInstance}" field="paidSum"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${paymentsInstance?.restOfSum}">
				<li class="fieldcontain">
					<span id="restOfSum-label" class="property-label"><g:message code="payments.restOfSum.label" default="Rest Of Sum" /></span>
					
						<span class="property-value" aria-labelledby="restOfSum-label"><g:fieldValue bean="${paymentsInstance}" field="restOfSum"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${paymentsInstance?.numberOfExtraDrivingHours}">
				<li class="fieldcontain">
					<span id="numberOfExtraDrivingHours-label" class="property-label"><g:message code="payments.numberOfExtraDrivingHours.label" default="Number Of Extra Driving Hours" /></span>
					
						<span class="property-value" aria-labelledby="numberOfExtraDrivingHours-label"><g:fieldValue bean="${paymentsInstance}" field="numberOfExtraDrivingHours"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${paymentsInstance?.paidExtraDrivingHours}">
				<li class="fieldcontain">
					<span id="paidExtraDrivingHours-label" class="property-label"><g:message code="payments.paidExtraDrivingHours.label" default="Paid Extra Driving Hours" /></span>
					
						<span class="property-value" aria-labelledby="paidExtraDrivingHours-label"><g:fieldValue bean="${paymentsInstance}" field="paidExtraDrivingHours"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${paymentsInstance?.course}">
				<li class="fieldcontain">
					<span id="course-label" class="property-label"><g:message code="payments.course.label" default="Course" /></span>
					
						<span class="property-value" aria-labelledby="course-label"><g:link controller="course" action="show" id="${paymentsInstance?.course?.id}">${paymentsInstance?.course?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:paymentsInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${paymentsInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
