<!DOCTYPE html>  
  
<html>  
<head>  
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">  
<title>View Users</title> 
<link href="css/table.css" rel="stylesheet" type="text/css" media="all">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous"> 
</head>  
<body>
<%@page import="jspCrud.UserDao,jspCrud.*,java.util.*"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
  
<h1>Animals List</h1>  
  
<%  
List<User> list=UserDao.getAllRecords();  
request.setAttribute("list",list);  
%>  
 <div class="table_responsive">
        <table>
          <thead>
            <tr>
              <th>id</th>
              <th>Image</th>
              <th>Name</th>
              <th>Gender</th>
              <th>Group</th>
              <th>Health</th>
              <th>Location</th>
              <th>Action</th>
            </tr>
          </thead>
          <c:forEach items="${list}" var="u"> 
          <tbody>
            <tr>
              <td>${u.getId()}</td>
              <td><img src="https://images.unsplash.com/photo-1498462440456-0dba182e775b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80" alt=""></td>
              <td>${u.getName()}</td>
              <td>${u.getGender()}</td>
              <td>${u.getType()}</td>
              <td>${u.getHealth()}</td>
              <td>${u.getLocation()}</td>
              <td>
                <span class="action_btn">
                  <a href="editform.jsp?id=${u.getId()}">Edit</a>
                  <a href="deleteuser.jsp?id=${u.getId()}">Delete</a>
                </span>
              </td>
            </tr>
          </c:forEach>
          </tbody>
        </table>
        <br/><a href="adduserform.jsp" class="btn btn-primary">Add a new animal</a>
      </div>
<!-- <table border="1" width="90%">  
<tr><th>Id</th><th>Name</th><th>Gender</th><th>Group</th>  
<th>health</th><th>Location</th><th>Edit</th><th>Delete</th></tr>  
<c:forEach items="${list}" var="u">  
<tr><td>${u.getId()}</td><td>${u.getName()}</td><td>${u.getGender()}</td>  
<td>${u.getType()}</td><td>${u.getHealth()}</td><td>${u.getLocation()}</td>  
<td><a href="editform.jsp?id=${u.getId()}">Edit</a></td>  
<td><a href="deleteuser.jsp?id=${u.getId()}">Delete</a></td></tr>  
</c:forEach>  
</table>   -->


<!-- <br/><a href="adduserform.jsp" class="btn btn-primary">Add a new animal</a>  -->
 
  
</body>
<style>
@import url('https://fonts.googleapis.com/css2?family=Roboto:wght@300;500&display=swap');

* {
    box-sizing: border-box;
}

body {
    min-height: 100vh;
    display: flex;
    font-family: 'Roboto', sans-serif;
}

.table_responsive {
    max-width: 900px;
    border: 1px solid #2bf75e;
    background-color: #efefef33;
    padding: 15px;
    overflow: auto;
    margin: auto;
    border-radius: 4px;
}

table {
    width: 100%;
    font-size: 13px;
    color: #444;
    white-space: nowrap;
    border-collapse: collapse;
}

table>thead {
    background-color: #2bf75e;
    color: #fff;
}

table>thead th {
    padding: 15px;
}

table th,
table td {
    border: 1px solid #00000017;
    padding: 10px 15px;
}

table>tbody>tr>td>img {
    display: inline-block;
    width: 60px;
    height: 60px;
    object-fit: cover;
    border-radius: 50%;
    border: 4px solid #fff;
    box-shadow: 0 2px 6px #0003;
}


.action_btn {
    display: flex;
    justify-content: center;
    gap: 10px;
}

.action_btn>a {
    text-decoration: none;
    color: #444;
    background: #fff;
    border: 1px solid;
    display: inline-block;
    padding: 7px 20px;
    font-weight: bold;
    border-radius: 3px;
    transition: 0.3s ease-in-out;
}

.action_btn>a:nth-child(1) {
    border-color: #2bf75e;
}

.action_btn>a:nth-child(2) {
    border-color: #2bf75e;
}

.action_btn>a:hover {
    box-shadow: 0 3px 8px #0003;
}


table>tbody>tr {
    background-color: #fff;
    transition: 0.3s ease-in-out;
}


table>tbody>tr:nth-child(even) {
    background-color: rgb(238, 238, 238);
}

table>tbody>tr:hover{
    filter: drop-shadow(0px 2px 6px #0002);
}
.btn, .btn.inverse:hover{
color:#FFFFFF; 
background-color:#51bd3c; 
border-color:#51bd3c;
}
.btn:hover, .btn.inverse{
color:inherit; 
background-color:transparent;
 border-color:inherit;}
</style> 
</html> 