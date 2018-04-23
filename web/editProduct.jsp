<%-- 
    Document   : editProduct
    Created on : Sep 29, 2017, 7:40:46 PM
    Author     : Sua Laptop 24h
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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

        <!-- Font-Awesome-File-Links -->
        <!-- CSS --> <link rel="stylesheet" href="css1/font-awesome.css" 		 type="text/css" media="all">
        <!-- TTF --> <link rel="stylesheet" href="fonts/fontawesome-webfont.ttf" type="text/css" media="all">
        <!-- //Font-Awesome-File-Links -->
        <style>
            .form-style-1 {
                margin:10px auto;
                max-width: 400px;
                padding: 20px 12px 10px 20px;
                font: 13px "Lucida Sans Unicode", "Lucida Grande", sans-serif;
            }
            .form-style-1 li {
                padding: 0;
                display: block;
                list-style: none;
                margin: 10px 0 0 0;
            }
            .form-style-1 label{
                margin:0 0 3px 0;
                padding:0px;
                display:block;
                font-weight: bold;
            }
            .form-style-1 input[type=text],
            .form-style-1 input[type=date],
            .form-style-1 input[type=datetime],
            .form-style-1 input[type=number],
            .form-style-1 input[type=search],
            .form-style-1 input[type=time],
            .form-style-1 input[type=url],
            .form-style-1 input[type=email],
            textarea,
            select{
                box-sizing: border-box;
                -webkit-box-sizing: border-box;
                -moz-box-sizing: border-box;
                border:1px solid #BEBEBE;
                padding: 7px;
                margin:0px;
                -webkit-transition: all 0.30s ease-in-out;
                -moz-transition: all 0.30s ease-in-out;
                -ms-transition: all 0.30s ease-in-out;
                -o-transition: all 0.30s ease-in-out;
                outline: none; 
            }
            .form-style-1 input[type=text]:focus,
            .form-style-1 input[type=date]:focus,
            .form-style-1 input[type=datetime]:focus,
            .form-style-1 input[type=number]:focus,
            .form-style-1 input[type=search]:focus,
            .form-style-1 input[type=time]:focus,
            .form-style-1 input[type=url]:focus,
            .form-style-1 input[type=email]:focus,
            .form-style-1 textarea:focus,
            .form-style-1 select:focus{
                -moz-box-shadow: 0 0 8px #88D5E9;
                -webkit-box-shadow: 0 0 8px #88D5E9;
                box-shadow: 0 0 8px #88D5E9;
                border: 1px solid #88D5E9;
            }
            .form-style-1 .field-divided{
                width: 49%;
            }
             .form-style-1 .field-long{
                width: 100%;
            }
            .form-style-1 .field-select{
                width: 100%;
            }
            .form-style-1 .field-textarea{
                height: 100px;
            }
            .form-style-1 input[type=submit], .form-style-1 input[type=button]{
                background: #4B99AD;
                padding: 8px 15px 8px 15px;
                border: none;
                color: #fff;
            }
            .form-style-1 input[type=submit]:hover, .form-style-1 input[type=button]:hover{
                background: #4691A4;
                box-shadow:none;
                -moz-box-shadow:none;
                -webkit-box-shadow:none;
            }
            .form-style-1 .required{
                color:red;
            }
           
        </style>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
            <h1>Edit Product</h1>
            <form action="ControllerProducts">
                <ul class="form-style-1">
                    <li><label>Code:${SP.code}</label></li>
                <input type="hidden" name="txtCode" value="${SP.code}"/>
                <li>
                    <label>Name <span class="required">*</span></label>
                    <input type="text" name="txtName" class="field-long" value="${SP.name}"/>
                </li>
                <li>
                    <label>Price <span class="required">*</span></label>
                    <input type="text" name="txtPrice" class="field-long" value="${SP.price}"/>
                </li>
                <li>
                    <label>Brand: <span class="required">*</span></label>
                    <input type="text" name="txtBrand" class="field-long" value="${SP.brand}"/>
                </li>
                <li>
                    <label>Image: <span class="required">*</span></label>              
                    <input type="file" name="txtImages" class="field-long"/>
                </li>
                <li>
                    <input type="hidden" name="txtImages" value="${SP.images}"/>
                    <input type="submit" name="action" value="Update" />
                </li>
            </ul>
        </form>
        <jsp:include page="footer_1.jsp"></jsp:include>
    </body>
</html>
