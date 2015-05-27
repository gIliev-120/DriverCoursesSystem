<%@ page import="drivercoursessystem.PreservingHours" %>



<div class="fieldcontain ${hasErrors(bean: preservingHoursInstance, field: 'drivinghours', 'error')} required">
	<label for="drivinghours">
		<g:message code="preservingHours.drivinghours.label" default="Drivinghours" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="drivinghours" from="${preservingHoursInstance.constraints.drivinghours.inList}" required="" value="${preservingHoursInstance?.drivinghours}" valueMessagePrefix="preservingHours.drivinghours"/>

</div>

<div class="fieldcontain ${hasErrors(bean: preservingHoursInstance, field: 'drivingdate', 'error')} required">
	<label for="drivingdate">
		<g:message code="preservingHours.drivingdate.label" default="Drivingdate" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="drivingdate" precision="day" format="dd-MM-yyyy"  value="${preservingHoursInstance?.drivingdate}"  />
	<cach
</div>

<div class="fieldcontain ${hasErrors(bean: preservingHoursInstance, field: 'student', 'error')} required">
	<label for="student">
		<g:message code="preservingHours.student.label" default="Student" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="student" name="student.id" from="${com.drivercoursessystem.adminpanel.Students.list()}" optionKey="id" required="" value="${preservingHoursInstance?.student?.id}" class="many-to-one"/>

</div>

