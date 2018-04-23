<%-- 
    Document   : show
    Created on : Sep 25, 2017, 7:51:51 PM
    Author     : Sua Laptop 24h
--%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <c:set var="info" value="${requestScope.INFO}"/>
        <c:if test="${not empty info}">
            <table class="pure-table pure-table-bordered">
                <thead>
                    <tr>
                        <td>No.</td><td>Username</td><td>Password</td><td>Name</td><td>Roles</td>
                        <td>Delete</td><td>Update</td>
                    </tr>
                </thead>
                <tbody>
                    <c:set var="count" value="0"/>
                    <c:forEach var="rows" items="${info}">
                    <form action="ControllerCustomers">
                        <c:set var="count" value="${count + 1}" />
                        <tr>
                            <td>${count}</td>
                            <td>${rows.username}
                                <input type="hidden" name="txtUsername" value="${rows.username}"/>
                            </td>
                            <td><input type="text" name="txtPassword" value="${rows.password}"/></td>
                            <td><input type="text" name="txtName" value="${rows.hoten}"/></td>
                            <td><input type="checkbox" name="chkAdmin" value="ADMIN" 
                                       <c:if test="${rows.roles}">checked</c:if>/>
                                </td>
                            <c:url var="delete" value="ControllerCustomers">
                                <c:param name="action" value="Delete"/>
                                <c:param name="username" value="${rows.username}"/>
                                <c:param name="txtSearch" value="${param.txtSearch}"/>
                            </c:url>
                            <td> <a href="${delete}">Delete</a></td>
                            <td>
                                <input type="hidden" name="txtSearch" value="${param.txtSearch}"/>
                                <input type="submit" value="Update" name="action"/>
                            </td>
                        </tr>
                    </form>
                </c:forEach>
            </tbody>
        </table>   
    </c:if>
    <c:url var="back" value="ControllerCustomers">
        <c:param name="action" value="Back"/>
    </c:url>
    <a href="${back}">Quay trở lại trang Search</a>   
    <jsp:include page="footer_1.jsp"/>
</body>
</html>
