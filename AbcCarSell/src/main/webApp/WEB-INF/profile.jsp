<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<!--css bootstrap-->
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- style -->
<style type="text/css">
.container{
padding-top: 80px !important;
}
</style>

    <title>profile</title>
</head>
<body style="background: black;">
 
<%if(session.getAttribute("user_role").equals("ADMIN")){%>
	<jsp:include page="headerAdmin.jsp"/>
<%} %>
<%if(session.getAttribute("user_role").equals("USER")){%>
	<jsp:include page="headerUser.jsp"/>
<%} %>
    
<div class="container bootstrap snippets bootdeys">
<div class="row">
  <div class="d-flex" style="width: 50%;">
    <form class="form-horizontal" style="width: 100%;">

        <div class="panel panel-default">
          <div class="panel-body text-center">
           <img src="../images/3135715.png" style="width: 20%;" alt="User avatar">
          </div>
        </div>

      <div class="panel panel-default">
        <div class="panel-heading">
        <h4 class="panel-title">Info Profile</h4>
        </div>
        <div class="panel-body">
          
          <div class="form-group">
            <label class="col-sm-2 control-label" style="display:none;">ID</label>
            <div class="col-sm-10">
              <input type="text" class="form-control" value="${viewProfile.id_user}" style="display:none;">
            </div>
          </div>
          
          <div class="form-group">
            <label class="col-sm-2 control-label">Username</label>
            <div class="col-sm-10">
              <input type="text" class="form-control" readonly="readonly" value="${viewProfile.username}">
            </div>
          </div>

          <div class="form-group">
            <label class="col-sm-2 control-label">E-mail address</label>
            <div class="col-sm-10">
              <input type="email" class="form-control" readonly="readonly" value="${viewProfile.email}">
            </div>
          </div>

 		 <div class="form-group">
            <label class="col-sm-2 control-label" style="display:none;">password</label>
            <div class="col-sm-10">
              <input type="email" class="form-control" value="${viewProfile.password}" style="display:none;">
            </div>
          </div>
          
           <div class="form-group">
            <label class="col-sm-2 control-label" style="display:none;">roles</label>
            <div class="col-sm-10">
              <input type="email" class="form-control" value="${viewProfile.role}" style="display:none;">
            </div>
          </div>

      </div>

    </form>
  </div>
</div>
</div>
<!--profile end-->
</body>
</html>