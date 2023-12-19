<%@page import="food_application.dto.Food"%>
<%@page import="java.util.List"%>
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
        <% List<FoodItems> ffc=(List<FoodItems>)request.getAttribute("list"); 
            if(ffc!=null){%>
            <table cellspacing="10px" cellpadding="5px">
            <tr>
                <th>Id</th>
                 <th>Name</th>
                 <th>Quantity</th>
                 <th>Price</th>
            </tr>
            
            <%for(FoodItems s:ffc) {%>
            <tr>
            <td><%= s.getId() %></td>
             <td><%= s.getName() %></td>
              <td><%= s.getQuantity() %></td>
               <td><%= s.getPrice() %></td>
               <td><a href="viewfood?id=<%=s.getId()%>"><button>Add to Cart</button></a></td>
               </tr>
               <%} %>
               
           </table><%} %>
           <a></a>
</body>
</html>