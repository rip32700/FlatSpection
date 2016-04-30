<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<br><br><br>
<div class="well">
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
		<div id="3dview">
		</div>
		<script>
			var manualControl = false;
			var longitude = 0;
			var latitude = 0;
			var savedX;
			var savedY;
			var savedLongitude;
			var savedLatitude;

			// panoramas background
			var panorama = "/resources/images/flat360_2.jpg"

			// setting up the renderer
			renderer = new THREE.WebGLRenderer();
			renderer.setSize(window.innerWidth/3.5, window.innerHeight/3.5);
			document.getElementById("3dview").appendChild(renderer.domElement);

			// creating a new scene
			var scene = new THREE.Scene();

			// adding a camera
			var camera = new THREE.PerspectiveCamera(75, window.innerWidth / window.innerHeight, 1, 1000);
			camera.target = new THREE.Vector3(0, 0, 0);

			// creation of a big sphere geometry
			var sphere = new THREE.SphereGeometry(100, 100, 40);
			sphere.applyMatrix(new THREE.Matrix4().makeScale(-1, 1, 1));

			// creation of the sphere material
			var sphereMaterial = new THREE.MeshBasicMaterial();
			sphereMaterial.map = THREE.ImageUtils.loadTexture(panorama)

			// geometry + material = mesh (actual object)
			var sphereMesh = new THREE.Mesh(sphere, sphereMaterial);
			scene.add(sphereMesh);

			// listeners
			document.addEventListener("mousedown", onDocumentMouseDown, false);
			document.addEventListener("mousemove", onDocumentMouseMove, false);
			document.addEventListener("mouseup", onDocumentMouseUp, false);

      		render();

      		function render(){

				    requestAnimationFrame(render);

    				if(!manualControl){
    					longitude += 0.1;
    				}

    				// limiting latitude from -85 to 85 (cannot point to the sky or under your feet)
            		latitude = Math.max(-85, Math.min(85, latitude));

    				// moving the camera according to current latitude (vertical movement) and longitude (horizontal movement)
    				camera.target.x = 500 * Math.sin(THREE.Math.degToRad(90 - latitude)) * Math.cos(THREE.Math.degToRad(longitude));
    				camera.target.y = 500 * Math.cos(THREE.Math.degToRad(90 - latitude));
    				camera.target.z = 500 * Math.sin(THREE.Math.degToRad(90 - latitude)) * Math.sin(THREE.Math.degToRad(longitude));
    				camera.lookAt(camera.target);

    				// calling again render function
    				renderer.render(scene, camera);

			}

			// when the mouse is pressed, we switch to manual control and save current coordinates
			function onDocumentMouseDown(event){

				event.preventDefault();

				manualControl = true;

				savedX = event.clientX;
				savedY = event.clientY;

				savedLongitude = longitude;
				savedLatitude = latitude;

			}

			// when the mouse moves, if in manual contro we adjust coordinates
			function onDocumentMouseMove(event){
				if(manualControl){
					longitude = (savedX - event.clientX) * 0.1 + savedLongitude;
					latitude = (event.clientY - savedY) * 0.1 + savedLatitude;
				}
			}

			// when the mouse is released, we turn manual control off
			function onDocumentMouseUp(event){
				manualControl = false;
			}

			// pressing a key (actually releasing it) changes the texture map
			document.onkeyup = function(event){
    	}

		</script>
	</div>
</div>
</div> <!-- well -->
<br><br><br><br><br><br>
<div class="row">
	<h1>Flat Details:</h1>
	<br><br><br>
	<div class="col-md-6 col-md-offset-3">
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
		  <!-- Indicators -->
		  <ol class="carousel-indicators">
		    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
		    <li data-target="#myCarousel" data-slide-to="1"></li>
		  </ol>
		
		  <!-- Wrapper for slides -->
		  <div class="carousel-inner" role="listbox">
		    <div class="item active">
		      <img src='<c:url value="/resources/images/cat4.jpg" />' alt="...">
		      <div class="carousel-caption">
		        <h3>Scary</h3>
		        <p>Boooooh!</p>
		      </div>
		    </div>
		
		    <div class="item">
		      <img src='<c:url value="/resources/images/cat3.jpg" />' alt="...">
		      <div class="carousel-caption">
		        <h3>Cutie</h3>
		        <p>Kinda cute kitten!</p>
		      </div>
		    </div>
		  </div>
		
		  <!-- Left and right controls -->
		  <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
		    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
		    <span class="sr-only">Previous</span>
		  </a>
		  <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
		    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
		    <span class="sr-only">Next</span>
		  </a>
		</div>
	</div>
</div>
<div class="row">
	<br><br><br>
	<div class="col-md-6 col-md-offset-3">
			<br>
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
