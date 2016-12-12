<%@ include file="/WEB-INF/views/include.jsp"%>

<html>

<head>
<title><fmt:message key="title" /></title>
<link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">
<style type="text/css">
html, body {
	width: 100%;
	height: 100%;
}

#map_canvas {
	height: 80%;
	width: 80%;
}
</style>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
<meta http-equiv="Content-type" content="text/html" charset="utf-8">
<script
	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAjI7tQXavCHFqC7Twl5iDeroSxB_-xwn4&callback=initMap"></script>
<script src="<c:url value="/resources/js/localization.js" />"></script>
</head>

<body>
	<%@ include file="/WEB-INF/views/templates/navbar.jsp"%>
	<div id="map_canvas"></div>
	<form>
		Longitude: <input type="text" value="Longitud" id="caja1">
		Latitude: <input type="text" value="Latitud" id="caja2">
		<p>
			<input type="button" value="Guardar" id="bot">
	</form>
	Stored position:
	<pre id="pos"></pre>
	Distance respect to:
	<pre id="dis"></pre>

	Note: at least one position must be stored to see the map.
</body>
</html>