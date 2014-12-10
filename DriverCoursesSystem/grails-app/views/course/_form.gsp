<%@ page import="com.drivercoursessystem.adminpanel.Course" %>



<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'category', 'error')} required">
	<label for="category">
		<g:message code="course.category.label" default="Category" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="category" from="${courseInstance.constraints.category.inList}" required="" value="${courseInstance?.category}" valueMessagePrefix="course.category"/>

</div>

<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'endCourse', 'error')} required">
	<label for="endCourse">
		<g:message code="course.endCourse.label" default="End Course" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="endCourse" precision="day"  value="${courseInstance?.endCourse}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'startCourse', 'error')} required">
	<label for="startCourse">
		<g:message code="course.startCourse.label" default="Start Course" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="startCourse" precision="day"  value="${courseInstance?.startCourse}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'teacher', 'error')} required">
	<label for="teacher">
		<g:message code="course.teacher.label" default="Teacher" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="teacher" name="teacher.id" from="${com.drivercoursessystem.adminpanel.Teacher.list()}" optionKey="id" required="" value="${courseInstance?.teacher?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'uniqueNumebr', 'error')} required">
	<label for="uniqueNumebr">
		<g:message code="course.uniqueNumebr.label" default="Unique Numebr" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="uniqueNumebr" required="" value="${courseInstance?.uniqueNumebr}"/>

</div>

