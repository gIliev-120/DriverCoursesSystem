
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main">
    <title>Запазване на час </title>
</head>

<body>
<div class="nav" role="navigation">
    <ul>
        <li><g:link action="again">Начало</g:link></li>
        <li><g:link action="yourHours">Вашите часове</g:link></li>
        <li><g:link action="logout" >Изход</g:link></li>
    </ul>
</div>
<g:form url="[resource:preservingHoursInstance, action:'handleHours']" >
    <fieldset class="form">

        <g:select name="drivinghours" from="${resrv.constraints.drivinghours.inList}" required="" value="${resrv.drivinghours}" valueMessagePrefix="preservingHours.drivinghours"/>
        <g:datePicker name="drivingdate" precision="day"  value="${resrv.drivingdate}"  />
    </fieldset>
    <fieldset class="buttons">
        <g:submitButton name="create" class="save" />
    </fieldset>
</g:form>

</body>
</html>