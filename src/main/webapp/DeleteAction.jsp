<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.connectionProvider.ConnectionProvider"%>
<%@page import="java.sql.Connection"%>

<%
try{
	  int id  = Integer.parseInt(request.getParameter("id"));
// 	  String  ItemName=request.getParameter("ItemName");
	  Connection con=ConnectionProvider.CreateConnection();
	  String query="delete from item where id=?";
	  PreparedStatement pre=con.prepareStatement(query);
 	  pre.setInt(1, id);
    int i=pre.executeUpdate();
    if(i>0){
  	  response.sendRedirect("fetch.jsp");
    }else{
    	out.print("sorry data not deleted....");
    }
}catch(Exception e){
	out.print(e);
	e.printStackTrace();
}


%>