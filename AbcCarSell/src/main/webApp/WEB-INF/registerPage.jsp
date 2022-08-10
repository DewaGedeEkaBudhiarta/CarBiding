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
      }
      .jumbotron.formLogin{
        width: 500%;
        padding:20px !important ;
        background-color: black !important;
        padding-top: 80px !important;
      }
      input[type="text"],
      input[type="password"], 
      input[type="email"]{
        background: black !important;
        color: white !important;
        border: 2px solid #1A4D2E !important;
      }
      input[type="text"]:focus,
      input[type="password"]:focus,
      input[type="email"]:focus{
        outline: none !important;
        border: none !important;
        background: black !important;
        color: white !important;
      }
      .text-muted{
        font-weight: 900 !important;
        padding-bottom: 20px !important;
        color: #1A4D2E !important;
      }
      .btn{
        background: #1A4D2E !important;
        color: black !important;
      }
    </style>

    <title>register</title>
</head>
<body style="background-color: black;">
     
  <%@include file="header.jsp" %>
     
    <!--first layout-->
  
    <div class="container bootstrap snippets bootdey conform">
      <div style="height:auto;min-height:300px;" class="jumbotron formLogin ">
        <div class="col-md-4">
           <img class="img-responsive center-block img-user" src="../images/3135715.png" style="width: 174px;"> 
        </div>
        <div class="col-md-6 form-content">
        
          <sf:form accept-charset="utf-8" id="UserLoginForm" class="form-signin" action="registered" method="post" modelAttribute="data">    	
            <h1 class="form-signin-heading text-muted">Register</h1>
            
            <sf:input path="username" type="text" id="username" autofocus="autofocus" placeholder="Username" class="form-control" name="username"
            required="required" title="Please enter username."/>
            
            <sf:input path="email" type="email" id="email" autofocus="autofocus" placeholder="email" class="form-control" name="email"
            required="required" title="Please enter email." />
            
            <sf:input path="password" type="password" id="password" placeholder="Password" class="form-control" name="password"
            required="required" pattern="[a-zA-Z0-9]*" title="Please make a password."/>			
            
            <button type="submit" class="btn btn-lg btn-info btn-block">
              <i class="fa fa-share"></i>
              Sign Up
            </button>
          </sf:form>
              
              <p style="color:green">You already have an account? Then please <a class="blue" href="/login">Sign in</a></p> 
              
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