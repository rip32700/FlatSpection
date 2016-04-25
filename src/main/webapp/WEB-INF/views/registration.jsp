<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page session="false"%>

<h1 style="margin-left: 30px;">Registration</h1>
<br>
<div class="row">
	<div class="col-md-4 col-md-offset-4">
		<form:form class="form-horizontal" modelAttribute="userDTO"
			method="POST">
			<div class="form-group">
				<label>First Name: </label>
				<form:input class="form-control" path="firstName" value="" required="true" />
				<form:errors path="firstName" element="div" cssClass="error"/>
			</div>
			<div class="form-group">
				<label>Last Name: </label>
				<form:input class="form-control" path="lastName" value="" required="true" />
				<form:errors path="lastName" element="div" cssClass="error" />
			</div>
			<div class="form-group">
				<label>Email: </label>
				<form:input class="form-control" path="email" value="" required="true" />
				<form:errors path="email" element="div" cssClass="error" />
			</div>
			<div class="form-group">
				<label>Password: </label>
				<form:input class="form-control" path="password" value="" type="password" required="true" />
				<form:errors path="password" element="div" cssClass="error" />
			</div>
			<div class="form-group">
				<label>Confirm Password: </label>
				<form:input class="form-control" path="matchingPassword" value="" type="password" required="true" />
				<form:errors path="matchingPassword" element="div" cssClass="error" />
			</div>
			<div class="form-group">
				<label>User Type: </label> <br> <label class="radio-inline">
					<form:radiobutton path="type" value="Landlord" />Landlord</label> 
					<label class="radio-inline"> <form:radiobutton path="type" value="Renter" checked="true" />Renter</label>
			</div>
			<div class="form-group ">
				<div class="bootstrap-iso">
					<label class="control-label" for="date"> Birthday </label>
					<div class="input-group">
						<div class="input-group-addon"><i class="fa fa-calendar"></i></div>
						<form:input class="form-control" id="date" name="date" placeholder="MM/DD/YYYY" type="text" path="birthday" required="true" />
					</div>
					<form:errors path="birthday" element="div"  cssClass="error"/>
				</div>
			</div>
			<button class="btn btn-primary" type="submit">Submit</button>
		</form:form>
	</div>
</div>


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


