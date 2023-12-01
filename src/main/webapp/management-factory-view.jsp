<%@ page import="java.util.List" %>
<%@ page import="com.example.productmanage.entity.Manufacturer" %><%--
  Created by IntelliJ IDEA.
  User: AD
  Date: 04/03/2023
  Time: 10:59 PM
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
    <% List<Manufacturer> lsManufacturer =(List<Manufacturer>)session.getAttribute("maunfactories"); %>
    <h2 style="text-align: center;">MANUFACTURER</h2>
    <br/>
    <table border="1" class="table table-bordered table-striped">
            <thead class="thead-dark"  style="background-color:yellow">
        <tr>
            <th>Id</th>
            <th>Name</th>
            <th>Contact</th>
            <th>Email</th>
            <th>Phone</th>
            <th>Website</th>
            <th colspan="2">Chọn</th>
        </tr>
          </thead>
           <tbody>
        <% for (Manufacturer manu : lsManufacturer) {%>
            <tr>
                <td><%= manu.getId() %></td>
                <td><%= manu.getManName() %></td>
                <td><%= manu.getManContactName() %></td>
                <td><%= manu.getManContactEmail() %></td>
                <td><%= manu.getManContactPhone() %></td>
                <td><%= manu.getManWebsite() %></td>
                <td><a class="btn btn-danger btn-sm" href=""
                       onclick='if(confirm("Are you sure to execute this action?"))
                               {window.open("ManufacturerController?action=delete_user&id=<%=manu.getId()%>");window.close();}'
                >Delete</a></td>
                <td><a class="btn btn-info btn-sm" href="ManufacturerController?action=update_manufactory_view&id=<%=manu.getId()%>">Update</a></td>
            </tr>
        <% } %>
 </tbody>
    </table>
    <a class="btn btn-primary btn-sm mb-3" href="ManufacturerController?action=add_manufacturer_view">Add Manufacturer</a>
</body>
</html>
