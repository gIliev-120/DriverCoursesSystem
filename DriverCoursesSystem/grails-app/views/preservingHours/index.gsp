
<%@ page import="drivercoursessystem.PreservingHours" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'preservingHours.label', default: 'PreservingHours')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-preservingHours" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-preservingHours" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="drivinghours" title="${message(code: 'preservingHours.drivinghours.label', default: 'Drivinghours')}" />
					
						<g:sortableColumn property="drivingdate" title="${message(code: 'preservingHours.drivingdate.label', default: 'Drivingdate')}" />
					
						<th><g:message code="preservingHours.student.label" default="Student" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${preservingHoursInstanceList}" status="i" var="preservingHoursInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${preservingHoursInstance.id}">${fieldValue(bean: preservingHoursInstance, field: "drivinghours")}</g:link></td>
					
						<td><g:formatDate format="dd-MM-yyyy" date="${preservingHoursInstance.drivingdate}" /></td>
					
						<td>${fieldValue(bean: preservingHoursInstance, field: "student")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${preservingHoursInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
