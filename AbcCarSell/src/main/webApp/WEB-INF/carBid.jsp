<%@ taglib prefix="ud" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<!--  Enable Bootstrap -->
    <link rel="stylesheet"
        href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css?family=Lato"
        rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat"
        rel="stylesheet" type="text/css">

    <link rel="stylesheet" href="../CSS/style.css">

    <title>car Bid</title>
    
    <style type="text/css">
    .row.header{
    padding-top: 100px;
    }
    </style>
</head>
<body>

<%if(session.getAttribute("user_role").equals("ADMIN")){%>
	<jsp:include page="headerAdmin.jsp"/>
<%} %>
<%if(session.getAttribute("user_role").equals("USER")){%>
	<jsp:include page="headerUser.jsp"/>
<%} %>

<!-- First Container -->
	<div class="container-fluid bg-1">
	
		<div class="row header">
		<h3 class="margin text-center">Detail Car Information !</h3>

			<form class="form-horizontal">
			<div class="col-md-8">

					<div class="form-group">
						<label for="make" class="control-label col-sm-4">Car model:
						</label>
						<div class="col-sm-8">${car.model}</div>
					</div>

					<div class="form-group">
						<label for="model" class="control-label col-sm-4">Car make: </label>
						<div class="col-sm-8">${car.make}</div>
					</div>

					<div class="form-group">
						<label for="reg" class="control-label col-sm-4">price: </label>
						<div class="col-sm-8">${car.price}</div>
					</div>
					
					<div class="form-group">
						<label for="reg" class="control-label col-sm-4">year: </label>
						<div class="col-sm-8">${car.year}</div>
					</div>

					<div class="form-group">
						<label for="price" class="control-label col-sm-4">car description: </label>
						<div class="col-sm-8">${car.description}</div>
					</div>
					</form>
					
					<hr />

					<div class="form-group">
						<div class="col-sm-8" style="padding: 20px;">

							<sf:form action="../carBidd" method="post" modelAttribute="carBidding">
									
									<sf:input type="hidden" path="car" value="${car.car_id}" />
									
									<sf:input type="hidden" path="user" value="${user_id}" />
									
									<sf:input type="number" path="price" 
									placeholder="Enter Bid Price" name="bitprice" />
									
								<div class="form-group" style="padding: 20px;">
								
									<input type="submit" value="Bit Car" class="btn btn-success" />
									
									<a href="/home" class="btn btn-danger">Go Back</a>
								</div>

							</sf:form>
						</div>

					</div>

			</div>
			

			<div class="col-md-3 bg-3">
				<h4> Current Bidding Price!</h4><br/>
				
			<ud:forEach var="bid" items="${bidder}">
				
				<div class="card mb-3 card bg-info" style="padding:10px;">
				
					<div class="row" >
						<div class="col-md-6">
							<p>${bid.getUser().getUsername()}</p>
						</div>
						<div class="col-md-6">
							<div class="card-body">
								<p class="card-text">Bidded Price: ${bid.price}</p>
						
							</div>
						</div>
					</div>
				</div>
				
				<hr/>
			</ud:forEach>

			</div>


		</div>




	</div>

<%@include file="footer.jsp" %>

</body>
</html>