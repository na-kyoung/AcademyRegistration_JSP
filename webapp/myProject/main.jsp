<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<title>Insert title here</title>
<style>
      .d-block {
        height: 100vh;
        width: 100vw;
      }
</style>
</head>
<body>
	<div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
 	  <div class="carousel-indicators">
	    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
	    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
	    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
	  </div>
	  <div class="carousel-inner">
	    <div class="carousel-item active" onclick="location.href='main_sub.jsp'">
	      <img src="./assets/coding.jpg" class="d-block" alt="...">
	      <div class="carousel-caption d-none d-md-block">
	        <h3>Let's IT</h3>
	        <p>아무곳이나 클릭하세요.</p>
	      </div>
	    </div>
	    <div class="carousel-item" onclick="location.href='main_sub.jsp'">
	      <img src="./assets/main1.jpg" class="d-block w-100" alt="...">
	      <div class="carousel-caption d-none d-md-block">
	        <h3>Let's IT</h3>
	        <p>아무곳이나 클릭하세요.</p>
	      </div>
	    </div>
	    <div class="carousel-item" onclick="location.href='main_sub.jsp'">
	      <img src="./assets/coding3.jpg" class="d-block w-100" alt="...">
	      <div class="carousel-caption d-none d-md-block">
	        <h3>Let's IT</h3>
	        <p>아무곳이나 클릭하세요.</p>
	      </div>
    	</div>
	  </div>
	</div>
</body>
</html>