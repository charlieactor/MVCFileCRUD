<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />
<link type="text/css" href="HikeSiteStyles.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Lemonada" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Hike Results</title>

</head>
<body>
<div class="navbar-wrapper">
    <div class="navbar navbar-inverse navbar-static-top">
      <div class="container">
        <a href="index.html" class="navbar-brand"><span id="name">Top Hikes Near Denver</span></a>

      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navHeaderCollapse" aria-expanded="false" aria-controls="navbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <div class="collapse navbar-collapse navHeaderCollapse">
        <ul class="nav navbar-nav navbar-right">
         <li><a href="seeAllHikes.do?">Top Hikes</a></li>
         <li><a href="search.html">Search</a></li>
         <li><a href="addHike.html">Add a Hike</a></li>
         <li><a href="editHikes.do">Update and Delete Hikes</a></li>
       </ul>
      </div>
   </div>
  </div>
</div>
	<div class="bground">
	
	<div class="search">
	<h2 class="header">${hike.name}</h2>
	<hr>
	<div class="col-md-6">
	<c:choose>
	  <c:when test="${! empty hike}">
	    <ul>
	      <li>${hike.name}</li>
	      <li>${hike.difficulty}</li>
	      <li>${hike.length} miles in length</li>
	      <li>${hike.distanceFromDenver} miles from Denver</li>
	      <li>${hike.fact}</li>
	    </ul>
	  </c:when>
	  <c:otherwise>
	   <p>Hike not found</p>
	  </c:otherwise>
	
	</c:choose>
	  </div>
	  <div class="col-md-6">
	  <iframe
  width="600"
  height="450"
  frameborder="0" style="border:0"
  src="https://www.google.com/maps/embed/v1/place?key=AIzaSyD3DbeUZ_Rhm0gDXENEV1ILJQrHUzVPtfM
    &q=${hike.name}, Denver+CO" allowfullscreen>
</iframe>
	  
	  </div>
	</div>
	<BR><BR><BR><BR><BR><BR><BR><BR><BR><BR>
	<BR><BR><BR><BR><BR><BR><BR><BR><BR><BR>
	<BR><BR><BR><BR><BR>
	</div>
</body>
</html>