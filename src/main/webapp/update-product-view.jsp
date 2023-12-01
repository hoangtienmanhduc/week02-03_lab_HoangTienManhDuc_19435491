<%@ page import="com.example.productmanage.entity.Product" %>
<%@ page import="java.util.List" %>
<%@ page import="com.example.productmanage.entity.Manufacturer" %><%--
  Created by IntelliJ IDEA.
  User: AD
  Date: 08/03/2023
  Time: 10:00 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
            crossorigin="anonymous"></script>
    <style>
        .x{
            position: fixed;
            padding: 1.5rem;
            margin-right: 10px;
            margin-left: 0;
            border-width: 1px;
            border-top-left-radius: .25rem;
            border-top-right-radius: .25rem;
        }
    </style>
</head>
<body>
<%
    Product productUpdate = (Product) session.getAttribute("productUpdate");
    List<Manufacturer> ls = (List<Manufacturer>) session.getAttribute("manufacturers");

%>
<div>
	<h2 style="text-align: center;">UPDATE PRODUCT</h2>
</div>
<form style="margin-top: 25px" action="ProductController">
    <input type="hidden" name="action" value="update_product"/>
    <input type="hidden" name="idProduct" value="<%=productUpdate.getProductId()%>"/>
    <div class="row mb-3">
            <label for="name" class="col-sm-1 col-form-label">Name:</label>
            <div class="col-sm-10">
                <input type="text" class="form-control"  name="name" value="<%=productUpdate.getProductName()%>"/>
            </div>
    </div>
    <br>
    <div class="row mb-3">
            <label for="name" class="col-sm-1 col-form-label">Description:</label>
            <div class="col-sm-10">
                <input type="text" class="form-control"  name="name" value="<%=productUpdate.getDescription()%>"/>
            </div>
    </div>
    <br>
     <div class="row mb-3">
            <label for="name" class="col-sm-1 col-form-label">Manufacturer:</label>
            <div class="col-sm-10">
               <select style="width: 200px; height: 40px" name="manufacturer">
        <% for(Manufacturer manufacturer: ls) { %>
            <option <%= manufacturer.getId()==productUpdate.getManuf().getId() ? "selected": ""%> value="<%=manufacturer.getId()%>"><%=manufacturer.getManName()%></option>
        <% } %>
    </select>
            </div>
    </div>    
    <br>
    <button class="btn btn-primary" type="submit">Update</button>
</form>
</body>
</html>
