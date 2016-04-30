<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<style>
	#map {
	    height: 100%;
	    width: 100%;
	    left: 0;
	    position: absolute;
	    top: 0;    
	}
	
	#filter {
	    position: absolute;
	    top: 200px;
	    left: 900px;
	}
</style>



<div id="map"></div>
<div id="filter">
	<div class="row">
		<div class="col-md-10 col-md-offset-4">
			<div class="well">
				<div class="form-group">
					<label style="margin-bottom: 30px;">Filter Criteria</label>
					<input type="text" class="form-control" placeholder="City..." value='<c:out value="${locationDTO}"></c:out>'/><br>
					<input type="text" class="form-control" placeholder="Street..." /><br>
					<input type="text" class="form-control" placeholder="Square meters..." /><br>
				    <input type="text" class="form-control" placeholder="Rent min..." /><br>
				    <input type="text" class="form-control" placeholder="Rent max..." /><br>
				    <button class="btn btn-danger" type="submit">Filter</button>
				</div>
			</div>
		</div>
	</div>
</div>
<input type="hidden" id="locationHiddinField" value='${locationDTO}'/>




<script>
jQuery(document).ready(function () {
    
    getLatLongForLocation($('#locationHiddinField').val());
    
	function getLatLongForLocation(location) {
		var geocoder =  new google.maps.Geocoder();
		geocoder.geocode( { 'address': location}, function(results, status) {
			var lat;
	      	if (status == google.maps.GeocoderStatus.OK) {
	      		createMap(results[0].geometry.location.lat(), results[0].geometry.location.lng());
	      	} else {
	        	alert("Something got wrong " + status);
			}
		});
	}
	
	function createMap(lat, lng) {
		
		var map;
	    var style = [
	        {
	        featureType: "poi",
	        stylers: [{ visibility: "off" }]},
	        {
	        featureType: "transit",
	        stylers: [{ visibility: "off" }]},
	        {
	        featureType: "road",
	        stylers: [{ lightness: "50" },{ visibility: "on" }]},
	        {
	        featureType: "landscape",stylers: [{ lightness: "50" }]}
	    ]
		
	    var options = {
            zoom: 13,
            center:  new google.maps.LatLng(lat, lng),
            mapTypeId: google.maps.MapTypeId.ROADMAP,
            disableDefaultUI: true
        };

        map = new google.maps.Map($('#map')[0], options);
        map.setOptions({
            styles: style
        });
        
        //icon image
        var image = '/resources/images/maps-icon.png';
        
    	 // Data for the markers consisting of a name, a LatLng and a zIndex for the
    	 // order in which these markers should display on top of each other.
    	 var houses = [
    	   ['House1', 48.15, 11.5833333, 4, "flat.jpg"],
    	   ['House2', 48.16, 11.6, 5, "flat1.jpg"],
    	   ['House3', 48.15, 11.539, 3, "flat2.jpg"],
    	   ['House4', 48.1575, 11.552, 2, "flat3.jpg"],
    	   ['House5', 48.1235, 11.599, 1, "flat4.jpg"],
    	   ['House6', 48.1634, 11.33456, 5, "flat1.jpg"],
    	   ['House7', 48.1267, 11.51359, 3, "flat2.jpg"],
    	   ['House8', 48.1275, 11.53452, 2, "flat3.jpg"],
    	   ['House9', 48.15, 11.573359, 1, "flat4.jpg"]
    	 ];
    	 
    	 var marker = [];
    	 infowindow = new google.maps.InfoWindow({
 			content: ''
 		 });
    	 
    	 // create markers
    	for (var i = 0; i < houses.length; i++) {
    		marker[i] = new google.maps.Marker({
    	        position: new google.maps.LatLng(houses[i][1], houses[i][2]),
    	        map: map,
    	        title: houses[i][0],
    	        icon: new google.maps.MarkerImage(image, null, null, null, new google.maps.Size(50,50)),
    			zIndex: houses[i][3]
    	      });
    		
    		bindInfoWindow(marker[i], map, infowindow, getInfoWindowDescription(i, houses[i][4]));
    	}
	}
	
	function getInfoWindowDescription(i, imgName) {
		var string = '<b>Flat ' + i + '</b><br>';
		string += 'Address: Musterstadt 1<br>';
		string += 'Net Rent: $450<br>';
		string += 'Addiational Charges: $120<br>';
		string += '<img width="120px" height="120px" src="/resources/images/flats/' + imgName + '"/><br>'
		string += '<a href="/flat/1">View More</a>';
		
		return string;
	}
	
	function bindInfoWindow(marker, map, infowindow, description) {
	    marker.addListener('click', function() {
	        infowindow.setContent(description);
	        infowindow.open(map, this);
	    });
	}
	
	function onClickMarker(marker) {
		this.info.open()
	}
	
	function onClickMarker2(marker) {
		var title = this.getTitle();
		var flatid = 1;
		// make request to controller
		$.ajax({
			type:'GET',
			url: "/flat/redirect/" + flatid,
			success : function(data) {
			    window.location.replace(data);
			}
		});
	}
});
</script>

<!--  AIzaSyBytuacTifKRAO1F8mVO0q19BQTHC4378s  -->


