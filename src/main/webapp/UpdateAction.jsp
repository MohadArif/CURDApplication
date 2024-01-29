<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.connectionProvider.ConnectionProvider"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page errorPage="Error.jsp"%>
<%
try {
	
	int id=Integer.parseInt(request.getParameter("id"));
	
	String ItemName = request.getParameter("ItemName");
	String Weight = request.getParameter("Weight");
	String Brand = request.getParameter("BrandName");
	String ExpiryDate = request.getParameter("ExpiryDate");
	String MfdDate = request.getParameter("MfdDate");
	String Price = request.getParameter("Price");
	Connection con = ConnectionProvider.CreateConnection();
	String query = "update item set ItemName=?,Weight=?,BrandName=?,ExpiryDate=?,MfdDate=?,Price=? where id=?";
	PreparedStatement pre = con.prepareStatement(query);
	pre.setString(1, ItemName);
	pre.setString(2, Weight);
	pre.setString(3, Brand);
	pre.setString(4, ExpiryDate);
	pre.setString(5, MfdDate);
	pre.setString(6, Price);
	pre.setInt(7, id);
	int i = pre.executeUpdate();
	if (i > 0) {
		response.sendRedirect("fetch.jsp");
	}
} catch (Exception e) {
	out.print(e);
	e.printStackTrace();
}
%>