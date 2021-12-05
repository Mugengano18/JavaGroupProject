<%@page import="jspCrud.UserDao"%>  
<jsp:useBean id="u" class="jspCrud.User"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
<%  
UserDao.delete(u);  
response.sendRedirect("viewusers.jsp");  
%>