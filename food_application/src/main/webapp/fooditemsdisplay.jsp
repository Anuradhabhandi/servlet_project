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
    
    <link rel="stylesheet" href="fooditemsdisplay.css">
    
</head>
<body>
          <% List<FoodItems> ffc=(List<FoodItems>)request.getAttribute("list"); 
           if(ffc!=null){%>
            <table cellpadding="5px" cellspacing="5px" style="color:rgb(232, 236, 239)"  >
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
               <td><a href="updatefooditems?id=<%=s.getId()%>"><button>Update</button></a></td>
               </tr>
               <%} %>
           </table> <%} %>
</body>
</html>