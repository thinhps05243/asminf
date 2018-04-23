<%-- 
    Document   : Products
    Created on : Sep 28, 2017, 6:57:54 PM
    Author     : Sua Laptop 24h
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Groovy Apparel a E-Commerce & Fashion Category Bootstrap Responsive Website Template | Men's :: W3layouts</title>

        <!-- Meta-Tags -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <meta name="keywords" content="Groovy Apparel a Responsive Web Template, Bootstrap Web Templates, Flat Web Templates, Android Compatible Web Template, Smartphone Compatible Web Template, Free Webdesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola Web Design">
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        <!-- //Meta-Tags -->

        <!-- Custom-Stylesheet-Links -->
        <!-- Bootstrap-CSS -->	<link rel="stylesheet" href="css1/bootstrap.css"	type="text/css" media="all">
        <!-- Index-Page-CSS -->	<link rel="stylesheet" href="css1/style.css"		type="text/css" media="all">
        <!-- //Custom-Stylesheet-Links -->

        <!-- Fonts -->
        <link rel="stylesheet" href="//fonts.googleapis.com/css?family=Noto+Serif:400,700"	   type="text/css" media="all">
        <link rel="stylesheet" href="//fonts.googleapis.com/css?family=Montserrat:400,700"	   type="text/css" media="all">
        <link rel="stylesheet" href="//fonts.googleapis.com/css?family=Roboto:100,300,400,500" type="text/css" media="all">
        <!-- //Fonts -->

        <!-- Font-Awesome-File-Links --
        <!-- CSS --> <link rel="stylesheet" href="css1/font-awesome.css" 		 type="text/css" media="all">
        <!-- TTF --> <link rel="stylesheet" href="fonts/fontawesome-webfont.ttf" type="text/css" media="all">
        <!-- //Font-Awesome-File-Links -->
        <link rel="stylesheet" href="https://unpkg.com/purecss@1.0.0/build/pure-min.css" integrity="sha384-nn4HPE8lTHyVtfCBi5yW9d20FjT8BJwUXyWZT9InLYax14RDjBj46LmSztkmNP9w" crossorigin="anonymous">
    </head>
    <body>
        <jsp:include page="header.jsp"/>
        <form action="ControllerProducts" class="pure-form">
            <fieldset>
                 Nhập tên sản phẩm:<input type="text" name="txtTenSP" placeholder="Nhập tên sản phẩm"/>
                 <input type="submit" name="action" value="Search" class="pure-button pure-button-primary"/>
            </fieldset>
        </form>
        <table class="pure-table pure-table-bordered" >
            <tr>
                <th>Code</th>
                <th>Name</th>
                <th>Price</th>
                <th>Brand</th>
                <th>Images</th>
                <th>Edit</th>
                <th>Delete</th>
            </tr>
            <c:forEach var="rows" items="${listSP}">
                <form action="ControllerProducts">
                    <tr>
                        <td>${rows.code}</td>
                        <td>${rows.name}</td>
                        <td>${rows.price}</td>
                        <td>${rows.brand}</td>
                        <td><img src="images/${rows.images}" style="width:50px;height:50px;"/></td>
                            <c:url var="del" value="ControllerProducts">
                                <c:param name="action" value="Edit"/>
                                <c:param name="txtCode" value="${rows.code}"/>
                                <c:param name="txtName" value="${rows.name}"/>
                                <c:param name="txtPrice" value="${rows.price}"/> 
                                <c:param name="txtBrand" value="${rows.brand}"/>                
                                <c:param name="txtImages" value="${rows.images}"/> 
                            </c:url>
                        <td><a href="${del}">Edit</a></td>
                        <td>
                            <input type="hidden" name="txtCode" value="${rows.code}"/>  
                            <input type="submit" name="action" value="Delete" class="pure-button pure-button-primary"/>  
                        </td>
                    </tr>
                </form>
            </c:forEach>
        </table>
        <br/>
        <form action="ControllerProducts">
            <input type="submit" name="action" value="Add New" class="pure-button pure-button-primary"/>
        </form>
        <jsp:include page="footer_1.jsp"/>
    </body>
</html>
