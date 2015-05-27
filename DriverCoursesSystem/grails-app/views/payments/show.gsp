
<%@ page import="com.drivercoursessystem.adminpanel.Payments" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'payments.label', default: 'Payments')}" />
		<title>Плащане</title>
	</head>
	<body>
			<div class="nav" role="navigation">
			<ul>
				<li><g:link controller="employeeLogin" action="adminredirect">Начало</g:link></li>
				<li><g:link class="list" action="index">Списък с плащания</g:link></li>
				<li><g:link class="create" action="create">Добави Плащане</g:link></li>
				<li style="float: right;"><g:link action="logout" >Изход</g:link></li>
			</ul>
		</div>
		<div id="show-payments" class="content scaffold-show" role="main">
			<h1>Плащане на</h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list payments">
			
				<g:if test="${paymentsInstance?.student}">
				<li class="fieldcontain">
					<span id="student-label" class="property-label">Студент</span>
					
						<span class="property-value" aria-labelledby="student-label"><g:link controller="students" action="show" id="${paymentsInstance?.student?.id}">${paymentsInstance?.student?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${paymentsInstance?.paidSum}">
				<li class="fieldcontain">
					<span id="paidSum-label" class="property-label">Платена сума</span>
					
						<span class="property-value" aria-labelledby="paidSum-label"><g:fieldValue bean="${paymentsInstance}" field="paidSum"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${paymentsInstance?.restOfSum}">
				<li class="fieldcontain">
					<span id="restOfSum-label" class="property-label">Остатък за плащане</span>
					
						<span class="property-value" aria-labelledby="restOfSum-label"><g:fieldValue bean="${paymentsInstance}" field="restOfSum"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${paymentsInstance?.numberOfExtraDrivingHours}">
				<li class="fieldcontain">
					<span id="numberOfExtraDrivingHours-label" class="property-label">Брой допълни часове по кормуване</span>
					
						<span class="property-value" aria-labelledby="numberOfExtraDrivingHours-label"><g:fieldValue bean="${paymentsInstance}" field="numberOfExtraDrivingHours"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${paymentsInstance?.paidExtraDrivingHours}">
				<li class="fieldcontain">
					<span id="paidExtraDrivingHours-label" class="property-label">Платена сума за  допълнителни <часове></часове> по кормуване</span>
					
						<span class="property-value" aria-labelledby="paidExtraDrivingHours-label"><g:fieldValue bean="${paymentsInstance}" field="paidExtraDrivingHours"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${paymentsInstance?.course}">
				<li class="fieldcontain">
					<span id="course-label" class="property-label">Курс категория - </span>
					
						<span class="property-value" aria-labelledby="course-label"><g:link controller="course" action="show" id="${paymentsInstance?.course?.id}">${paymentsInstance?.course?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:paymentsInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${paymentsInstance}">Редактирай</g:link>
					<g:actionSubmit class="delete" action="delete" value="Изтрий" onclick="confirm('Сигурени ли сте?')" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
