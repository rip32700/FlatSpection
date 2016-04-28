<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div id="bg">
	<br><br><br><br><br><br><br><br><br>
	<div class="row">
	  <div class="col-md-4 col-md-offset-3">
	      <form class="form-inline" action='<c:url value="/search"/>'>
		      <div class="form-group">
	      		<button class="btn btn-danger" type="submit">Go!</button><input type="text" class="form-control" placeholder="City or ZIP code..." />
	      	</div>
	      </form>
	  </div>
	</div>
</div>



<!-- 
<div class="row">
  <div class="col-md-5 col-md-offset-4">
    <div class="input-group">
      <span class="input-group-btn">
        <button class="btn btn-danger" type="button">Go!</button>
      </span>
      <input type="text" class="form-control" placeholder="Search for...">
    </div><!-- /input-group
  </div><!-- /.col-lg-6 
</div>
 
<script>
function initialize() {
  var mapProp = {
    center:new google.maps.LatLng(48.8,11.35),
    zoom:5,
    mapTypeId:google.maps.MapTypeId.ROADMAP
  };
  var map=new google.maps.Map(document.getElementById("googleMap"), mapProp);
}
google.maps.event.addDomListener(window, 'load', initialize);
</script>

<br>
<div class="row">
		<div class="col-md-6 col-md-offset-3">
			<div style="width:600px;height:400px" id="googleMap"></div>
		</div>
</div>
<br>
-->

