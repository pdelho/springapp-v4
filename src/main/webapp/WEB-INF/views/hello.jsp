<%@ include file="/WEB-INF/views/include.jsp"%>

<html>

<head>
<title><fmt:message key="title"/></title>
	<link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">
</head>

<body>
	<%@ include file="/WEB-INF/views/templates/navbar.jsp"%>
	<h1><fmt:message key="heading"/></h1>
    <p><fmt:message key="greeting"/> <c:out value="${model.now}"/></p>
    <h3>Products</h3>
    <c:forEach items="${model.products}" var="prod">
      <c:out value="${prod.description}"/> <i>$<c:out value="${prod.price}"/></i><br><br>
    </c:forEach>
    <br>
    	<a href="<c:url value="priceincrease.htm"/>">Increase Prices</a>
    <br>

	

	<footer>
		I'm <a href="https://pdelho-springv4.herokuapp.com/">Pablo in
			Heroku</a>
	</footer>
</body>
</html>