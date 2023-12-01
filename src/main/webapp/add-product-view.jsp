<%@ page import="java.util.List" %>
<%@ page import="com.example.productmanage.entity.Manufacturer" %>
<%@ page import="com.example.productmanage.service.ManufacturerService" %><%--
  Created by IntelliJ IDEA.
  User: AD
  Date: 07/03/2023
  Time: 10:57 PM
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
<div>
	<h2 style="text-align: center;">ADD MANUFACTURER</h2>
</div>
<% List<Manufacturer> lsManufacturer =(List<Manufacturer>)session.getAttribute("maunfactories"); %>
<form style="margin-top: 25px" action="ProductController">
  <input type="hidden" name="action" value="add_product"/>
  <div class="row mb-3">
            <label for="name" class="col-sm-1 col-form-label">Name:</label>
            <div class="col-sm-10">
                <input type="text" class="form-control"  name="name">
            </div>
        </div>
  <br/>
  <div class="row mb-3">
            <label for="name" class="col-sm-1 col-form-label">Description:</label>
            <div class="col-sm-10">
                <input type="text" class="form-control"  name="description">
            </div>
        </div>
  <br/>
	<div class="row mb-3">
            <label for="name" class="col-sm-1 col-form-label">Manufacturer:</label>
            <div class="col-sm-10">
                <select style="width: 200px; height: 40px" name="manu">
  <% for(Manufacturer manufacturer : lsManufacturer){ %>
  <option value=<%= manufacturer.getId() %>><%=manufacturer.getManName()%></option>
  <% } %>
  </select>
            </div>
        </div>
  <br/>

  <button class="btn btn-primary" type="submit">ADD Product</button>
</form>
</body>
</html>
