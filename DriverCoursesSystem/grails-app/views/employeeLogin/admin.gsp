<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
    <meta name="layout" content="main">
    <title>Администратор</title>

</head>

<body>
<div class="body">
        <div class="nav" role="navigation">
            <ul>
            <li><g:link controller="Students">Студенти</g:link></li>
            <li><g:link controller="Cars">Kоли</g:link></li>
            <li><g:link controller="Course">Kурсове</g:link></li>
            <li><g:link controller="Teacher">Инструкори</g:link></li>
            <li><g:link controller="Employee">Служители</g:link></li>
            <li><g:link controller="Payments">Плащания</g:link></li>
            <li style="float: right"><g:link controller="EmployeeLogin" action="logout">Изход</g:link></li>
            </ul>
        </div>
    <h1>Здравейте</h1>
</div>
</body>
</html>