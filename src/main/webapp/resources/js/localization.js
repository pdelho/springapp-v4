// Determine support for Geolocation
if (navigator.geolocation) {
	// Locate position
	navigator.geolocation.getCurrentPosition(displayPosition, errorFunction);
} else {
	alert('It seems like Geolocation, which is required for this page, is not enabled in your browser. Please use a browser which supports it.');
}

//Success callback function
function displayPosition(pos) {
	var mylat = pos.coords.latitude;
	var mylong = pos.coords.longitude;
	localStorage.LongitudActual = pos.coords.longitude;
	localStorage.LatitudActual = pos.coords.latitude;

	//Load Google Map
	var latlng = new google.maps.LatLng(mylat, mylong);
	var latlngAnt;
	if (localStorage.LatitudGuardada !== null && localStorage.LongitudGuardada !== null) {
		latlngAnt = new google.maps.LatLng(localStorage.LatitudGuardada, localStorage.LongitudGuardada);
	}
	else latlngAnt = new google.maps.LatLng(0,0);
	

	var myOptions = {
			zoom: 15,
			mapTypeId: google.maps.MapTypeId.ROADMAP
	};
	var bounds = new google.maps.LatLngBounds() 
	var map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);
	//Add marker
	var marker = new google.maps.Marker({
		position: latlng, 
		map: map, 
		title:"You are here"
	});

	var marker2 = new google.maps.Marker({
		position: latlngAnt, 
		map: map, 
		title:"You saved here"
	});

	//Para centrar el mapa
	bounds.extend (new google.maps.LatLng(mylat, mylong)); 

	bounds.extend (new google.maps.LatLng(localStorage.LatitudGuardada, localStorage.LongitudGuardada)); 

	map.fitBounds (bounds);
}


//Error callback function
function errorFunction(pos) {
	alert('Error!');
}

$(function(){
	$('#caja1').val(localStorage.LongitudActual);
	$('#caja2').val(localStorage.LatitudActual);
	$('#pos').html("<ul><li>Longitude: "+(localStorage.LongitudGuardada||(0))+"</li><li>Latitud: "+(localStorage.LatitudGuardada||0)+"</li></ul>");
	//Al pulsar el botón save
	$("#bot").on('click', function() {
		//Variable local: LongitudGuardada. Valdrá lo que ponga en el objeto html identificado con "caja1"
		localStorage.LongitudGuardada = $('#caja1').val();
		//Variable local: LatitudGuardada. Valdrá lo que ponga en el objeto html identificado con "caja2"
		localStorage.LatitudGuardada = $('#caja2').val();
		$('#pos').html("<ul><li>Longitud: "+$('#caja1').val()+"</li><li>Latitud: "+$('#caja2').val()+"</li></ul>");
		location.reload();

	});

//	http://www.mapanet.eu/resources/Script-Distance.htm
	function Dist(lat1, lon1, lat2, lon2) {
		rad = function(x) {return x*Math.PI/180;}
		var R     = 6378.137;                          //Radio de la tierra en km
		var dLat  = rad( lat2 - lat1 );
		var dLong = rad( lon2 - lon1 );
		var a = Math.sin(dLat/2) * Math.sin(dLat/2) + Math.cos(rad(lat1)) * Math.cos(rad(lat2)) * Math.sin(dLong/2) * Math.sin(dLong/2);
		var c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1-a));
		var d = R * c;
		return d.toFixed(3);                      //Retorna tres decimales
	}

	var LongitudETSIT = -3.703611;
	var LatitudETSIT = 40.416944;
	DistanciaActual = Dist(localStorage.LatitudActual, localStorage.LongitudActual, localStorage.LatitudGuardada, localStorage.LongitudGuardada);   //Retorna numero en Km
	DistanciaETSIT = Dist(localStorage.LatitudActual, localStorage.LongitudActual, LatitudETSIT, LongitudETSIT);
	$("#dis").html("<ul><li>Stored position: " +DistanciaActual+"(km)</li><li>Madrid: " +DistanciaETSIT+" (km)");
});

