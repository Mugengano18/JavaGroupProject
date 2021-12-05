<html>
    <head>
        <title>View Image</title>
    </head>
    
    <body>
    
        <b>View | <a href="index.jsp">Upload</a></b><br/><br/>
        
<%
String id = request.getParameter("id");
%>
<img src="getImage.jsp" width="400px"/>
 
    </body>
</html>