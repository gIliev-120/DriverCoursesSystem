
<%@ page import="com.drivercoursessystem.adminpanel.Payments" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'payments.label', default: 'Payments')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-payments" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}">Начало</a></li>
				<li><g:link class="create" action="create">Добави Плащане</g:link></li>
			</ul>
		</div>
		<div id="list-payments" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="payments.student.label" default="Студент" /></th>
					
						<g:sortableColumn property="paidSum" title="${message(code: 'payments.paidSum.label', default: 'Платена сума')}" />
					
						<g:sortableColumn property="restOfSum" title="${message(code: 'payments.restOfSum.label', default: 'Остатък за плащане')}" />
					
						<g:sortableColumn property="numberOfExtraDrivingHours" title="${message(code: 'payments.numberOfExtraDrivingHours.label', default: 'Брой допълнителни часове ')}" />
					
						<g:sortableColumn property="paidExtraDrivingHours" title="${message(code: 'payments.paidExtraDrivingHours.label', default: 'Платени допълнителни часове')}" />
					
						%{--<th><g:message code="payments.course.label" default="Course" /></th>--}%
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${paymentsInstanceList}" status="i" var="paymentsInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${paymentsInstance.id}">${fieldValue(bean: paymentsInstance, field: "student")}</g:link></td>
					
						<td>${fieldValue(bean: paymentsInstance, field: "paidSum")}</td>
					
						<td>${fieldValue(bean: paymentsInstance, field: "restOfSum")}</td>
					
						<td>${fieldValue(bean: paymentsInstance, field: "numberOfExtraDrivingHours")}</td>
					
						<td>${fieldValue(bean: paymentsInstance, field: "paidExtraDrivingHours")}</td>
					
						%{--<td>${fieldValue(bean: paymentsInstance, field: "course")}</td>--}%
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${paymentsInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
