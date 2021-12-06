 <!DOCTYPE html>  
<html>  
<head>  
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">  
<title>Edit Form</title>  
</head>  
<body>  
<%@page import="jspCrud.UserDao,jspCrud.User"%>  
  
<%  
String id=request.getParameter("id");  
User u=UserDao.getRecordById(Integer.parseInt(id));  
%>
<div class="wrapper2">
    <div class="title">
      Edit The Animal
    </div>
    <div class="form" >
    <form action="edituser.jsp" method="post">
    <input type="hidden" name="id" value="<%=u.getId() %>"/>
    <div class="inputfield">
          <label>Name</label>
          <input type="text" class="input" name="name" value="<%=u.getName()%>">
       </div>   
        <div class="inputfield">
          <label>Gender</label>
          <div class="custom_select">
            <select name="gender" value="<%=u.getGender()%>">
              <option value="male" name="gender">Male</option>
              <option value="female" name="gender">Female</option>
            </select>
          </div>
       </div> 
        <div class="inputfield">
          <label>Group</label>
          <input type="text" class="input" name="type" value="<%=u.getType()%>">
       </div> 
      <div class="inputfield">
          <label>Health</label>
          <textarea class="textarea" name="health" value="<%=u.getHealth()%>"></textarea>
       </div> 
      <div class="inputfield">
          <label>Location</label>
          <input type="text" class="input" name="location" value="<%=u.getLocation()%>">
       </div> 
      <div class="inputfield">
        <input type="submit" class="btn" value="Add animal">
        <a class="btn btn-primary" href="viewusers.jsp" role="button" id="view">View animals</a>
      </div>
    </form> 	
</div>
</div>
</body>
<style>
@import url('https://fonts.googleapis.com/css?family=Montserrat:400,700&display=swap');

*{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: 'Montserrat', sans-serif;
}
body{
  padding: 0 10px;
}
.wrapper2{
  max-width: 500px;
  width: 100%;
  background: rgb(255, 255, 255);
  margin: 20px auto;
  box-shadow: 1px 1px 2px rgba(0,0,0,0.125);
  padding: 30px;
}

.wrapper2 .title{
  font-size: 24px;
  font-weight: 700;
  margin-bottom: 25px;
  color: #000000;
  text-transform: uppercase;
  text-align: center;
}

.wrapper2 .form{
  width: 100%;
}

.wrapper2 .form .inputfield{
  margin-bottom: 15px;
  display: flex;
  align-items: center;
}

.wrapper2 .form .inputfield label{
   width: 200px;
   color: #757575;
   margin-right: 10px;
  font-size: 14px;
}

.wrapper2 .form .inputfield .input,
.wrapper2 .form .inputfield .textarea{
  width: 100%;
  outline: none;
  border: 1px solid #d5dbd9;
  font-size: 15px;
  padding: 8px 10px;
  border-radius: 3px;
  transition: all 0.3s ease;
}

.wrapper2 .form .inputfield .textarea{
  width: 100%;
  height: 125px;
  resize: none;
}

.wrapper2 .form .inputfield .custom_select{
  position: relative;
  width: 100%;
  height: 37px;
}

.wrapper2 .form .inputfield .custom_select:before{
  content: "";
  position: absolute;
  top: 12px;
  right: 10px;
  border: 8px solid;
  border-color: #d5dbd9 transparent transparent transparent;
  pointer-events: none;
}

.wrapper2 .form .inputfield .custom_select select{
  -webkit-appearance: none;
  -moz-appearance:   none;
  appearance:        none;
  outline: none;
  width: 100%;
  height: 100%;
  border: 0px;
  padding: 8px 10px;
  font-size: 15px;
  border: 1px solid #d5dbd9;
  border-radius: 3px;
}


.wrapper2 .form .inputfield .input:focus,
.wrapper2 .form .inputfield .textarea:focus,
.wrapper2 .form .inputfield .custom_select select:focus{
  border: 1px solid #131413;
}

.wrapper2 .form .inputfield p{
   font-size: 14px;
   color: #757575;
}
.wrapper2 .form .inputfield .check{
  width: 15px;
  height: 15px;
  position: relative;
  display: block;
  cursor: pointer;
}
.wrapper2 .form .inputfield .check input[type="checkbox"]{
  position: absolute;
  top: 0;
  left: 0;
  opacity: 0;
}
.wrapper2 .form .inputfield .check .checkmark{
  width: 15px;
  height: 15px;
  border: 1px solid #41f05e;
  display: block;
  position: relative;
}
.wrapper2 .form .inputfield .check .checkmark:before{
  content: "";
  position: absolute;
  top: 1px;
  left: 2px;
  width: 5px;
  height: 2px;
  border: 2px solid;
  border-color: transparent transparent #fff #fff;
  transform: rotate(-45deg);
  display: none;
}
.wrapper2 .form .inputfield .check input[type="checkbox"]:checked ~ .checkmark{
  background: #41f05e;
}

.wrapper2 .form .inputfield .check input[type="checkbox"]:checked ~ .checkmark:before{
  display: block;
}

.wrapper2 .form .inputfield .btn{
  width: 100%;
   padding: 8px 10px;
  font-size: 15px; 
  border: 0px;
  background:  #41f05e;
  color: #fff;
  cursor: pointer;
  border-radius: 3px;
  outline: none;
  margin: 50px;
}
#view{
    display: inline;
    text-decoration: none;
}

.wrapper2 .form .inputfield .btn:hover{
  background: #bbc4bc;
}

.wrapper2 .form .inputfield:last-child{
  margin-bottom: 0;
}

@media (max-width:420px) {
  .wrapper2 .form .inputfield{
    flex-direction: column;
    align-items: flex-start;
  }
  .wrapper2 .form .inputfield label{
    margin-bottom: 5px;
  }
  .wrapper2 .form .inputfield.terms{
    flex-direction: row;
  }
}
</style>  
</html>