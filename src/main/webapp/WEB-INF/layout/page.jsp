<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="t" uri="http://tiles.apache.org/tags-tiles" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>FlatSpection</title>
	
	<link rel="icon" href='<c:url value="/resources/images/logo3.png" />'/>
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/style.css" />" />
	
	<!-- Bootstrap -->
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	  
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/starter-template.css" />" />
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/font-awesome.css" />" />
    
    <script src="http://maps.google.com/maps/api/js?sensor=true"></script>
    
    <!-- icons -->
    <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css">
    <!-- Three -->
    <script src="//cdnjs.cloudflare.com/ajax/libs/three.js/r69/three.min.js"></script>
</head>
<body>
	<div id="header">
		<t:insertAttribute name="header" />
	</div>
    
    <div class="container">

      <div class="starter-template">
		<t:insertAttribute name="body" />
      </div>
     </div>
	
	<div id="footer">
		<t:insertAttribute name="footer" />
	</div>
	
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>