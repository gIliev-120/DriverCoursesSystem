<%@ page import="drivercoursessystem.DrivingSchedule" %>



<div class="fieldcontain ${hasErrors(bean: drivingScheduleInstance, field: 'calendarDate', 'error')} required">
	<label for="calendarDate">
		<g:message code="drivingSchedule.calendarDate.label" default="Calendar Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="calendarDate" precision="day"  value="${drivingScheduleInstance?.calendarDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: drivingScheduleInstance, field: 'hours', 'error')} required">
	<label for="hours">
		<g:message code="drivingSchedule.hours.label" default="Hours" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="hours" name="hours.id" from="${com.drivercoursessystem.adminpanel.DrivingHours.list()}" optionKey="id" required="" value="${drivingScheduleInstance?.hours?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: drivingScheduleInstance, field: 'student', 'error')} required">
	<label for="student">
		<g:message code="drivingSchedule.student.label" default="Student" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="student" name="student.id" from="${com.drivercoursessystem.adminpanel.Students.list()}" optionKey="id" required="" value="${drivingScheduleInstance?.student?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: drivingScheduleInstance, field: 'teachers', 'error')} required">
	<label for="teachers">
		<g:message code="drivingSchedule.teachers.label" default="Teachers" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="teachers" name="teachers.id" from="${com.drivercoursessystem.adminpanel.Teacher.list()}" optionKey="id" required="" value="${drivingScheduleInstance?.teachers?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: drivingScheduleInstance, field: 'weekDay', 'error')} required">
	<label for="weekDay">
		<g:message code="drivingSchedule.weekDay.label" default="Week Day" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="weekDay" name="weekDay.id" from="${com.drivercoursessystem.adminpanel.WeekDays.list()}" optionKey="id" required="" value="${drivingScheduleInstance?.weekDay?.id}" class="many-to-one"/>

</div>

