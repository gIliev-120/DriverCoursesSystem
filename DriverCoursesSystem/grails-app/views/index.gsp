<%@ page import="com.drivercoursessystem.userpanel.RegistrationForm" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<title>Добре дошли</title>
		<style type="text/css" media="screen">
			#status {
				background-color: #eee;
				border: .2em solid #fff;
				margin: 2em 2em 1em;
				padding: 1em;
				width: 12em;
				float: left;
				-moz-box-shadow: 0px 0px 1.25em #ccc;
				-webkit-box-shadow: 0px 0px 1.25em #ccc;
				box-shadow: 0px 0px 1.25em #ccc;
				-moz-border-radius: 0.6em;
				-webkit-border-radius: 0.6em;
				border-radius: 0.6em;
			}

			.ie6 #status {
				display: inline; /* float double margin fix http://www.positioniseverything.net/explorer/doubled-margin.html */
			}

			#status ul {
				font-size: 0.9em;
				list-style-type: none;
				margin-bottom: 0.6em;
				padding: 0;
			}

			#status li {
				line-height: 1.3;
			}

			#status h1 {
				text-transform: uppercase;
				font-size: 1.1em;
				margin: 0 0 0.3em;
			}

			#page-body {
				margin: 2em 1em 1.25em 18em;
			}

			h2 {
				margin-top: 1em;
				margin-bottom: 0.3em;
				font-size: 1em;
			}

			p {
				line-height: 1.5;
				margin: 0.25em 0;
			}

			#controller-list ul {
				list-style-position: inside;
			}

			#controller-list li {
				line-height: 1.3;
				list-style-position: inside;
				margin: 0.25em 0;
			}

			@media screen and (max-width: 480px) {
				#status {
					display: none;
				}

				#page-body {
					margin: 0 1em 1em;
				}

				#page-body h1 {
					margin-top: 0;
				}
			}
			.linkz{
				border-radius: 5px;
				background: deepskyblue;
				padding: 5px;
				width: 5px;
				height: 5px;
			}

			a,a:active,a:visited {
				color: #666666;
				text-decoration: none;
			}

		</style>
	</head>
	<body>

		<div id="home" style="text-align:center;height:300px;"><asset:image src="car.png"/></div>
		<h1 style="text-align: center">Запишете се за шофьорски курс!</h1>
	<div id="myNav" style="text-align: center;">
		<ul style="display: inline;">
		<g:link class="linkz" controller="registrationForm" action="register">Регистрация</g:link>
		<g:link class="linkz" controller="loginForm" actiion="index">Вход</g:link>
		<g:link class="linkz" controller="employeeLogin" actiion="index">Вход за служители</g:link>
		</ul>
	</div>
	</body>
</html>
