<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page session="false"%>


<div class="row">
		<div class="col-md-6 col-md-offset-3">
			<h1>Registration</h1>
	</div>
</div>
<br>
<form:form class="form-inline" modelAttribute="userDTO" method="POST">
	<div class="row">
		<div class="col-md-6 col-md-offset-3">
			<div class="form-group">
				<label class="registration-form-label">First Name: </label> 
				<form:input class="form-control registration-form-input-field" path="firstName" value="" required="true" placeholder="Your First Name..."/>
				<form:errors path="firstName" element="div" cssClass="error"/>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-6 col-md-offset-3">
			<div class="form-group">
				<label class="registration-form-label">Last Name: </label>
				<form:input class="form-control registration-form-input-field" path="lastName" value="" required="true" placeholder="Your Last Name..."/>
				<form:errors path="lastName" element="div" cssClass="error" />
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-6 col-md-offset-3">
			<div class="form-group">
				<label class="registration-form-label">Username: </label>
				<form:input class="form-control registration-form-input-field" path="username" value="" required="true" placeholder="Your username..."/>
				<form:errors path="username" element="div" cssClass="error"/>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-6 col-md-offset-3">
			<div class="form-group">
				<label class="registration-form-label">Email: </label>
				<form:input class="form-control registration-form-input-field" path="email" value="" required="true" placeholder="Your E-Mail address..."/>
				<form:errors path="email" element="div" cssClass="error" />
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-6 col-md-offset-3">
			<div class="form-group">
				<label class="registration-form-label">Password: </label>
				<form:input class="form-control registration-form-input-field" path="password" value="" type="password" required="true" placeholder="Your password..."/>
				<form:errors path="password" element="div" cssClass="error" />
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-6 col-md-offset-3">
			<div class="form-group">
				<label class="registration-form-label">Confirm Password: </label>
				<form:input class="form-control registration-form-input-field" path="matchingPassword" value="" type="password" required="true" placeholder="Repeat your password..."/>
				<form:errors path="matchingPassword" element="div" cssClass="error" />
			</div>
		</div>
	</div>
	<!-- 
	<div class="row">
		<div class="col-md-6 col-md-offset-3">
			<div class="form-group">
				<label>User Type: </label> <br> <label class="radio-inline">
					<form:radiobutton path="type" value="Landlord" />Landlord</label> 
					<label class="radio-inline"> <form:radiobutton path="type" value="Renter" checked="true" />Renter</label>
			</div>
		</div>
	</div>
	 -->
	<form:input path="type" value="Landlord" hidden="true"/>
	<div class="row">
		<div class="col-md-6 col-md-offset-3">
			<div class="form-group ">
				<div class="bootstrap-iso">
					<label class="control-label registration-form-label" for="date"> Birthday </label>
					<div class="input-group" style="width: 220px; margin-top: 20px;">
						<div class="input-group-addon"><i class="fa fa-calendar"></i></div>
						<form:input class="form-control" id="date" name="date" placeholder="MM/DD/YYYY" type="text" path="birthday" required="true" />
					</div>
					<form:errors path="birthday" element="div"  cssClass="error"/>
				</div>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-6 col-md-offset-3">
			<div class="form-group">
				<label class="registration-form-label">Street: </label>
				<form:input class="form-control registration-form-input-field" path="street" value="" required="true" placeholder="Your Street Name..."/>
				<form:errors path="street" element="div" cssClass="error" />
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-6 col-md-offset-3">
			<div class="form-group">
				<label class="registration-form-label">Street Number: </label>
				<form:input class="form-control registration-form-input-field" path="streetNumber" required="true" placeholder="Your Street Number..."/>
				<form:errors path="streetNumber" element="div" cssClass="error" />
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-6 col-md-offset-3">
			<div class="form-group">
				<label class="registration-form-label">City: </label>
				<form:input class="form-control registration-form-input-field" path="city" value="" required="true" placeholder="Your City Name..."/>
				<form:errors path="city" element="div" cssClass="error" />
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-6 col-md-offset-3">
			<div class="form-group">
				<label class="registration-form-label">ZIP: </label>
				<form:input class="form-control registration-form-input-field" path="zip" required="true" placeholder="Your ZIP code..."/>
				<form:errors path="zip" element="div" cssClass="error" />
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-6 col-md-offset-3">
			<button style="margin-top: 20px; margin-left: 100px; width: 150px;" class="btn btn-danger" type="submit">Submit</button>
		</div>
	</div>
</form:form>
<div class="row">
		<div class="col-md-6 col-md-offset-3">
			<div class="form-group">
				<label style="margin-top: 30px;">Or sign up with your <a href="#">Facebook</a> or <a href="#">Google</a> account</label>
			</div>
		</div>
</div>

<a class="btn btn-block btn-social btn-twitter">
  <span class="fa fa-twitter"></span> Sign in with Twitter
</a>
 <a class="btn btn-social-icon btn-twitter">
  <span class="fa fa-twitter"></span>
</a>


<!-- Extra JavaScript/CSS added manually in "Settings" tab -->
<!-- Include jQuery -->
<script type="text/javascript" src="https://code.jquery.com/jquery-1.11.3.min.js"></script>

<!-- Include Date Range Picker -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css" />

<script>
	$(document).ready(
			function() {
				var date_input = $('input[name="date"]'); //our date input has the name "date"
				var container = $('.bootstrap-iso form').length > 0 ? $('.bootstrap-iso form').parent() : "body";
				date_input.datepicker({
					format : 'mm/dd/yyyy',
					container : container,
					todayHighlight : true,
					autoclose : true,
				})
			})
</script>


