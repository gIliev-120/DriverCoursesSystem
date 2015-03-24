<%@ page import="drivercoursessystem.DrivingSchedules" %>



<div class="fieldcontain ${hasErrors(bean: drivingSchedulesInstance, field: 'calendarDate', 'error')} required">
	<label for="calendarDate">
		<g:message code="drivingSchedules.calendarDate.label" default="Calendar Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="calendarDate" precision="day"  value="${drivingSchedulesInstance?.calendarDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: drivingSchedulesInstance, field: 'hours', 'error')} required">
	<label for="hours">
		<g:message code="drivingSchedules.hours.label" default="Hours" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="hours" name="hours.id" from="${com.drivercoursessystem.adminpanel.DrivingHours.list()}" optionKey="id" required="" value="${drivingSchedulesInstance?.hours?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: drivingSchedulesInstance, field: 'teachers', 'error')} required">
	<label for="teachers">
		<g:message code="drivingSchedules.teachers.label" default="Teachers" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="teachers" name="teachers.id" from="${com.drivercoursessystem.adminpanel.Teacher.list()}" optionKey="id" required="" value="${drivingSchedulesInstance?.teachers?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: drivingSchedulesInstance, field: 'weekDay', 'error')} required">
	<label for="weekDay">
		<g:message code="drivingSchedules.weekDay.label" default="Week Day" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="weekDay" name="weekDay.id" from="${com.drivercoursessystem.adminpanel.WeekDays.list()}" optionKey="id" required="" value="${drivingSchedulesInstance?.weekDay?.id}" class="many-to-one"/>

</div>

