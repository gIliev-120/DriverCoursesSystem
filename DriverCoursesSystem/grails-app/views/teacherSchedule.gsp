<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
<meta name="layout" content="main"/>
<title>Insert title here</title>
</head>
<body>
	<p>Hello Teacher</p>
  <div class="body">
	  <div class="coursistsInfo">
	  <g:select id="course" name="course.id" from="${com.drivercoursessystem.adminpanel.Course.list()}" optionKey="id" required="" value="${studentsInstance?.course?.id}" class="many-to-one"/>
	  
	  <table>
	  	<thead>
	  	<tr>
	  	<g:sortableColumn property="firstName" title="${message(code: 'students.firstName.label', default: 'First Name')}" />
	  	
	  	<g:sortableColumn property="lastName" title="${message(code: 'students.lastName.label', default: 'Last Name')}" />
	  	
	  	<g:sortableColumn property="email" title="${message(code: 'students.email.label', default: 'Email')}" />
					
		<g:sortableColumn property="mobilePhone" title="${message(code: 'students.mobilePhone.label', default: 'Mobile Phone')}" />
		</tr>			
	  	</thead>
	
	  	<tbody>
	  	<td>${fieldValue(bean: studentsInstance, field: "firstName")}</td>
	  	<td>${fieldValue(bean: studentsInstance, field: "lastName")}</td>
	  	<td>${fieldValue(bean: studentsInstance, field: "email")}</td>
		<td>${fieldValue(bean: studentsInstance, field: "mobilePhone")}</td>
		</tbody>
	  </table>
	  </div>
  </div>
</body>
</html>