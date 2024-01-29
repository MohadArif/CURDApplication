<%
    request.getSession();
    session.invalidate();
    response.sendRedirect("Login.jsp");
%>