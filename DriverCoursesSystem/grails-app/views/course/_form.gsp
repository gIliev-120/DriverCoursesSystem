<%@ page import="com.drivercoursessystem.adminpanel.Course" %>



<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'category', 'error')} required">
	<label for="category">
		<g:message code="course.category.label" default="Category" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="category" from="${courseInstance.constraints.category.inList}" required="" value="${courseInstance?.category}" valueMessagePrefix="course.category"/>

</div>

<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'startCourse', 'error')} required">
	<label for="startCourse">
		<g:message code="course.startCourse.label" default="Start Course" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="startCourse" precision="day"  value="${courseInstance?.startCourse}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'endCourse', 'error')} required">
	<label for="endCourse">
		<g:message code="course.endCourse.label" default="End Course" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="endCourse" precision="day"  value="${courseInstance?.endCourse}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'drivingTeacher', 'error')} required">
	<label for="drivingTeacher">
		<g:message code="course.drivingTeacher.label" default="Driving Teacher" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="drivingTeacher" name="drivingTeacher.id" from="${com.drivercoursessystem.adminpanel.Teacher.list()}" optionKey="id" required="" value="${courseInstance?.drivingTeacher?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'theoryTeacher', 'error')} required">
	<label for="theoryTeacher">
		<g:message code="course.theoryTeacher.label" default="Theory Teacher" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="theoryTeacher" name="theoryTeacher.id" from="${com.drivercoursessystem.adminpanel.Teacher.list()}" optionKey="id" required="" value="${courseInstance?.theoryTeacher?.id}" class="many-to-one"/>

</div>

