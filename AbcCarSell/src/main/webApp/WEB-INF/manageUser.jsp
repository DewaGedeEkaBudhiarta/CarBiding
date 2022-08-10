<%@ taglib prefix="ud" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<!--css bootstrap-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<!-- style -->
<style type="text/css">
.container {
padding-top: 80px !important;
}
</style>

    <title>manageUser</title>
</head>
<body class="bg-dark">

<%if(session.getAttribute("user_role").equals("ADMIN")){%>
	<jsp:include page="headerAdmin.jsp"/>
<%} %>
<%if(session.getAttribute("user_role").equals("USER")){%>
	<jsp:include page="headerUser.jsp"/>
<%} %>

    <!--table---->
    <div class="container">
    <table class="table table-success table-striped center">
        <thead>
          <tr>
            <th scope="col">id</th>
            <th scope="col">Username</th>
            <th scope="col">Email</th>
            <th scope="col">Update</th>
          </tr>
        </thead>
        
        <ud:forEach var="user" items="${listUser}">
        <tbody>
          <tr>
            <td>${user.id_user}</td>
	        <td>${user.username}</td>
	        <td>${user.email}</td>	        
            <td><a href="updateUser/${user.id_user}" style="color:blue">Update</a></td>
          </tr>
        </tbody>
        </ud:forEach>
        
      </table>
    </div>
      <!--table end-->

    <!--delete section-->
    <center>
        <form action="deleteUser" >
                 <input type="text" name="pid"/>
                 <input type="submit" value="Delete User">
             </form>
     </center>
     <!--delete section end-->

</body>
</html>