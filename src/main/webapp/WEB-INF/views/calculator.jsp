<%@ include file="/WEB-INF/views/include.jsp"%>

<html>

<head>
<title><fmt:message key="title" /></title>
<link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
<script src="<c:url value="/resources/js/calculadora.js" />"></script>
</head>

<body>
	<%@ include file="/WEB-INF/views/templates/navbar.jsp"%>
	<div id="calc">
		<h1>Square of a number</h1>
		Number: <input type="text" id="n1">

		<button id="b1">
			x<sup>2</sup>
		</button>
	</div>
</body>