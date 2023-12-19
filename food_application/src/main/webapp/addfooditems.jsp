<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body> 
       <form action="addfooditems" method="post"> 
       <table>
            <tr>
              <td>Food Name</td>
              <td><input type="text" name="name"></td>
            </tr>
            
            <tr>
              <td>Quantity</td>
              <td><input type="number" name="quantity"></td>
           </tr>
           
           <tr>
              <td>Price</td>
              <td><input type="number" name="price"></td>
           </tr>
           
           <tr>
              <td><input type="submit" value="ADD"></td>
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
    <title> addfooditems page</title>
    <link rel="shortcut icon" href="https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_96,h_96/portal/c/logo_2022.png" type="image/x-icon">
    
    <link rel="stylesheet" href="addfooditems.css">
    
</head>
<body>
  <img src="https://1000logos.net/wp-content/uploads/2021/05/Swiggy-emblem.png" alt="" id="logo">
<h1>Add food items</h1>
  <form action="addfooditems" method="post"> 
    <table cellpadding="70px" cellspacing="30px">
         <tr>
           <td>Food Name</td>
           <td><input type="text" name="name"></td>
         </tr>
         
         <tr>
           <td>Quantity</td>
           <td><input type="number" name="quantity"></td>
        </tr>
        
        <tr>
           <td>Price</td>
           <td><input type="number" name="price"></td>
        </tr>
        
        <tr>
           <td><input type="submit" value="ADD" id="submit"></td>
        </tr>
    </table>
    
    
    </form>


</body>
</html>