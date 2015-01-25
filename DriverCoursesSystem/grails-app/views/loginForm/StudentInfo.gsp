<%@page import="com.drivercoursessystem.userpanel.RegistrationForm"%>
<%@ page contentType="text/html;charset=UTF-8" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
<calendar:resources lang="en" theme="tiger"/>

<title>CHANGE ME</title>
</head>
<body>
  <div class="body">
  		 <div id="loginHeader">
    			 <g:loginControl/>
  		</div>
  		<div id="calendar">
  			<calendar:datePicker name="date" defaultValue="${new Date()}"/>
  			
  		</div>
  </div>
</body>
</html>