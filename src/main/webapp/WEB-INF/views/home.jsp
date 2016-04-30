<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<div id="bg">
	<br><br><br><br><br><br><br><br><br>
	<div class="row">
	  <div class="col-md-4 col-md-offset-3">
	      <form:form modelAttribute="locationDTO" method="GET" class="form-inline" action="/search">
		      <div class="form-group">
	      		<button class="btn btn-danger" type="submit">Go!</button><form:input style="height: 36px;" class="form-control registration-form-input-field" path="location" value="" required="true" placeholder="City or ZIP code..."/>
	      	</div>
	      </form:form>
	  </div>
	</div>
</div>

