<%@ page import="com.drivercoursessystem.adminpanel.Prices" %>



<div class="fieldcontain ${hasErrors(bean: pricesInstance, field: 'category', 'error')} required">
	<label for="category">
		<g:message code="prices.category.label" default="Category" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="category" required="" value="${pricesInstance?.category}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pricesInstance, field: 'price', 'error')} required">
	<label for="price">
		<g:message code="prices.price.label" default="Price" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="price" value="${fieldValue(bean: pricesInstance, field: 'price')}" required=""/>

</div>

