<%@page import="food_application.dto.FoodItems"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="displayfood.css">
</head>
<body>
      <%FoodItems s=(FoodItems) request.getAttribute("fooditems");
       if(s!=null){%>
       
      <form action="editfood" method="post">
      <table>
      <tr>
         <td>ID</td>
         <td><input type="number" name="id" value="<%= s.getId()%>"  readonly="true"></td>
      </tr>
       <tr>
         <td>Name</td>
         <td><input type="text" name="name" value="<%= s.getName()%>" readonly="true"></td>
      </tr>
      
       <tr>
         <td>Quantity</td>
         <td><input type="number" name="quantity" value="<%= s.getQuantity()%>"></td>
      </tr>
      
       <tr>
         <td>Price</td>
         <td><input type="number" name="price" value="<%= s.getPrice()%>" readonly="true"></td>
      </tr>
      <tr>
        <td><input type="submit" value="ADD"></td>
      </tr>
      </table>
      
      </form>
      
      
      <%} %>
</body>
</html>