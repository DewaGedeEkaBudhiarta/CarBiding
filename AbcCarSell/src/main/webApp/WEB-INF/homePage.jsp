<%@ taglib prefix="ud" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="search_index" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<!--css bootstrap-->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    
  <title>homePage</title>
  <style>
    .bg-sm-side{
      background: url("../images/forza-forza-horizon-4-video-games-car-wallpaper-preview.jpg") center no-repeat;
      background-size: cover;
      height: 100%;
    }
  </style>
</head>

<body class="bg-dark">

<%if(session.getAttribute("user_role").equals("ADMIN")){%>
	<jsp:include page="headerAdmin.jsp"/>
<%} %>
<%if(session.getAttribute("user_role").equals("USER")){%>
	<jsp:include page="headerUser.jsp"/>
<%} %>

<!--First Layout-->
  <section role="cupoun">
    <div class="container pt-5">
      <div class="row pt-5">
      
      <form class="d-flex" style= "margin-bottom:5%"; method="post" action="/search">
      
        <input type ="hidden" name ="${_csrf.parameterName }" value ="${_csrf.token }"/>
        
		<input class="form-control me-2" type="text" placeholder="Search"
		aria-label="Search" name="search">
		<button class="btn btn-outline-light" type="submit">Search</button>
	 </form>

        <!--card-->
        <ud:forEach var="car" items="${showCar}">
        
        <a href="/carBid/${car.car_id }">
        
        <div class="col-md-12" style="cursor:pointer">
          <div class="card mb-3">
            <div class="row g-0">
              <div class="col-md-6">
                <div class="bg-sm-side">
                </div>
              </div>
              <div class="col-md-6">
                <div class="card-body py-2 px-2">
                  <h5 class="card-title">model</h5>
                  <input type="text" class="form-control" id="model" placeholder="model" value="${car.model}" readonly="readonly">
                  
                  <p class="card-text">make</p>
                  <input type="text" class="form-control" id="make" placeholder="make" value="${car.make}" readonly="readonly">
                  
                  <p class="card-text">price $</p>
                  <input type="number" class="form-control" id="price" placeholder="price" value="${car.price}" readonly="readonly">
                  
                  <small class="text-muted">release</small>
                  <input type="number" class="form-control" id="release" placeholder="year" value="${car.year}" readonly="readonly">
                  
                  <p class="card-text">Description</p>
                  <input type="text" class="form-control" id="description" placeholder="description" value="${car.description}" readonly="readonly">
                  
                </div>
              </div>
            </div>
          </div>
        </div>
        
        </a>
        
        </ud:forEach>
        <!--card end-->

      </div>
    </div>
  </section>
<!--First Layout end-->

<!-- contactUS start -->
<%@include file="contactUs.jsp" %>
<!-- contactUS end -->  

<%@include file="footer.jsp" %>
</body>
</html>