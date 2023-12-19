<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
   <%  String msg=(String)request.getAttribute("msg") ;
       if(msg!=null) {
     %>
     
      <h4  style="color: red;"><%= msg %></h4>
     
      <%} %>

       <form action="manloginjsp" method="post">
          <table>
              <tr>
                  <td>Email Id</td>
                  <td><input type="email" name="email"></td>
              </tr>
              
               <tr>
                  <td>password</td>
                  <td><input type="password" name="pwd"></td>
              </tr>
              
               <tr>
                  <td><input type="submit" value="submit"></td>
              </tr>
          
          </table>
       
       </form>
</body>
</html> --%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> Manager-login page</title>
    <link rel="shortcut icon" href="https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_96,h_96/portal/c/logo_2022.png" type="image/x-icon">
    
    <link rel="stylesheet" href="manlogin.css">
    
</head>
<body>
  <img src="https://1000logos.net/wp-content/uploads/2021/05/Swiggy-emblem.png" alt="">
 <div id="managerlogin">
    <h1>Manager-Login</h1>
  </div>
  <form action="manloginjsp" method="post" id="form">
  <table cellpadding="10px" cellspacing="5px">
              <tr>
                  <td>Email Id</td>
                  <td><input type="email" name="email"></td>
              </tr>
              
               <tr>
                  <td>password</td>
                  <td><input type="password" name="pwd"></td>
              </tr>
              
               <tr>
                   <td> </td>
                  <td><input type="submit" value="submit" id="but"></td>
              </tr>
          
          </table>
   <!--  <label>Email-id:</label><input type="email" name="email"><br><br>
     <label>Password:</label><input type="password" name="pwd"><br><br>
     <button id="but" type="submit" value="submit">Login</button> -->
 </form>
</body>
</html>