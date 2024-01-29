<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.connectionProvider.ConnectionProvider"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="NavBar.jsp"%>
<%@ page errorPage="Error.jsp"%>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">

<title>Hello, world!</title>
</head>
<body>
	<div class="container">
		<h1 style=" text-align:center">Update_Details</h1>
		<form action="UpdateAction.jsp">
			<%
			try {
				int id = Integer.parseInt(request.getParameter("id"));
				Connection con = ConnectionProvider.CreateConnection();
				String query = "select * from item where id="+id;
				Statement pre = con.createStatement();
				ResultSet set = pre.executeQuery(query);
				while (set.next()) {
			%>
			<div class="mb-3">
				<label for="IdNumberForm" class="form-label" >id</label> <input
					type="text" name="id" class="form-control"
					value="<%=set.getString(1)%>" id="FirstNameForm"
					aria-describedby="emailHelp" readonly>
			</div>
			<div class="mb-3">
				<label for="FirstNameForm" class="form-label">ItemName </label> <input
					type="text" name="ItemName" class="form-control"
					value="<%=set.getString(2)%>" id="FirstNameForm"
					aria-describedby="emailHelp">
			</div>
			<div class="mb-3">
				<label for="exampleInputPassword1" class="form-label">Weight</label>
				<input type="text" name="Weight" class="form-control"
					value="<%=set.getString(3)%>" id="exampleInputPassword1">
			</div>
			<div class="mb-3">
				<label for="MadeInNameForm" class="form-label">BrandName</label> <input
					type="text" name="BrandName" class="form-control"
					value="<%=set.getString(4)%>" id="MadeInNameForm">
			</div>
			<div class="mb-3">
				<label for="ExpiryNameForm" class="form-label">ExpiryDate</label> <input
					type="text" name="ExpiryDate" class="form-control"
					value="<%=set.getString(5)%>" id="ExpiryNameForm">
			</div>
			<div class="mb-3">
				<label for="BranchNameForm" class="form-label">mfd_date</label> <input
					type="text" class="form-control" name="MfdDate"
					value="<%=set.getString(6)%>" id="BranchNameForm">
			</div>
			<div class="mb-3">
				<label for="ItemPriceForm" class="form-label">Price</label> <input
					type="text" name="Price" class="form-control"
					value="<%=set.getString(7)%>" id="ItemPriceForm">
			</div>
			
			<button type="submit" class="btn btn-primary" onclick="warn()">Submit
			<script>
					function warn() {
						window.alert("Update successfull..");
					}
				</script>
			</button>
			<%
			}
			} catch (Exception e) {
			out.print(e);
			}
			%>
		</form>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>


</body>
</html>