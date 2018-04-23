<%-- 
    Document   : index
    Created on : Oct 2, 2017, 2:10:13 PM
    Author     : Administrator
--%>

<%@page import="java.util.List"%>
<%@page import="model.Product"%>
<%@page import="model.Products"%>
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
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
        <div class="agileheader-banner w3mensaits">
			<img src="images/womens-banner.jpg" alt="Groovy Apparel">
		</div>
            <h1 class="w3wthreeheadingaits">WOMEN'S CLOTHING</h1>
            <div class="wthreeproductdisplay">
                <div id="cbp-pgcontainer" class="cbp-pgcontainer">
                    <ul class="cbp-pggrid">
                    <%
                        Products listSP = new Products();
                        List<Product> list = listSP.showProduct("");
                        for (int i = 0; i < list.size(); i++) {
                            if (list.get(i).getBrand().equals("Women")) {
                                
                                out.println("<li class=\"wthree aits w3l\">");
                                out.println("<form action=\"ControllerCartBean\" method=\"post\">");
                                out.println("<div class=\"cbp-pgcontent\" id=\"men-8\">");
                                out.println("<span class=\"cbp-pgrotate\"><i class=\"fa fa-exchange\" aria-hidden=\"true\"></i></span>");
                                out.println("<a href=\"#\"></a>");
                                out.println("<div class=\"cbp-pgitem a3ls\">");
                                out.println("<p><a><img alt=\"Groovy Apparel\" src=\"images/" + list.get(i).getImages() + "\"></a></p>");
                                out.println("<div class=\"cbp-pgitem-flip\">");
                                out.println("</div>");
                                out.println("</div>");
                                out.println("<ul class=\"cbp-pgoptions w3l\">");
                                out.println("<li class=\"cbp-pgoptcompare\">");
                                out.println("<input type=\"checkbox\" name=\"checkboxG8\" id=\"checkboxG8\" class=\"css-checkbox w3\"/><label for=\"checkboxG8\" class=\"css-label\"></label>");
                                out.println("</li>");
                                out.println("<li class=\"cbp-pgoptfav\">");
                                out.println("<span>5 <i class=\"fa fa-star\" aria-hidden=\"true\"></i></span>");
                                out.println("</li>");
                                out.println("<li class=\"cbp-pgoptsize agile\">");
                                out.println("<span data-size=\"XL\">XL</span>");                    
                                out.println("<div class=\"cbp-pgopttooltip\">");
                                out.println("<span data-size=\"XL\">XL</span>");
                                out.println("<span data-size=\"L\">L</span>");
                                out.println("<span data-sie=\"M\">M</span>");
                                out.println("<span data-size=\"S\">S</span>");
                                out.println("</div>");
                                out.println("</li>");
                                out.println("<li class=\"cbp-pgoptsize agile\">");
                                out.print("<input type=\"submit\" class=\"a\" name=\"action\" value=\"Add to Cart\"/>");
                                out.println("</li>");
                                out.println("</ul>");
                                out.println("</div>");
                                out.println("<a href=\"#\">");
                                out.println("<div class=\"cbp-pginfo w3layouts\">");
                                out.println("<h3>"+list.get(i).getName() +"</h3>");
                                out.println("<span class=\"cbp-pgprice\">$" + list.get(i).getPrice() +"</span>");
                                out.println("</div>");
                                out.println("</a>");
                                out.println("<input type=\"hidden\" name=\"txtCode\" value='" + list.get(i).getCode() + "'>");
                                out.println("<input type=\"hidden\" name=\"txtName\" value='" + list.get(i).getName() + "'>");
                                out.println("<input type=\"hidden\" name=\"txtPrice\" value='" + list.get(i).getPrice() + "'>");
                                out.println("<input type=\"hidden\" name=\"txtImages\" value='" + list.get(i).getImages() + "'>");
                                out.println("<input type=\"hidden\" name=\"txtBrand\" value='" + list.get(i).getBrand() + "'>");
                                out.println("</form>");  
                                out.println("</li>");
                                              
                            }
                    
                        }
                    %>
                </ul>
            </div>
        </div>
        <jsp:include page="footer_1.jsp"></jsp:include>
    </body>
</html>
   