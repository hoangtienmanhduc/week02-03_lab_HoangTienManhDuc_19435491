<%@ page import="java.util.List" %>
<%@ page import="com.example.productmanage.entity.Product" %>
<%@ page import="com.example.productmanage.service.ProductService" %>
<%@ page import="com.example.productmanage.entity.Manufacturer" %>
<%@ page import="com.example.productmanage.service.ManufacturerService" %><%--
  Created by IntelliJ IDEA.
  User: AD
  Date: 07/03/2023
  Time: 11:23 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link
            th:href="@{'https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css'}"
            rel="stylesheet"
            integrity="sha384-
T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
            crossorigin="anonymous">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
          rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script
            th:src="@{'https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js'}"
            integrity="sha384-
C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
            crossorigin="anonymous"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
<% List<Product> products = (List<Product>) session.getAttribute("products");
    ManufacturerService manufacturerService = new ManufacturerService();%>
 <h2 style="text-align: center;">MANUFACTURER</h2>
<br/>
<table border="1" class="table table-bordered table-striped">
            <thead class="thead-dark"  style="background-color:yellow">
    <tr>
        <th>Id</th>
        <th>Name</th>
        <th>Description</th>
        <th>Manufacturer</th>
        <th colspan="2">Chọn</th>
    </tr>
    </thead>
           <tbody>
    <% for(Product product: products) { %>
    <tr>
        <td><%= product.getProductId() %></td>
        <td><%= product.getProductName() %></td>
        <td><%= product.getDescription() %></td>
        <td><%= manufacturerService.getManufacturerById(String.valueOf(product.getManuf().getId())).getManName()  %></td>

        <td><a class="btn btn-danger btn-sm" href=""
               onclick='if(confirm("Are you sure to execute this action?"))
                       {window.open("ProductController?action=delete_product&id=<%=product.getProductId()%>");window.close();}'
        >Delete</a></td>
        <td><a class="btn btn-info btn-sm" href="ProductController?action=update_product_view&id=<%=product.getProductId()%>">Update</a></td>
    </tr>
    <% } %>

 </tbody>
</table>
<a class="btn btn-primary btn-sm mb-3" href="ProductController?action=add_product_view">Add Product</a>
</body>
</html>
