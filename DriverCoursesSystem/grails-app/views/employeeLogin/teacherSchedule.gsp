w
<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<meta name="layout" content="main" />
<title>Insert title here</title>
</head>	
<body>
	<div class="body">
			<g:javascript src="mine.js"></g:javascript>
		<div class="teacherInformation">
			<p>
				Здравей -
				${name}
			</p>

			<select id="cours">
					<g:each in="${courses}" status="i" var="cours">
						<option data-cours-id="${cours.id}" cours-startDate="${cours.startCourse}" cours-endDate="${cours.endCourse}">${cours.category}</option>
					</g:each>
			</select>


		</div>

		<div id="infoAboutCoursists">
			<table id="studentsTable">
				<thead>
					<tr>

						<g:sortableColumn property="firstName" title="Име" />

						<g:sortableColumn property="lastName" title="Фамилия" />

						<g:sortableColumn property="email" title="E-mail" />

						<g:sortableColumn property="mobilePhone" title="Мобилен Телефон" />
					</tr>
				</thead>
				<tbody id="tableTarget">

				</tbody>

			</table>
		</div>
	</div>
</body>
</html>