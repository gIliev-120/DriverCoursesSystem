<%--
  Created by IntelliJ IDEA.
  User: lilieva
  Date: 27.5.2015 г.
  Time: 11:23
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title></title>
</head>

<body>

<div class="nav" role="navigation">
    <ul>
        <li><g:link controller="Payments" action="index">Списък плащания</g:link></li>
        <li><g:link controller="Payments" action="create">Въведи плащане</g:link></li>
        <li><g:link controller="EmployeeLogin" action="logout">Изход</g:link></li>
    </ul>
</div>


</body>
</html>