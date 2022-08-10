<%@ taglib prefix="ud" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<!--css bootstrap-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<style type="text/css">
.container {
padding-top: 80px !important;
}
</style>

    <title>manageCar</title>
</head>

<%if(session.getAttribute("user_role").equals("ADMIN")){%>
	<jsp:include page="headerAdmin.jsp"/>
<%} %>
<%if(session.getAttribute("user_role").equals("USER")){%>
	<jsp:include page="headerUser.jsp"/>
<%} %>

<body class="bg-dark">
    <!--table---->
    <div class="container">
    <table class="table table-success table-striped center">
        <thead>
          <tr>
            <th scope="col">id</th>
            <th scope="col">make</th>
            <th scope="col">model</th>
            <th scope="col">release</th>
            <th scope="col">price</th>
            <th scope="col">description</th>
          </tr>
        </thead>
        
        <ud:forEach var="car" items="${listCar}">
        <tbody>
          <tr>
           <td>${car.car_id}</td>
	       <td>${car.model}</td>
	       <td>${car.make}</td>
	       <td>${car.year}</td> 
	       <td>${car.price}</td> 
	       <td>${car.description}</td> 
          </tr>
        </tbody>
        </ud:forEach>
        
      </table>
    </div>
      <!--table end-->

    <!--delete section-->
    <center>
        <form action="deleteCar" >
                 <input type="text" name="cid"/>
                 <input type="submit" value="Delete Car">
             </form>
     </center>
     <!--delete section end-->

</body>
</html>