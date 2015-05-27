<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Вашите Часове</title>
    <meta name="layout" content="main">
</head>

<body>
<div class="nav" role="navigation">
    <ul>
        <li><g:link action="again">Начало</g:link></li>
        <li><g:link action="reserveHours">Записване на час</g:link></li>
        <li><g:link action="logout" >Изход</g:link></li>
    </ul>
</div>
<table>
    <thead>
    <tr>

        <g:sortableColumn property="drivinghours" title="Час" />

        <g:sortableColumn property="drivingdate" title="Дата" />

    </tr>
    </thead>
    <tbody>
    <g:each in="${studHours}" status="i" var="info">
        <tr>
            <td>${info.drivinghours}</td>

            <td><g:formatDate format="dd-MM-yyyy" date="${info.drivingdate}" /></td>
        </tr>
    </g:each>
    </tbody>
</table>
</body>
</html>