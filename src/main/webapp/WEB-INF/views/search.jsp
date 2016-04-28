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



<script>
jQuery(document).ready(function () {
    var map;

    var style = [
        {
        featureType: "poi",
        stylers: [
            { visibility: "off" }
        ]
        },{
        featureType: "transit",
        stylers: [
            { visibility: "off" }
        ]
        },{
        featureType: "road",
        stylers: [
            { lightness: "50" },
            { visibility: "on" }
        ]
        },{
        featureType: "landscape",
        stylers: [
            { lightness: "50" }
        ]
        }
    ]

    var options = {
        zoom: 13,
        center:  new google.maps.LatLng(48.15, 11.5833333),
        mapTypeId: google.maps.MapTypeId.ROADMAP,
        disableDefaultUI: true
    };

    map = new google.maps.Map($('#map')[0], options);
    map.setOptions({
        styles: style
    });

});
</script>


