<%@page import="food_application.dto.FoodItems"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> addfooditems page</title>
    <link rel="shortcut icon" href="https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_96,h_96/portal/c/logo_2022.png" type="image/x-icon">
    
    <link rel="stylesheet" href="updatefooditems.css">
    
</head>
<body>
      <%FoodItems s=(FoodItems)request.getAttribute("fooditems");
       if(s!=null){%>
       
      <form action="editfooditmes" method="post">
      <table>
      <tr>
         <td>ID</td>
         <td><input type="number" name="id" value="<%= s.getId()%>"  readonly="true"></td>
      </tr>
       <tr>
         <td>Name</td>
         <td><input type="text" name="name" value="<%= s.getName()%>"></td>
      </tr>
      
       <tr>
         <td>Quantity</td>
         <td><input type="text" name="quantity" value="<%= s.getQuantity()%> "></td>
      </tr>
      
       <tr>
         <td>Price</td>
         <td><input type="number" name="price" value="<%= s.getPrice()%>"></td>
      </tr>
      <tr>
      <td><input type="submit" value="Update">
      
      </table>
      
      </form>
      
      
      <%} %>
      
      
      
 
</body>
</html>