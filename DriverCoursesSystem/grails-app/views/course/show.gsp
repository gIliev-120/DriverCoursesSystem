
<%@ page import="com.drivercoursessystem.adminpanel.Course" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'course.label', default: 'Course')}" />
		<title>Покажи Курс</title>
	</head>
	<body>
		<a href="#show-course" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><g:link controller="employeeLogin" action="adminredirect">Начало</g:link></li>
				<li><g:link class="list" action="index">Списък Курсове</g:link></li>
				<li><g:link class="create" action="create">Създдай Курс</g:link></li>
				<li style="float: right"><g:link controller="EmployeeLogin" action="logout">Изход</g:link></li>
			</ul>
		</div>
		<div id="show-course" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list course">
			
				<g:if test="${courseInstance?.category}">
				<li class="fieldcontain">
					<span id="category-label" class="property-label"><g:message code="course.category.label" default="Категория" /></span>
					
						<span class="property-value" aria-labelledby="category-label"><g:fieldValue bean="${courseInstance}" field="category"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${courseInstance?.endCourse}">
				<li class="fieldcontain">
					<span id="endCourse-label" class="property-label"><g:message code="course.endCourse.label" default="Край на курса" /></span>
					
						<span class="property-value" aria-labelledby="endCourse-label"><g:formatDate format="dd-MM-yyyy" date="${courseInstance?.endCourse}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${courseInstance?.drivingTeacher}">
				<li class="fieldcontain">
					<span id="drivingTeacher-label" class="property-label"><g:message code="course.drivingTeacher.label" default="Учител по кормуване" /></span>
					
						<span class="property-value" aria-labelledby="drivingTeacher-label"><g:link controller="teacher" action="show" id="${courseInstance?.drivingTeacher?.id}">${courseInstance?.drivingTeacher?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${courseInstance?.price}">
				<li class="fieldcontain">
					<span id="price-label" class="property-label"><g:message code="course.price.label" default="Цена" /></span>
					
						<span class="property-value" aria-labelledby="price-label"><g:fieldValue bean="${courseInstance}" field="price"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${courseInstance?.startCourse}">
				<li class="fieldcontain">
					<span id="startCourse-label" class="property-label"><g:message code="course.startCourse.label" default="Начало на курса" /></span>
					
						<span class="property-value" aria-labelledby="startCourse-label"><g:formatDate format="dd-MM-yyyy" date="${courseInstance?.startCourse}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${courseInstance?.students}">
				<li class="fieldcontain">
					<span id="students-label" class="property-label"><g:message code="course.students.label" default="Студенти" /></span>
					
						<g:each in="${courseInstance.students}" var="s">
						<span class="property-value" aria-labelledby="students-label"><g:link controller="students" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${courseInstance?.theoryTeacher}">
				<li class="fieldcontain">
					<span id="theoryTeacher-label" class="property-label"><g:message code="course.theoryTeacher.label" default="Учител по теория" /></span>
					
						<span class="property-value" aria-labelledby="theoryTeacher-label"><g:link controller="teacher" action="show" id="${courseInstance?.theoryTeacher?.id}">${courseInstance?.theoryTeacher?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:courseInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${courseInstance}">Обнови</g:link>
					<g:actionSubmit class="delete" action="delete" value="Изтрий" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
