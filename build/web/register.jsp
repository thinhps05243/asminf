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

    <form id="signup" action="ControllerCustomers" methor="post">

        <div class="header">
        
            <h3>Sign Up</h3>
            
            <p>You want to fill out this form</p>
            
        </div>
        
        <div class="sep"></div>

        <div class="inputs">
        
            <input type="text" placeholder="username" name="txtUsername" autofocus />
        
            <input type="password" placeholder="password" name="txtPassword" />
            
            <input type="text" placeholder="FullName" name="txtName" />
            
            <div class="checkboxy">
                <input name="chkAdmin" id="checky" value="1" type="checkbox" /><label class="terms">Admin</label>
            </div>
            
             <input type="submit" id="submit" name="action" value="Register"/>
        
        </div>

    </form>

</div>
    </body>
</html>
