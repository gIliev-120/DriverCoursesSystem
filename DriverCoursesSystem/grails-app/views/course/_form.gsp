<%@ page import="com.drivercoursessystem.adminpanel.Course" %>



<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'category', 'error')} required">
	<label for="category">
		<g:message code="course.category.label" default="Категория" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="category" from="${courseInstance.constraints.category.inList}" required="" value="${courseInstance?.category}" valueMessagePrefix="course.category"/>

</div>

<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'startCourse', 'error')} required">
	<label for="endCourse">
		<g:message code="course.endCourse.label" default="Начало на Курса" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="endCourse" precision="day"  value="${courseInstance?.startCourse}"  />

</div>
<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'endCourse', 'error')} required">
	<label for="endCourse">
		<g:message code="course.endCourse.label" default="Край на Курса" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="endCourse" precision="day"  value="${courseInstance?.endCourse}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'drivingTeacher', 'error')} required">
	<label for="drivingTeacher">
		<g:message code="course.drivingTeacher.label" default="Инструктор по кормуване" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="drivingTeacher" name="drivingTeacher.id" from="${com.drivercoursessystem.adminpanel.Teacher.list()}" optionKey="id" required="" value="${courseInstance?.drivingTeacher?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'price', 'error')} required">
	<label for="price">
		<g:message code="course.price.label" default="Цена" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="price" value="${fieldValue(bean: courseInstance, field: 'price')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'startCourse', 'error')} required">
	<label for="startCourse">
		<g:message code="course.startCourse.label" default="Начало на курса" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="startCourse" precision="day"  value="${courseInstance?.startCourse}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'students', 'error')} ">
	<label for="students">
		<g:message code="course.students.label" default="Студенти" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${courseInstance?.students?}" var="s">
    <li><g:link controller="students" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="students" action="create" params="['course.id': courseInstance?.id]">Добави Студенти</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'theoryTeacher', 'error')} required">
	<label for="theoryTeacher">
		<g:message code="course.theoryTeacher.label" default="Инструктор по теория" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="theoryTeacher" name="theoryTeacher.id" from="${com.drivercoursessystem.adminpanel.Teacher.list()}" optionKey="id" required="" value="${courseInstance?.theoryTeacher?.id}" class="many-to-one"/>

</div>

