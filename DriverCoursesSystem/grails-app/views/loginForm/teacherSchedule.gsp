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
	  <g:formatDate date="${courseInstance.startCourse}" />
	  </div>
  </div>
</body>
</html>