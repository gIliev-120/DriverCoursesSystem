
<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<meta name="layout" content="main" />
<title>График</title>
</head>	
<body>
<div class="nav" role="navigation">
	<ul>
		<li><p><a>Здравейте,<b><i>${name}</i></b>!</a></p></li>
		<li><g:select id="cours" name="category" from="${courses}" optionKey="id"  value="${category}"
						 onchange="${remoteFunction(
								 controller:'EmployeeLogin',
								 action:'demoAjax',
								 params:'\'key=\'+this.value',
								 onSuccess:'yourStudents(data)'
						 )}"/></li>
		<li style="float: right;"><g:link action="logout" >Изход</g:link></li>
	</ul>
</div>
	<div class="body">
		<g:javascript>
				function yourStudents(data){
					console.log(data.length)
					var studTable=document.getElementById("studentsTable");
					while(studTable.rows.length>1)
						studTable.deleteRow(studTable.rows.length-1);
					var htmlTable = "";
					for (var i = 0; i < data.length; i++) {
						htmlTable += "<tr>"
						htmlTable += "<td>" + data[i].firstName + "</td>"
						htmlTable += "<td>" + data[i].lastName + "</td>"
						htmlTable += "<td>" + data[i].email + "</td>"
						htmlTable += "<td>" + data[i].mobilePhone + "</td>"
						htmlTable += "</tr>"

					}
					$('#tableTarget').append(htmlTable);
				}
			</g:javascript>
		<div class="teacherInformation">

			%{--</select>--}%




		</div>

		<div id="infoAboutCoursists">
			<table id="studentsTable">
				<thead>
					<tr>

						<th>Име</th>
						<th>Фамилия</th>
						<th>E-mail</th>
						<th>Мобилен телефон</th>
					</tr>
				</thead>
				<tbody id="tableTarget">
				<g:each in="${studs}" status="i" var="students">
					<tr>
						<td>${students.firstName}</td>
						<td>${students.lastName}</td>
						<td>${students.email}</td>
						<td>${students.mobilePhone}</td>
					</tr>
				</g:each>
				</tbody>

			</table>
		</div>
	</div>
</body>
</html>