<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body> 
<%
 String email = session.getAttribute("email").toString(); 
	//String email = (String) session.getAttribute("email"); 
%>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark"> 
  <div class="container-fluid">
    <a class="navbar-brand" href="#"><%=email %></a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="Home.jsp">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="fetch.jsp">Fetch</a>
        </li>
         <li class="nav-item">
          <a class="nav-link" href="Insert.jsp">Insert_Data</a>
        </li>
<!--         <li class="nav-item dropdown"> -->
<!--           <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false"> -->
<!--             Dropdown -->
<!--           </a> -->
<!--           <ul class="dropdown-menu" aria-labelledby="navbarDropdown"> -->
<!--             <li><a class="dropdown-item" href="#">Action</a></li> -->
<!--             <li><a class="dropdown-item" href="#">Another action</a></li> -->
<!--             <li><hr class="dropdown-divider"></li> -->
<!--             <li><a class="dropdown-item" href="#">Something else here</a></li> -->
<!--           </ul> -->
<!--         </li> -->
<!--         <li class="nav-item"> -->
<!--           <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a> -->
<!--         </li> -->
      </ul>
      <form action="SearchAction.jsp" class="d-flex">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search" name="search">
        <button class="btn btn-outline-success" type="submit">Search</button>&nbsp;
        <a href="LogoutAction.jsp" class="btn btn-danger" > logout</a>  
      </form>
    </div>
  </div>
</nav>
</body>
</html>