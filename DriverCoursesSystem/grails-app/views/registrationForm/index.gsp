
<%@ page import="com.drivercoursessystem.userpanel.RegistrationForm" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'registrationForm.label', default: 'RegistrationForm')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-registrationForm" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-registrationForm" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="username" title="${message(code: 'registrationForm.username.label', default: 'Username')}" />
					
						<g:sortableColumn property="password" title="${message(code: 'registrationForm.password.label', default: 'Password')}" />
					
						<g:sortableColumn property="email" title="${message(code: 'registrationForm.email.label', default: 'Email')}" />
					
						<g:sortableColumn property="firstName" title="${message(code: 'registrationForm.firstName.label', default: 'First Name')}" />
					
						<g:sortableColumn property="lastName" title="${message(code: 'registrationForm.lastName.label', default: 'Last Name')}" />
					
						<g:sortableColumn property="gender" title="${message(code: 'registrationForm.gender.label', default: 'Gender')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${registrationFormInstanceList}" status="i" var="registrationFormInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${registrationFormInstance.id}">${fieldValue(bean: registrationFormInstance, field: "username")}</g:link></td>
					
						<td>${fieldValue(bean: registrationFormInstance, field: "password")}</td>
					
						<td>${fieldValue(bean: registrationFormInstance, field: "email")}</td>
					
						<td>${fieldValue(bean: registrationFormInstance, field: "firstName")}</td>
					
						<td>${fieldValue(bean: registrationFormInstance, field: "lastName")}</td>
					
						<td>${fieldValue(bean: registrationFormInstance, field: "gender")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${registrationFormInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
