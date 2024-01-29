<%
try{
    String email=request.getParameter("email");
    String password=request.getParameter("password");
    if(email.equals("email@gmail.com")&&password.equals("12345")){
 	   session.setAttribute("email", email);
 	   response.sendRedirect("Home.jsp");
    }else{
 	   response.sendRedirect("Login.jsp");
    }
   }catch(Exception e){
 	  out.print(e);
   }
%>