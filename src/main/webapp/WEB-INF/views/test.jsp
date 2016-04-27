<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<h2 style="margin-left: 30px;">FlatSpection:</h2>

<script>
function initialize() {
  var mapProp = {
    center:new google.maps.LatLng(51.508742,-0.120850),
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
			<label>Map:</label>
			<div style="width:600px;height:400px" id="googleMap"></div>
		</div>
</div>
<br>


<script src="http://www.x3dom.org/release/x3dom.js"></script>
  <link rel="stylesheet" href="http://www.x3dom.org/release/x3dom.css">
 <style>
        x3d {
            border:2px solid darkorange;
            background: rgba(128, 128, 128, 0.4);
        }
  </style>
<div class="row">
		<div class="col-md-6 col-md-offset-3">
			<label>3d Model:</label>
			<x3d width='260px' height='400px'>
		      <scene>
		  	     <inline url='<c:url value="/resources/3d-models/sampel.x3d"/>'> </inline>
		      </scene>
		  </x3d>
		</div>
	</div>




<style>
			body{
				margin: 0;
			}
			canvas{
				width: 100%;
				height: 100%;
				margin-left: 350px;
			}
</style>
	
	
	
	
	
<div class="row">
		<div class="col-md-6 col-md-offset-3">
			<label>3d Panorma:</label>
<style>
			body{
				margin: 0;
			}
			canvas{
				width: 100%;
				height: 100%
			}
		</style>
		<script src="//cdnjs.cloudflare.com/ajax/libs/three.js/r69/three.min.js"></script>

<script>
			var manualControl = false;
			var longitude = 0;
			var latitude = 0;
			var savedX;
			var savedY;
			var savedLongitude;
			var savedLatitude;

			// panoramas background
			var panorama = "/resources/images/06.jpg"

			// setting up the renderer
			renderer = new THREE.WebGLRenderer();
			renderer.setSize(window.innerWidth/2, window.innerHeight/2);
			document.body.appendChild(renderer.domElement);

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
				    //sphereMaterial.map = THREE.ImageUtils.loadTexture(panorama);
    	}

		</script>
</div>
</div>


