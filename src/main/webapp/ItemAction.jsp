<%@ page errorPage="Error.jsp"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.connectionProvider.ConnectionProvider"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
      String ItemName=request.getParameter("ItemName");
      String Weight=request.getParameter("Weight");
      String  Brand=request.getParameter("BrandName");
      String ExpiryDate=request.getParameter("ExpiryDate");
      String MfdDate=request.getParameter("MfdDate");
      String Price=request.getParameter("Price");
      try{
    	  Connection con=ConnectionProvider.CreateConnection();
    	  String query="insert into item(ItemName,Weight,BrandName,ExpiryDate,MfdDate,Price) values(?,?,?,?,?,?)";
    	  PreparedStatement pre=con.prepareStatement(query);
    	  pre.setString(1, ItemName);
    	  pre.setString(2, Weight);
    	  pre.setString(3, Brand);
    	  pre.setString(4, ExpiryDate);
    	  pre.setString(5, MfdDate);
    	  pre.setString(6, Price);
    	  int result=pre.executeUpdate();
//     	  out.println(result+" affected");
//     	  request.getSession();
// 			session.setAttribute("ItemName",ItemName);

          
      }catch(Exception e){
    	  out.print(e);
      }
     response.sendRedirect("fetch.jsp");

%>