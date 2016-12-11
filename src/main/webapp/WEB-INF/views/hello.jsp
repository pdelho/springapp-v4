<%@ include file="/WEB-INF/views/include.jsp"%>

<html>
<head>
<title><fmt:message key="title"/></title>

<script src="<c:url value="/resources/js/calculadora.js" />"></script>

</head>
<body>
	<h1><fmt:message key="heading"/></h1>
    <p><fmt:message key="greeting"/> <c:out value="${model.now}"/></p>
    <h3>Products</h3>
    <c:forEach items="${model.products}" var="prod">
      <c:out value="${prod.description}"/> <i>$<c:out value="${prod.price}"/></i><br><br>
    </c:forEach>

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