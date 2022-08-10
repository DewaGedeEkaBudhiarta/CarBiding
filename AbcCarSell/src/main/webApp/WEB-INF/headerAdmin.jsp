<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<!--css bootstrap-->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<title>header admin</title>
</head>
<body>

<!--header-->
	
		<nav class="navbar navbar-expand-lg navbar-dark bg-dark text-light fixed-top">
		<div class="container-fluid" style="padding: 0;">
			<a class="navbar-brand text-success" href="/home"><img
				src="../images/used-car-logo.png" style="padding: 5px; width: 85px;"
				alt="image"> Abc Car</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="/home">Home</a></li>
											
					<li class="nav-item"><a class="nav-link" href="/postCar">Sell Car</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="/mngCar">ListCar</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="/mngUser">listUser</a>
					</li>
				</ul>
				
				<div class="ps-5">
					<a href="/logout">
					<button type="button" class="btn btn-success">
					logout
					</button>
					</a>
				</div>

			</div>
		</div>
	</nav>
	<!--header-->

	<!--js bootstrap-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>

</body>
</html>