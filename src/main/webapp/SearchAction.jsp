<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
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

<title>hello world</title>
</head>
<body>
	<div class="container">
		<h1 style="text-align: center">Item_Information</h1>
		<table class="table table-striped table-hover">
			<thead>
				<tr>
					<th scope="col">id</th>
					<th scope="col">Item_name</th>
					<th scope="col">Weight</th>
					<th scope="col">Brand_Name</th>
					<th scope="col">expy_date</th>
					<th scope="col">mfd_date</th>
					<th scope="col">price</th>
				</tr>
			</thead>
			<%
			try {
				Connection con = ConnectionProvider.CreateConnection();
				// 				String query = "select *from item";
				String search = request.getParameter("search");
				String query = "SELECT * FROM item WHERE id LIKE '%" + search + "%'OR ItemName LIKE '%" + search
				+ "%'OR Weight LIKE '%" + search + "%'OR BrandName LIKE '%" + search + "%'OR ExpiryDate LIKE '%" + search
				+ "%'OR MfdDate LIKE '%" + search + "%'OR Price LIKE '%" + search + "%' ";

				Statement stmt = con.createStatement();
				ResultSet set = stmt.executeQuery(query);
				while (set.next()) {
			%>
			<tbody>
				<tr>
					<td><%=set.getInt(1)%></td>
					<td><%=set.getString(2)%></td>
					<td><%=set.getString(3)%></td>
					<td><%=set.getString(4)%></td>
					<td><%=set.getString(5)%></td>
					<td><%=set.getString(6)%></td>
					<td><%=set.getString(7)%></td>
					<td><a href="DeleteAction.jsp?id=<%=set.getInt(1)%>"
						class="btn btn-danger">delete</a></td>
					<td><a href="Update.jsp?id=<%=set.getInt(1)%>"
						class="btn btn-primary">Update</a></td>
				</tr>
				<%
				}
				} catch (Exception e) {
				out.print(e);
				e.printStackTrace();
				}
				%>
			</tbody>
		</table>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>


</body>
</html>