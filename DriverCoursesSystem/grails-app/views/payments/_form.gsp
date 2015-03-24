<%@ page import="com.drivercoursessystem.adminpanel.Payments" %>



<div class="fieldcontain ${hasErrors(bean: paymentsInstance, field: 'student', 'error')} required">
	<label for="student">
		<g:message code="payments.student.label" default="Курсист" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="student" name="student.id" from="${com.drivercoursessystem.adminpanel.Students.list()}" optionKey="id" required="" value="${paymentsInstance?.student?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: paymentsInstance, field: 'paidSum', 'error')} required">
	<label for="paidSum">
		<g:message code="payments.paidSum.label" default="Платена сума" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="paidSum" value="${fieldValue(bean: paymentsInstance, field: 'paidSum')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: paymentsInstance, field: 'restOfSum', 'error')} required">
	<label for="restOfSum">
		<g:message code="payments.restOfSum.label" default="Остаък за плащане" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="restOfSum" value="${fieldValue(bean: paymentsInstance, field: 'restOfSum')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: paymentsInstance, field: 'numberOfExtraDrivingHours', 'error')} required">
	<label for="numberOfExtraDrivingHours">
		<g:message code="payments.numberOfExtraDrivingHours.label" default="Брой допълни часове по кормуване" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="numberOfExtraDrivingHours" type="number" min="0" value="${paymentsInstance.numberOfExtraDrivingHours}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: paymentsInstance, field: 'paidExtraDrivingHours', 'error')} required">
	<label for="paidExtraDrivingHours">
		<g:message code="payments.paidExtraDrivingHours.label" default="Платени допълнителни часове" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="paidExtraDrivingHours" value="${fieldValue(bean: paymentsInstance, field: 'paidExtraDrivingHours')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: paymentsInstance, field: 'course', 'error')} required">
	<label for="course">
		<g:message code="payments.course.label" default="Курс" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="course" name="course.id" from="${com.drivercoursessystem.adminpanel.Course.list()}" optionKey="id" required="" value="${paymentsInstance?.course?.id}" class="many-to-one"/>

</div>

