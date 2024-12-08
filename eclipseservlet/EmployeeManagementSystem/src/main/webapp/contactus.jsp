<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Contact Us</title>
<style>
.contact{
  text-align:left;
  color:black;
  box-shadow: 0 4px 8px 0 #0288d1;
  padding: 16px;
  height:90vh;
  background-color: white;
  width: 530px;
  margin:0 auto;
  margin-left:400px;
  margin-top:10px;
  font-size: 20px;
}

input[type="text"],input[type="email"]{
  width: 100%;
  height: 35px;
  padding: 0 10px;
  margin-bottom: 20px;
  border: 1px solid #ccc;
  border-radius: 3px;
  box-sizing: border-box;
}

input[type="submit"] {
  width: 100%;
  height: 35px;
  background-color: #4CAF50;
  color: white;
  border: none;
  border-radius: 3px;
  cursor: pointer;
}
input[name="description"]{
  width: 100%;
  height: 100px;
}
</style>
</head>
<body>
<div class="contact">
<h1>Contact Us</h1>
 <form action="Contact" method="post" id="form" >  
    
      <label for="name">Name:</label><br>
      <input type="text" id="username" name="username" required><br>

      <label for="email">Email:</label><br>
      <input type="email" id="email" name="email" required><br>

      <label for="phonenumber">Phone Number:</label><br>
      <input type="text" id="phonenumber" name="phonenumber" required><br>
      
      <label for="description">Description:</label><br>
      <input type="text" id="description" name="description" ><br>
      

      <input type="submit" value="Submit">
    </form>

</div>
</body>
</html>