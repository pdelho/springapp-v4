<%@ include file="/WEB-INF/views/include.jsp"%>

<html>

<head>
<title><fmt:message key="title"/></title>
	<link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">
</head>

<%@ include file="/WEB-INF/views/templates/navbar.jsp"%>
	<h1>Contact</h1>
	<p>
	Note: no persistant database as <a href = "https://elements.heroku.com/addons/cleardb">clearDB </a> addon requires billing information.
	Version 6 works perfectly in localhost (see GitHub branch)
	<br>
	<a href="https://pdelho-springv4.herokuapp.com/">Heroku</a>
	<br>
	<a href="https://github.com/pdelho/springapp-v4">GitHub</a>
	<br>
	<a href="mailto:pablodelhoyo@gmail.com?Subject=Heroku%20Application" target="_top">Send Mail</a>
	<br>
	<a href="https://es.linkedin.com/in/pablodelhoyo" target="_top">LinkedIn</a>
	<footer>
	Pablo del Hoyo
	</footer>
</body>
</html>