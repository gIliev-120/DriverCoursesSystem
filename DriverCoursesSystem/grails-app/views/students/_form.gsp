<%@ page import="com.drivercoursessystem.adminpanel.Students" %>



<div class="fieldcontain ${hasErrors(bean: studentsInstance, field: 'firstName', 'error')} required">
	<label for="firstName">
		<g:message code="students.firstName.label" default="Име" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="firstName" required="" value="${studentsInstance?.firstName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: studentsInstance, field: 'lastName', 'error')} required">
	<label for="lastName">
		<g:message code="students.lastName.label" default="Фамилия" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="lastName" required="" value="${studentsInstance?.lastName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: studentsInstance, field: 'years', 'error')} required">
	<label for="years">
		<g:message code="students.years.label" default="Години" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="years" from="${17..60}" class="range" required="" value="${fieldValue(bean: studentsInstance, field: 'years')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: studentsInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="students.email.label" default="е-mail" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="email" required="" value="${studentsInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: studentsInstance, field: 'mobilePhone', 'error')} required">
	<label for="mobilePhone">
		<g:message code="students.mobilePhone.label" default="Моблиен Телефон" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="mobilePhone" maxlength="13" required="" value="${studentsInstance?.mobilePhone}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: studentsInstance, field: 'courses', 'error')} required">
	<label for="courses">
		<g:message code="students.courses.label" default="Курс" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="courses" name="courses.id" from="${com.drivercoursessystem.adminpanel.Course.list()}" optionKey="id" required="" value="${studentsInstance?.courses?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: studentsInstance, field: 'numberOfPaidExtraDrivingHours', 'error')} required">
	<label for="numberOfPaidExtraDrivingHours">
		<g:message code="students.numberOfPaidExtraDrivingHours.label" default="Брой допълнителни часове по кормуване" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="numberOfPaidExtraDrivingHours" type="number" value="${studentsInstance.numberOfPaidExtraDrivingHours}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: studentsInstance, field: 'paidExtraDrivingHoursSum', 'error')} required">
	<label for="paidExtraDrivingHoursSum">
		<g:message code="students.paidExtraDrivingHoursSum.label" default="Платена сума за допълнителни часове" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="paidExtraDrivingHoursSum" value="${fieldValue(bean: studentsInstance, field: 'paidExtraDrivingHoursSum')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: studentsInstance, field: 'paidSum', 'error')} required">
	<label for="paidSum">
		<g:message code="students.paidSum.label" default="Платена сума от цената на курса" />
		<span class="required-indicator">*</span>
	</label>
	<g:field id="paidSum" name="paidSum" value="${fieldValue(bean: studentsInstance, field: 'paidSum')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: studentsInstance, field: 'restOfSum', 'error')} required">
	<label for="restOfSum">
		<g:message code="students.restOfSum.label" default="Остатък за плащане" />
		<span class="required-indicator">*</span>
	</label>
	<g:field id="restOfSum" name="restOfSum" value="${fieldValue(bean: studentsInstance, field: 'restOfSum')}" required=""/>

</div>

