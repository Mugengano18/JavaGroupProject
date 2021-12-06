<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Endangered Animals</title>
<link href="../css/layout.css" rel="stylesheet" type="text/css" media="all">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
</head>
<body>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- Top Background Image Wrapper -->
<div class="bgded" style="background-image:url(https://images.unsplash.com/photo-1518709766631-a6a7f45921c3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1925&q=80););"> 
  <!-- ################################################################################################ -->
  <div class="wrapper row1">
    <header id="header" class="hoc clear">
      <div id="logo" class="fl_left"> 
        <!-- ################################################################################################ -->
        <h1><a href="home.jsp">Wildlife</a></h1>
        <!-- ################################################################################################ -->
      </div>
      <nav id="mainav" class="fl_right"> 
        <!-- ################################################################################################ -->
        <ul class="clear">
          <li><a href="home.jsp">Home</a></li>
          <li><a href="conservation.jsp">Solutions</a></li>
          <li><a class="drop" href="#">Animals</a>
            <ul>
              <li class="active"><a href="Endangered.jsp">Endangered Animals</a></li>
              
            </ul>
          </li>
          <li><a href="LoginForm.jsp">Login</a></li>
        </ul>
        <!-- ################################################################################################ -->
      </nav>
    </header>
  </div>
  <!-- ################################################################################################ -->
  <!-- ################################################################################################ -->
  <!-- ################################################################################################ -->
  <div class="overlay">
    <div id="breadcrumb" class="hoc clear"> 
      <!-- ################################################################################################ -->
      <h6 class="heading">Gallery</h6>
      <ul>
        <li><a href="#">Home</a></li>
        <li class="active"><a href="#">Endangered Animals</a></li>
      </ul>
      <!-- ################################################################################################ -->
    </div>
  </div>
  <!-- ################################################################################################ -->
</div>
<!-- End Top Background Image Wrapper -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->

<div class="data">
<%@page import="jspCrud.UserDao,jspCrud.*,java.util.*"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
  
  
 <%  
List<User> list=UserDao.getAllRecords();  
request.setAttribute("list",list);  
%>  
<header class="heading" style="font-size:40px;color:black; text-Align:center;">All endangered Animals</header>
 <div class="table_responsive">
        <table>
          <thead>
            <tr>
              <th>Name</th>
              <th>Group</th>
              <th>Location</th>
            </tr>
          </thead>
          <c:forEach items="${list}" var="u"> 
          <tbody>
            <tr>
              <td>${u.getName()}</td>
              <td>${u.getType()}</td>
              <td>${u.getLocation()}</td>
            </tr>
          </c:forEach>
          </tbody>
        </table>
      </div>
</div>
<div class="wrapper row3">
  <main class="hoc container clear"> 
  
  
    <!-- main body -->
    <!-- ################################################################################################ -->
    <div class="content"> 
      <!-- ################################################################################################ -->
      <div id="gallery">
        <figure>
          
          <ul class="nospace clear">
            <li class="one_quarter first"><a href="#"><img src="../images/10.jpg" alt="img1" style="height: 250px;width:550px;"></a></li>
            <li class="one_quarter"><a href="#"><img src="../images/11.jpg" alt="img2" style="height: 250px;width:550px;"></a></li>
            <li class="one_quarter"><a href="#"><img src="../images/19.jpg" alt="img3" style="height: 250px;width:550px;"></a></li>
            <li class="one_quarter"><a href="#"><img src="../images/14.jpg" alt="img4" style="height: 250px;width:550px;"></a></li>
            <li class="one_quarter first"><a href="#"><img src="../images/24.jpg" alt="img5" style="height: 250px;width:550px;"></a></li>
            <li class="one_quarter"><a href="#"><img src="../images/27.jpg" alt="img6" style="height: 250px;width:550px;"></a></li>
            <li class="one_quarter"><a href="#"><img src="../images/7.jpg" alt="img7" style="height: 250px;width:550px;"></a></li>
            <li class="one_quarter"><a href="#"><img src="../images/6.jpg" alt="img8" style="height: 250px;width:550px"></a></li>
            <li class="one_quarter first"><a href="#"><img src="../images/9.jpg" alt="img9" style="height: 250px;width:550px"></a></li>
            <li class="one_quarter"><a href="#"><img src="../images/5.jpg" alt="img10" style="height: 250px;width:550px"></a></li>
          </ul>
          <figcaption>The Above images are all endangered animals..</figcaption>
        </figure>
      </div>
      <!-- ################################################################################################ -->
      <!-- ################################################################################################ -->
      <!-- ################################################################################################ -->
    </div>
    <!-- ################################################################################################ -->
    <!-- / main body -->
    <div class="clear"></div>
  </main>
</div>
<div class="bgded overlay row4" style="background-image:url('../images/demo/backgrounds/01.png');">
  <footer id="footer" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <div class="one_quarter">
      <h6 class="heading">Want to Ask?</h6>
      <p class="nospace btmspace-15">Subscribe to our newsletter..</p>
      <form action="#" method="post">
        <fieldset>
          <legend>Newsletter:</legend>
          <input class="btmspace-15" type="text" value="" placeholder="Name">
          <input class="btmspace-15" type="text" value="" placeholder="Email">
          <button type="submit" value="submit">Submit</button>
        </fieldset>
      </form>
    </div>
    
    <!-- ################################################################################################ -->
  </footer>
</div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<div class="wrapper row5">
  <div id="copyright" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <p class="fl_left">Copyright &copy; 2021 - All Rights Reserved</p>
    <!-- ################################################################################################ -->
  </div>
</div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<a id="backtotop" href="#top"><i class="fas fa-chevron-up"></i></a>
<!-- JAVASCRIPTS -->
<script src="../scripts/jquery.min.js"></script>
<script src="../scripts/jquery.backtotop.js"></script>
<script src="../scripts/jquery.mobilemenu.js"></script>
</body>
<style>
.table_responsive{
background-color:white;
margin:40px
}
.data{
background-color:white;


}
</style>
</html>