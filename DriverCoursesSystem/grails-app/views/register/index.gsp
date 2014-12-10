
<%@ page import="com.drivercoursessystem.userpanel.Register" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'register.label', default: 'Register')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-register" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-register" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="username" title="${message(code: 'register.username.label', default: 'Username')}" />
					
						<g:sortableColumn property="password" title="${message(code: 'register.password.label', default: 'Password')}" />
					
						<g:sortableColumn property="email" title="${message(code: 'register.email.label', default: 'Email')}" />
					
						<g:sortableColumn property="mobilePhone" title="${message(code: 'register.mobilePhone.label', default: 'Mobile Phone')}" />
					
						<g:sortableColumn property="course" title="${message(code: 'register.course.label', default: 'Course')}" />
					
						<g:sortableColumn property="gender" title="${message(code: 'register.gender.label', default: 'Gender')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${registerInstanceList}" status="i" var="registerInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${registerInstance.id}">${fieldValue(bean: registerInstance, field: "username")}</g:link></td>
					
						<td>${fieldValue(bean: registerInstance, field: "password")}</td>
					
						<td>${fieldValue(bean: registerInstance, field: "email")}</td>
					
						<td>${fieldValue(bean: registerInstance, field: "mobilePhone")}</td>
					
						<td>${fieldValue(bean: registerInstance, field: "course")}</td>
					
						<td>${fieldValue(bean: registerInstance, field: "gender")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${registerInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
