<%@page import="food_application.dao.FoodCrud"%>
<%@page import="java.util.List"%>
<%@page import="food_application.dto.Food"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="cart.css">
</head>
<body>
       <% List<Food> f=(List<Food>)request.getAttribute("list");
       if(f!=null){%>
      <form action="cart" method="post"></form>
       <table>
        <tr>
                <th>Id</th>
                 <th>Name</th>
                 <th>Quantity</th>
                 <th>Price</th>
            </tr>
            
            <%for(Food s:f) {%>
            <tr>
            <td><%= s.getId() %></td>
             <td><%= s.getName() %></td>
              <td><%= s.getQuantity() %></td>
               <td><%= s.getPrice() %></td>
               <td><a href="deletefood?id=<%=s.getId() %>"><button>Remove</button></a></td>
               </tr>
               <%} %>
               <tr>
                   <td>  </td>
                   <td>   </td>
                   <td> </td>
                   <td> ______ </td>
               </tr>
               <tr>
               <td></td>
               <td></td>
               <td>Total:</td>
               <td><%FoodCrud p= new FoodCrud();
                      Double price=p.totalPrice();%>
                      <b><%=price %></b></td>
               </tr>
       </table>
      
       <%} %>
</body>
</html>