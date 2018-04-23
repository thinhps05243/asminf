<%-- 
    Document   : showcart
    Created on : Sep 29, 2017, 9:28:18 PM
    Author     : Sua Laptop 24h
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link rel="stylesheet" href="https://unpkg.com/purecss@1.0.0/build/pure-min.css" integrity="sha384-nn4HPE8lTHyVtfCBi5yW9d20FjT8BJwUXyWZT9InLYax14RDjBj46LmSztkmNP9w" crossorigin="anonymous">
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
    </head>
    <body>
        <jsp:include page="header.jsp"/>
        <h1>Your Shopping Cart</h1>
        <c:set var="shop" value="${sessionScope.SHOP}"/>
        <c:if test="${not empty shop}">
            <table class="pure-table pure-table-bordered">
                <thead>
                    <tr>
                        <td>No.</td>
                        <td>Code</td>
                        <td>Name</td>
                        <td>Price</td>
                        <td>Brand</td>
                        <td>Images</td>
                        <td>Quantity</td>
                        <td>Action</td>
                    </tr>
                </thead>
                <tbody>
                <form action="ControllerCartBean" class="pure-form">
                    <c:set var="count" value ="0"/>
                    <c:set var="sum" value ="0"/>
                    <c:forEach var="rows" items = "${shop}">
                        <c:set var="count" value = "${count+1}"/>
                        <c:set var="sum" value = "${rows.value.quantity*rows.value.sanpham.price+sum}"/>
                        <tr>
                            <td>${count}</td>
                            <td>${rows.value.sanpham.code}</td>
                            <td>${rows.value.sanpham.name}</td>
                            <td>${rows.value.sanpham.price}</td>
                            <td>${rows.value.sanpham.brand}</td>
                            <td><img src="images/${rows.value.sanpham.images}" style="width: 100px;height: 100px"/></td>
                            <td><input type = "text" name="sl" value ="${rows.value.quantity}" size="5"/></td>
                            <td><input type="checkbox" name="rmv" value="${rows.value.sanpham.code}"/></td>
                        <input type = "hidden" name="codes" value ="${rows.value.sanpham.code}"/></td
                        </tr>   
                    </c:forEach>
                    <tr>
                        <c:url var="add" value="ControllerCartBean">
                            <c:param name="action" value="Add More"/>
                        </c:url>                                
                        <td colspan="3"><a href="${add}">Add More</a></td>      
                        <td>${sum}</td>
                        <td><input type="submit" value="Update" name="action" class="pure-button pure-button-primary"/></td>
                        <td><input type="submit" value="Remove" name="action" class="pure-button pure-button-primary"/></td>                                
                    </tr>                
                </form>
            </tbody>
        </table>
    </c:if>
        <jsp:include page="footer_1.jsp"/>
</body>
</html>
