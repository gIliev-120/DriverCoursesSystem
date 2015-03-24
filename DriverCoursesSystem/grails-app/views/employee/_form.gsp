<%@ page import="com.drivercoursessystem.adminpanel.Employee" %>



<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="employee.username.label" default="Потребителско име" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="username" maxlength="20" required="" value="${employeeInstance?.username}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="employee.password.label" default="Парола" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="password" maxlength="10" required="" value="${employeeInstance?.password}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'role', 'error')} required">
	<label for="role">
		<g:message code="employee.role.label" default="Длъжност" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="role" from="${employeeInstance.constraints.role.inList}" required="" value="${employeeInstance?.role}" valueMessagePrefix="employee.role"/>

</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'teacher', 'error')} ">
	<label for="teacher">
		<g:message code="employee.teacher.label" default="Преподавател" />
		
	</label>
	<g:select id="teacher" name="teacher.id" from="${com.drivercoursessystem.adminpanel.Teacher.list()}" optionKey="id" value="${employeeInstance?.teacher?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

