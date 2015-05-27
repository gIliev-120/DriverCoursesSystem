<%@ page contentType="text/html;charset=UTF-8" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
	<meta name="layout" content="main">
<cache:block key="${uS.id}">
<title>Здравейте ${usNames}</title>
</cache:block>
</head>
<body>
<div class="nav" role="navigation">
	<ul>
<cache:block key="${uS.id}"><li><a>Здравейте <i>${usNames}!</i></a></li></cache:block>
		<li><g:link action="yourHours">Вашите часове</g:link></li>
		<li><g:link action="reserveHours">Записване на час</g:link></li>
		<li style="float: right"><g:link action="logout" >Изход</g:link></li>
	</ul>
</div>
  <div class="body">
  		 <div id="loginHeader">
<cache:block key="${uS.id}">
		<p><b>Вашите преподаватели са:</b></p>
			 <ol>
				 <li><p>Теория-${Tteacher}</p></li>
				 <li><p>Кормуване-${dTeacher}</p></li>
			 </ol>
			<p>Вашият курс започва на <g:formatDate format="dd-MM-yyyy" date="${cSd}"/>  и завръшва на <g:formatDate format="dd-MM-yyyy" date="${cEd}" /></p>
		 </div>



	  %{--[usNames:userNames,Tteacher:theoryTeachers,dTeacher:drivingTeachers,cSd:courseStartDate,cEd:courseEndDate]);--}%
  </div>
</cache:block>
</body>
</html>