<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">


<!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <link rel="stylesheet" href="../CSS/login.css">

    <style>
      .container.conform{
        display: flex !important;
        align-items: center !important;
        justify-content: center !important;
        padding-top: 80px !important;
      }
      .jumbotron.formLogin{
        width: 500%;
        padding:20px !important ;
      }
      input[type="text"],
      textarea{
        border: 2px solid rgb(4, 4, 92) !important;
      }
      input[type="text"]:focus,
      textarea:focus{
        outline: none !important;
        border: none !important;
        background: white !important;
        color: black !important;
      }
      .text-muted{
        font-weight: 900 !important;
        padding-bottom: 20px !important;
        color: blueviolet !important;
        font-size: xx-large !important;
      }
      .btn{
        background: blueviolet !important;
        color: white !important;
      }
    </style>


    <title>postCar</title>
</head>
<body style="background-color: black;">

<%if(session.getAttribute("user_role").equals("ADMIN")){%>
	<jsp:include page="headerAdmin.jsp"/>
<%} %>
<%if(session.getAttribute("user_role").equals("USER")){%>
	<jsp:include page="headerUser.jsp"/>
<%} %>
     
    <!--first layout-->
    <div class="container bootstrap snippets bootdey conform">
      <div class="jumbotron formLogin">
        <div class="col-md-6">
           <img class="img-responsive center-block" src="../images/2009_audi_s4-wide.jpg" style="height: 400px; width: 300px; padding-top: 90px; padding-bottom: 90px;"> 
        </div>
        <div class="col-md-6 form-content">
          <sf:form accept-charset="utf-8" method="post" id="UserLoginForm" class="form-signin" action="postCar" modelAttribute="carPost" >    	
            <h1 class="form-signin-heading text-muted">Sell Your Car</h1>
            
            <sf:input type="text" path="model" id="model" autofocus="autofocus" placeholder="model" class="form-control text-center" name="model"
            required="required" title="Please enter car model." />

            <sf:input type="text" path="make" id="make" placeholder="make" class="form-control text-center" name="make" 
            required="required" title="Please enter car make."/>

            <sf:input type="number" path="year" id="release" placeholder="release" class="form-control text-center" name="release"
            required="required" title="Please enter car year release." />	

           <sf:input type="number" path="price" id="price" placeholder="price" class="form-control text-center" name="price $" 
           required="required" title="Please enter car price."/>
            
            <div class="form-floating">
                <sf:textarea path="description" class="form-control" placeholder="Leave a description here" id="floatingTextarea2" style="height: 100px" 
                required="required" title="Please enter car description."/></textarea>
              </div>
          
            <div style="padding-top: 20px;">
              <button type="submit" class="btn btn-lg btn-info btn-block">
                <i class="fa fa-share"></i>
                Sell
              </button>
            </div>
            
          </sf:form>    
        </div>
      </div>
    </div>
    <div class="col-md-12">     
      <div class="container bootstrap snippets bootdey">     
        <footer class="footer">
          <p>&copy; Company name 2015</p>
        </footer>
      </div>
    </div>
    <!--first layout end-->
  
</body>
</html>