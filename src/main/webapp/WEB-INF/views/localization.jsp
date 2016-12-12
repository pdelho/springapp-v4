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
			<input type="button" value="Save position" id="bot">
	</form>
	Stored position:
	<pre id="pos"></pre>
	Distance respect to:
	<pre id="dis"></pre>
	Instructions
	<ul>
		<li> You currently position will be shown whenever you charge the page in the boxes. </li>
		<li> Press the save button to save its content as your stored position</li>
		<li> Or edit its content to save manually another position </li>
		<li> Once saved, you will see the distance between your current position and the stored one and Madrid
		<li> Note: at least one position must be stored to see the map. </li>
		<li> These are the coordinates of some famous locations </li>		
	</ul>
	<ol>
		<li> London.  Lat: 51.510357, Lon: -0.116773</li>
		<li> Berlin.  Lat: 52.516266, Lon: 13.377775</li>
		<li> Hamburg.  Lat: 53.5502, Lon: 9.9922</li>
		<li> New York.  Lat: 40.711667, Lon: -74.0125</li>
		<li> Beijing.  Lat: 39.913818, Lon: 116.363625	</li>
	</ol>
	
	
</body>
</html>