<%-- 
    Document   : register
    Created on : Sep 25, 2017, 5:01:19 PM
    Author     : Sua Laptop 24h
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" href="css/register.css">
    </head>
    <body>
       <div class="container">

    <form id="signup" action="ControllerProducts" methor="post">

        <div class="header">
        
            <h3>Sign Up</h3>
            
            <p>You want to fill out this form</p>
            
        </div>
        
        <div class="sep"></div>

        <div class="inputs">
        
            <input type="text" placeholder="Code" name="txtCode" autofocus />
        
            <input type="text" placeholder="Name" name="txtName" />
            
            <input type="text" placeholder="Price" name="txtPrice" />
             <input type="text" placeholder="Brand" name="txtBrand" />
            
            <input type="file" name="fileUp"  /><br />
            
            
             <input type="submit" id="submit" name="action" value="Insert"/>
        
        </div>

    </form>

</div>
    </body>
</html>
