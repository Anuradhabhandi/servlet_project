<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
  <%String  r=(String)request.getAttribute("pwd"); 
     if(r!=null){
  %>
    <h4  style="color: red;"><%= r %></h4>
    <%} %>
    
    
      <form action="userUpdate" method="post">
       <table>
         <tr>
         <td>email id</td>
         <td><input type="email" name="email"></td>
         </tr>
         
          <tr>
         <td>Password</td>
         <td><input type="password" name="pwd"></td>
         </tr>
         
          <tr>
         <td>Re-Enter Password</td>
         <td><input type="password" name="pwd1"></td>
         </tr>
         
          <tr>
         <td><input type="submit" name="submit"></td>
         </tr>
       </table>
      </form>
</body>
</html>