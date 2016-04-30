<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="row col-md-offset-3">
	<div class="col-md-6">
		<h1>Flat Details:</h1>
	</div>
</div>
<br><br><br>
<div class="row">
	<div class="col-md-6">
		<h3>GET A TOUR</h3>
		<p style="font-size: 20px;">
			Spare dir die Anreise nach München und besichtige diese <br>
			Wohnung lieber ganz bequem von zu Hause aus in 3D!
		</p>
		<button style="font-size: 18px;" class="btn btn-primary">Klingt gut</button>&nbsp;
		<button style="font-size: 18px;" class="btn btn-danger">Langweilig</button>
	</div>
	<div class="col-md-6">
		<div class="my-slider">
			<ul>
				<li><img width="50%" height="50%" src='<c:url value="/resources/images/flats/flat1.jpg"/>' alt="mist"/></li>
				<li><img width="50%" height="50%" src='<c:url value="/resources/images/flats/flat2.jpg"/>' alt="mist"/></li>
				<li><img width="50%" height="50%" src='<c:url value="/resources/images/flats/flat3.jpg"/>' alt="mist"/></li>
			</ul>
		</div>
	</div>
</div>
	
<div class="row">
	<br><br><br>
	<div class="col-md-6 col-md-offset-3">
			<h3>Further Information:</h3>
			<br><br><br>
			<table class="table custom-table text-left col-md-offset-1">
				<thead>
					<tr>
						<th>Address</th>
					</tr>
				</thead>
				<tr>
					<td class="flat-details-td"><label>Street:</label></td>
					<td><label>Musterstrasse 1</label></td>
				</tr>
				<tr>
					<td class="flat-details-td"><label>City:</label></td>
					<td><label>Mustercity</label></td>
				</tr>
				<tr>
					<td><label>ZIP:</label></td>
					<td><label>99999</label></td>
				</tr>
			</table>
			<table class="table custom-table text-left col-md-offset-1">
				<thead>
					<tr>
						<th>Rent</th>
					</tr>
				</thead>
				<tr>
					<td class="flat-details-td"><label>Net Rent:</label></td>
					<td><label>$550</label></td>
				</tr>
				<tr>
					<td class="flat-details-td"><label>Additional Charges:</label></td>
					<td><label>$150</label></td>
				</tr>
				<tr>
					<td class="flat-details-td"><label >Total Rent:</label></td>
					<td><label>$700</label></td>
				</tr>
			</table>
			<table class="table custom-table text-left col-md-offset-1">
				<thead>
					<tr>
						<th>Apartment Info</th>
					</tr>
				</thead>
				<tr>
					<td><label class="flat-details-td">Available From:</label></td>
					<td><label>2010-10-10</label></td>
				</tr>
				<tr>
					<td class="flat-details-td"><label>Rooms:</label></td>
					<td><label>5</label></td>
				</tr>
				<tr>
					<td class="flat-details-td"><label>Surface</label></td>
					<td><label>150 m²</label></td>
				</tr>
				<tr>
					<td><label class="flat-details-td">Bed Rooms:</label></td>
					<td><label>2</label></td>
				</tr>
				<tr>
					<td><label class="flat-details-td">Bath Rooms:</label></td>
					<td><label>1</label></td>
				</tr>
			</table>
	</div>
</div>
<br>


	<script src="//code.jquery.com/jquery-2.1.4.min.js"></script>
	<script src="<c:url value="/resources/js/unslider.js" />"></script>
	
	<script>
		jQuery(document).ready(function($) {
			$('.my-slider').unslider({
				autoplay: true,
				dots: true,
				nav: true,
				arrows: true
			});
		});
	</script>
