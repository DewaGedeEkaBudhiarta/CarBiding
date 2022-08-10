<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <!--css bootstrap-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<!--css-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/MaterialDesign-Webfont/5.3.45/css/materialdesignicons.css" integrity="sha256-NAxhqDvtY0l4xn+YVa6WjAcmd94NNfttjNsDmNatFVc=" crossorigin="anonymous" />

<title>Landing Page</title>
</head>
<body class="bg-dark">

<%@include file="header.jsp" %>

 <!--First Layout-->
    <div class="text-light">

        <!--carosel images-->
        <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-indicators">
              <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
              <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
              <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
            </div>
            <div class="carousel-inner">
              <div class="carousel-item active">
                <img src="../images/mobil-balap-keren.jpg" class="d-block w-100" alt="images" style="height: 78vh;">
                <div class="carousel-caption">
                  <h5>contain hundred of cars</h5>
                  <p>contain many information of brand new car</p>
                </div>
              </div>
              <div class="carousel-item">
                <img src="../images/mobil-sport-murah.jpg" class="d-block w-100" alt="images2" style="height: 78vh;">
                <div class="carousel-caption">
                  <h5>sell your car</h5>
                  <p>sell your car to gain more budget</p>
                </div>
              </div>
              <div class="carousel-item">
                <img src="../images/forza-forza-horizon-4-car-snow-wallpaper-preview.jpg" class="d-block w-100" alt="images3" style="height: 78vh;">
                <div class="carousel-caption">
                  <h5>trusworth information</h5>
                  <p>with the detailed information of the car</p>
                </div>
              </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
              <span class="visually-hidden">Next</span>
            </button>
          </div>
        <!--carosel images end-->

        <div class="row text-center align-items-center mt-5">
          <div class="col-12">
            <img src="../images/3135715.png" width="150" height="150" alt="my image"  />

           <h2 class="mt-5"> ABC CarPortal</h2>
           <p>hello welcome</p>
          </div>
        </div>
        
        <!--card car-->
        <div class="container">
          <div class="row gx-1">

            <div class="col-md-4 g-4">
              <div class="card" style="width: 85%;">
                <img src="../images/forza-forza-horizon-4-video-games-car-wallpaper-preview.jpg" class="card-img-top" alt="images">
                <div class="card-body">
                  <h5 class="card-title text-center text-dark">Card 1</h5>
                  <p class="card-text text-dark">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                  <a href="contactUs.html" class="btn btn-dark d-block">contact</a>
                </div>
                <span class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger">
                  $9000
                </span>
              </div>
            </div>
  
            <div class="col-md-4 g-4">
              <div class="card" style="width: 85%;">
                <img src="../images/forza-forza-horizon-4-video-games-car-wallpaper-preview.jpg" class="card-img-top" alt="images">
                <div class="card-body">
                  <h5 class="card-title text-center text-dark">Card 2</h5>
                  <p class="card-text text-dark">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                  <a href="listCar.html" class="btn btn-dark d-block">list car</a>
                </div>
                <span class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger">
                  99+
                </span>
              </div>
            </div>
  
            <div class="col-md-4 g-4">
              <div class="card" style="width: 85%;">
                <img src="../images/forza-forza-horizon-4-video-games-car-wallpaper-preview.jpg" class="card-img-top" alt="images">
                <div class="card-body">
                  <h5 class="card-title text-center text-dark">Card 3</h5>
                  <p class="card-text text-dark">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                  <a href="aboutUS.html" class="btn btn-dark d-block">AboutUS</a>
                </div>
                <span class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger">
                  99+
                </span>
              </div>
            </div>
          </div>

        </div>
        
        <!--card car end-->
        
      </div>
    <!--First Layout end-->

<!-- aboutUS start -->
<%@include file="aboutUs.jsp" %>
<!-- aboutUS end -->  

<!-- contactUS start -->
<%@include file="contactUs.jsp" %>
<!-- contactUS end -->  


<%@include file="footer.jsp" %>

</body>
</html>