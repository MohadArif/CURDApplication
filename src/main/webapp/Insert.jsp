<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ include file="NavBar.jsp" %>
	  <%@ page errorPage="Error.jsp" %>
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
	<h1 style=" text-align:center">Item_Details</h1>
	<form action="ItemAction.jsp">
		<div class="mb-3">
			<label for="FirstNameForm" class="form-label">ItemName
				</label> <input type="text"  name="ItemName" class="form-control"
				id="FirstNameForm" aria-describedby="emailHelp">
		</div>
		<div class="mb-3">
			<label for="exampleInputPassword1" class="form-label">Weight</label>
			<input type="text" name="Weight" class="form-control"
				id="exampleInputPassword1">
		</div>
		<div class="mb-3">
			<label for="BranchNameForm" class="form-label">BrandName</label>
			<input type="text" class="form-control" name="BrandName"
				id="BranchNameForm">
		</div>
		<div class="mb-3">
			<label for="ExpiryNameForm" class="form-label">ExpiryDate</label>
			<input type="text" name="ExpiryDate"class="form-control"
				id="ExpiryNameForm">
		</div>
		<div class="mb-3">
			<label for="ItemPriceForm" class="form-label">MfdDate</label>
			<input type="text" name="MfdDate"class="form-control"
				id="ItemPriceForm">
		</div>
		<div class="mb-3">
			<label for="MadeInNameForm" class="form-label">Price</label>
			<input type="text" name="Price"class="form-control"
				id="MadeInNameForm">
		</div>
		<button type="submit" class="btn btn-primary">Submit</button>
	</form>
</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>


</body>
</html>