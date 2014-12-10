<%@ page import="com.drivercoursessystem.adminpanel.Cars" %>



<div class="fieldcontain ${hasErrors(bean: carsInstance, field: 'make', 'error')} required">
	<label for="make">
		<g:message code="cars.make.label" default="Make" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="make" required="" value="${carsInstance?.make}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: carsInstance, field: 'model', 'error')} required">
	<label for="model">
		<g:message code="cars.model.label" default="Model" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="model" required="" value="${carsInstance?.model}"/>

</div>

