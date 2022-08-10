<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<!--css bootstrap-->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">

<!-- style -->
<style type="text/css">
.container{
padding-top: 80px !important;
}
</style>

    <title>Profile user</title>
</head>
<body class="bg-dark">

<%if(session.getAttribute("user_role").equals("ADMIN")){%>
	<jsp:include page="headerAdmin.jsp"/>
<%} %>
<%if(session.getAttribute("user_role").equals("USER")){%>
	<jsp:include page="headerUser.jsp"/>
<%} %>

  <!--profile Start-->  
  <div class="container">
	<div class="main-body">
		<div class="row">
		
		<form action="/updateConfirm" method="get">
		
			<div class="col-lg-4">
				<div class="card mt-5">
					<div class="card-body">
						<div class="d-flex flex-column align-items-center text-center">
							<img src="https://bootdey.com/img/Content/avatar/avatar6.png" alt="Admin" class="rounded-circle p-1 bg-primary" width="110">
							<div class="mt-3">
								<h4>${updateProfile.username}</h4>
							</div>
						</div>
						<hr class="my-4">
					</div>
				</div>
			</div>
			
			<div class="col-lg-8">
				<div class="card mt-5">
					<div class="card-body">
						<div class="row mb-3">
							<div class="col-sm-3">
								<h6 class="mb-0">User Name</h6>
							</div>
							
							<div class="col-sm-9 text-secondary">
							<input class="form-control" name="uid" value="${updateProfile.id_user}" style="display:none;">
							</div>
							
							<div class="col-sm-9 text-secondary">
								<input type="text" class="form-control" name="Username" value="${updateProfile.username}">
							</div>
						</div>
						<div class="row mb-3">
							<div class="col-sm-3">
								<h6 class="mb-0">Email</h6>
							</div>
							<div class="col-sm-9 text-secondary">
								<input type="text" class="form-control" name="Email" value="${updateProfile.email}">
							</div>
						</div>
						
						<div class="row mb-3">
							<div class="col-sm-3">
								<h6 class="mb-0" style="display:none;">password</h6>
							</div>
							<div class="col-sm-9 text-secondary">
								<input type="text" class="form-control" name="Password" value="${updateProfile.password}" style="display:none;">
							</div>
						</div>
						
						<div class="row mb-3">
							<div class="col-sm-3">
								<h6 class="mb-0" style="display:none;">roles</h6>
							</div>
							<div class="col-sm-9 text-secondary">
								<input type="text" class="form-control" name="Role" value="${updateProfile.role}" style="display:none;">
							</div>
						</div>
						
						<div class="form-group">
				           <div class="col-sm-10 col-sm-offset-2">
				             <button type="submit" class="btn btn-primary" value="Submit">Submit</button>
				             <button type="reset" class="btn btn-default">Cancel</button>
				             
				              <input type ="hidden" name ="${_csrf.parameterName }" value ="${_csrf.token }"/>
				           </div>
				       </div>
						
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