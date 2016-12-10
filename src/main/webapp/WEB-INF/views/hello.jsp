<%@ include file="/WEB-INF/views/include.jsp"%>

<html>
<head>
<title>Hello :: Spring Application</title>

<script src="<c:url value="/resources/js/calculadora.js" />"></script>

</head>
<body>
	<h1>Hello - Spring Application</h1>
	<p>
		Greetings, it is now
		<c:out value="${now}" />
	</p>

	<div id="calc">
		Number: <input type="text" id="n1">

		<button id="b1">
			x<sup>2</sup>
		</button>
	</div>

	<footer>
		I'm <a href="https://pdelho-springv4.herokuapp.com/">Pablo in
			Heroku</a>
	</footer>
</body>
</html>