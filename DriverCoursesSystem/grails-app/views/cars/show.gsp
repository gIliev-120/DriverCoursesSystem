
<%@ page import="com.drivercoursessystem.adminpanel.Cars" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'cars.label', default: 'Cars')}" />
		<title>Покажи Автомобил</title>
	</head>
	<body>
		<a href="#show-cars" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><g:link controller="employeeLogin" action="adminredirect">Начало</g:link></li>
				<li><g:link class="list" action="index">Списък с Aвтомобили </g:link></li>
				<li><g:link class="create" action="create">Добави Автомобил</g:link></li>
				<li style="float: right"><g:link controller="EmployeeLogin" action="logout">Изход</g:link></li>
			</ul>
		</div>
		<div id="show-cars" class="content scaffold-show" role="main">
			<h1>Покажи Автомобил</h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list cars">
			
				<g:if test="${carsInstance?.make}">
				<li class="fieldcontain">
					<span id="make-label" class="property-label"><g:message code="cars.make.label" default="Марка" /></span>
					
						<span class="property-value" aria-labelledby="make-label"><g:fieldValue bean="${carsInstance}" field="make"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${carsInstance?.model}">
				<li class="fieldcontain">
					<span id="model-label" class="property-label"><g:message code="cars.model.label" default="Модел	" /></span>
					
						<span class="property-value" aria-labelledby="model-label"><g:fieldValue bean="${carsInstance}" field="model"/></span>
					
				</li>
				</g:if>

				<g:if test="${carsInstance?.registrationPlate}">
					<li class="fieldcontain">
						<span id="model-label" class="property-label"><g:message code="cars.model.label" default="Регистрационен номер" /></span>

						<span class="property-value" aria-labelledby="model-label"><g:fieldValue bean="${carsInstance}" field="registrationPlate"/></span>

					</li>
				</g:if>

			</ol>
			<g:form url="[resource:carsInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${carsInstance}">Обнови</g:link>
					<g:actionSubmit class="delete" action="delete" value="Изтрий"/>
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
