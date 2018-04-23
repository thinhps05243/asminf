<%-- 
    Document   : header
    Created on : Oct 16, 2017, 7:46:43 PM
    Author     : Administrator
--%>

<%@page import="java.util.List"%>
<%@page import="model.Customers"%>
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

        <!-- Font-Awesome-File-Links -->
        <!-- CSS --> <link rel="stylesheet" href="css1/font-awesome.css" 		 type="text/css" media="all">
        <!-- TTF --> <link rel="stylesheet" href="fonts/fontawesome-webfont.ttf" type="text/css" media="all">
        <!-- //Font-Awesome-File-Links -->
                <link rel="stylesheet" href="https://unpkg.com/purecss@1.0.0/build/pure-min.css" integrity="sha384-nn4HPE8lTHyVtfCBi5yW9d20FjT8BJwUXyWZT9InLYax14RDjBj46LmSztkmNP9w" crossorigin="anonymous">
    </head>
    <body>

        <!-- Header -->
        <div class="agileheader" id="agileitshome">

            <!-- Navigation -->
            <nav class="navbar navbar-default w3ls navbar-fixed-top">
                <div class="container">
                    <div class="navbar-header wthree nav_2">
                        <button type="button" class="navbar-toggle collapsed navbar-toggle1" data-toggle="collapse" data-target="#bs-megadropdown-tabs">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand agileinfo" href="index.jsp"><span>210</span> Store</a> 
                        <ul class="w3header-cart">
                            <li class="wthreecartaits"><span class="my-cart-icon"><i class="fa fa-cart-arrow-down" aria-hidden="true"></i><span class="badge badge-notify my-cart-badge"></span></span></li>
                        </ul>
                    </div>
                    <div id="bs-megadropdown-tabs" class="navbar-collapse collapse">
                        <ul class="nav navbar-nav">
                            <%
                                    String user = (String) session.getAttribute("USER");
                                    if (user == null) {
                                %>
                            <li class="dropdown">
                                <a href="men.jsp" class="dropdown-toggle w3-agile hyper" data-toggle="dropdown"><span> MEN </span></a>
                                <ul class="dropdown-menu aits-w3 multi multi1">
                                    <div class="row">

                                        <div class="col-sm-3 w3layouts-nav-agile w3layouts-mens-nav-agileits w3layouts-mens-nav-agileits-1">
                                            <ul class="multi-column-dropdown">
                                                <li class="heading">FEATURED</li>
                                                <li><a href="men.jsp"><i class="fa fa-angle-right" aria-hidden="true"></i>New Arrivals</a></li>
                                                <li><a href="men.jsp"><i class="fa fa-angle-right" aria-hidden="true"></i>Online Only</a></li>
                                                <li><a href="men.jsp"><i class="fa fa-angle-right" aria-hidden="true"></i>Brands</a></li>
                                                <li><a href="men.jsp"><i class="fa fa-angle-right" aria-hidden="true"></i>Clearance Sale</a></li>
                                                <li><a href="men.jsp"><i class="fa fa-angle-right" aria-hidden="true"></i>Discount Store</a></li>
                                                <li><a href="men.jsp"><i class="fa fa-angle-right" aria-hidden="true"></i>Editor's Pick</a></li>
                                            </ul>
                                        </div>

                                        <div class="col-sm-3 w3layouts-nav-agile w3layouts-mens-nav-agileits w3layouts-mens-nav-agileits-2">
                                            <p>TORSO</p>
                                            <a href="men.jsp"><img src="images/men-nav-1.jpg" alt="Groovy Apparel"></a>
                                        </div>

                                        <div class="col-sm-3 w3layouts-nav-agile w3layouts-mens-nav-agileits w3layouts-mens-nav-agileits-3">
                                            <p>LEGS</p>
                                            <a href="men.jsp"><img src="images/men-nav-2.jpg" alt="Groovy Apparel"></a>
                                        </div>

                                        <div class="col-sm-3 w3layouts-nav-agile w3layouts-mens-nav-agileits w3layouts-mens-nav-agileits-4">
                                            <p>ACCESSORIES</p>
                                            <a href="men.jsp"><img src="images/men-nav-3.jpg" alt="Groovy Apparel"></a>
                                        </div>

                                        <div class="clearfix"></div>
                                        <p class="promo">Use Promo Code <span>#CFFGTY56</span> and take 30% off the products. <a href="#">Details</a></p>
                                    </div>

                                </ul>
                            </li>

                            <li class="dropdown">
                                <a href="women.jsp" class="dropdown-toggle hyper" data-toggle="dropdown"><span> WOMEN </span></a>
                                <ul class="dropdown-menu multi multi2">
                                    <div class="row">

                                        <div class="col-sm-3 w3layouts-nav-agile w3layouts-womens-nav-agileits w3layouts-womens-nav-agileits-1">
                                            <ul class="multi-column-dropdown">
                                                <li class="heading">FEATURED</li>
                                                <li><a href="women.jsp"><i class="fa fa-angle-right" aria-hidden="true"></i>New Arrivals</a></li>
                                                <li><a href="women.jsp"><i class="fa fa-angle-right" aria-hidden="true"></i>Online Only</a></li>
                                                <li><a href="women.jsp"><i class="fa fa-angle-right" aria-hidden="true"></i>Brands</a></li>
                                                <li><a href="women.jsp"><i class="fa fa-angle-right" aria-hidden="true"></i>Clearance Sale</a></li>
                                                <li><a href="women.jsp"><i class="fa fa-angle-right" aria-hidden="true"></i>Discount Store</a></li>
                                                <li><a href="women.jsp"><i class="fa fa-angle-right" aria-hidden="true"></i>Editor's Pick</a></li>
                                            </ul>
                                        </div>

                                        <div class="col-sm-3 w3layouts-nav-agile w3layouts-womens-nav-agileits w3layouts-womens-nav-agileits-2">
                                            <p>TOP</p>
                                            <a href="women.jsp"><img src="images/women-nav-1.jpg" alt="Groovy Apparel"></a>
                                        </div>

                                        <div class="col-sm-3 w3layouts-nav-agile w3layouts-womens-nav-agileits w3layouts-womens-nav-agileits-3">
                                            <p>LEGS</p>
                                            <a href="women.jsp"><img src="images/women-nav-2.jpg" alt="Groovy Apparel"></a>
                                        </div>

                                        <div class="col-sm-3 w3layouts-nav-agile w3layouts-womens-nav-agileits w3layouts-womens-nav-agileits-4">
                                            <p>ACCESSORIES</p>
                                            <a href="women.jsp"><img src="images/women-nav-3.jpg" alt="Groovy Apparel"></a>
                                        </div>

                                        <div class="clearfix"></div>
                                        <p class="promo">Use Promo Code <span>#CFFGTY56</span> and take 30% off the products. <a href="#">Details</a></p>
                                    </div>

                                </ul>
                            </li>
                            <li><a href="about.jsp">ABOUT</a></li>
                            <%
                                } else  {
                                    Customers list = new Customers();
                                    List<Customers> ds = list.showCustomer("");
                                    for (int i = 0; i < ds.size(); i++) {
                                        if (ds.get(i).getUsername().equals(user)) {
                                            if (user != null && ds.get(i).isRoles() == true) {
                                %>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle w3-agile hyper" data-toggle="dropdown"><span> MEN </span></a>
                                <ul class="dropdown-menu aits-w3 multi multi1">
                                    <div class="row">

                                        <div class="col-sm-3 w3layouts-nav-agile w3layouts-mens-nav-agileits w3layouts-mens-nav-agileits-1">
                                            <ul class="multi-column-dropdown">
                                                <li class="heading">FEATURED</li>
                                                <li><a href="men.jsp"><i class="fa fa-angle-right" aria-hidden="true"></i>New Arrivals</a></li>
                                                <li><a href="men.jsp"><i class="fa fa-angle-right" aria-hidden="true"></i>Online Only</a></li>
                                                <li><a href="men.jsp"><i class="fa fa-angle-right" aria-hidden="true"></i>Brands</a></li>
                                                <li><a href="men.jsp"><i class="fa fa-angle-right" aria-hidden="true"></i>Clearance Sale</a></li>
                                                <li><a href="men.jsp"><i class="fa fa-angle-right" aria-hidden="true"></i>Discount Store</a></li>
                                                <li><a href="men.jsp"><i class="fa fa-angle-right" aria-hidden="true"></i>Editor's Pick</a></li>
                                            </ul>
                                        </div>

                                        <div class="col-sm-3 w3layouts-nav-agile w3layouts-mens-nav-agileits w3layouts-mens-nav-agileits-2">
                                            <p>TORSO</p>
                                            <a href="men.jsp"><img src="images/men-nav-1.jpg" alt="Groovy Apparel"></a>
                                        </div>

                                        <div class="col-sm-3 w3layouts-nav-agile w3layouts-mens-nav-agileits w3layouts-mens-nav-agileits-3">
                                            <p>LEGS</p>
                                            <a href="men.jsp"><img src="images/men-nav-2.jpg" alt="Groovy Apparel"></a>
                                        </div>

                                        <div class="col-sm-3 w3layouts-nav-agile w3layouts-mens-nav-agileits w3layouts-mens-nav-agileits-4">
                                            <p>ACCESSORIES</p>
                                            <a href="men.jsp"><img src="images/men-nav-3.jpg" alt="Groovy Apparel"></a>
                                        </div>

                                        <div class="clearfix"></div>
                                        <p class="promo">Use Promo Code <span>#CFFGTY56</span> and take 30% off the products. <a href="#">Details</a></p>
                                    </div>

                                </ul>
                            </li>

                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle hyper" data-toggle="dropdown"><span> WOMEN </span></a>
                                <ul class="dropdown-menu multi multi2">
                                    <div class="row">

                                        <div class="col-sm-3 w3layouts-nav-agile w3layouts-womens-nav-agileits w3layouts-womens-nav-agileits-1">
                                            <ul class="multi-column-dropdown">
                                                <li class="heading">FEATURED</li>
                                                <li><a href="women.jsp"><i class="fa fa-angle-right" aria-hidden="true"></i>New Arrivals</a></li>
                                                <li><a href="women.jsp"><i class="fa fa-angle-right" aria-hidden="true"></i>Online Only</a></li>
                                                <li><a href="women.jsp"><i class="fa fa-angle-right" aria-hidden="true"></i>Brands</a></li>
                                                <li><a href="women.jsp"><i class="fa fa-angle-right" aria-hidden="true"></i>Clearance Sale</a></li>
                                                <li><a href="women.jsp"><i class="fa fa-angle-right" aria-hidden="true"></i>Discount Store</a></li>
                                                <li><a href="women.jsp"><i class="fa fa-angle-right" aria-hidden="true"></i>Editor's Pick</a></li>
                                            </ul>
                                        </div>

                                        <div class="col-sm-3 w3layouts-nav-agile w3layouts-womens-nav-agileits w3layouts-womens-nav-agileits-2">
                                            <p>TOP</p>
                                            <a href="women.jsp"><img src="images/women-nav-1.jpg" alt="Groovy Apparel"></a>
                                        </div>

                                        <div class="col-sm-3 w3layouts-nav-agile w3layouts-womens-nav-agileits w3layouts-womens-nav-agileits-3">
                                            <p>LEGS</p>
                                            <a href="women.jsp"><img src="images/women-nav-2.jpg" alt="Groovy Apparel"></a>
                                        </div>

                                        <div class="col-sm-3 w3layouts-nav-agile w3layouts-womens-nav-agileits w3layouts-womens-nav-agileits-4">
                                            <p>ACCESSORIES</p>
                                            <a href="women.jsp"><img src="images/women-nav-3.jpg" alt="Groovy Apparel"></a>
                                        </div>

                                        <div class="clearfix"></div>
                                        <p class="promo">Use Promo Code <span>#CFFGTY56</span> and take 30% off the products. <a href="#">Details</a></p>
                                    </div>

                                </ul>
                            </li>
                            <li class="dropdown">
                                <a href="products.jsp" class="dropdown-toggle hyper"><span> Products </span></a>

                            </li>
                            
                            <li class="dropdown">
                                <a href="customer.jsp" class="dropdown-toggle hyper" ><span> Customers </span></a>
                            </li>
                            <li><a href="about.jsp">ABOUT</a></li>
                            <%
                            } else if (user != null && ds.get(i).isRoles() == false) {                            
                            %>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle w3-agile hyper" data-toggle="dropdown"><span> MEN </span></a>
                                <ul class="dropdown-menu aits-w3 multi multi1">
                                    <div class="row">

                                        <div class="col-sm-3 w3layouts-nav-agile w3layouts-mens-nav-agileits w3layouts-mens-nav-agileits-1">
                                            <ul class="multi-column-dropdown">
                                                <li class="heading">FEATURED</li>
                                                <li><a href="men.jsp"><i class="fa fa-angle-right" aria-hidden="true"></i>New Arrivals</a></li>
                                                <li><a href="men.jsp"><i class="fa fa-angle-right" aria-hidden="true"></i>Online Only</a></li>
                                                <li><a href="men.jsp"><i class="fa fa-angle-right" aria-hidden="true"></i>Brands</a></li>
                                                <li><a href="men.jsp"><i class="fa fa-angle-right" aria-hidden="true"></i>Clearance Sale</a></li>
                                                <li><a href="men.jsp"><i class="fa fa-angle-right" aria-hidden="true"></i>Discount Store</a></li>
                                                <li><a href="men.jsp"><i class="fa fa-angle-right" aria-hidden="true"></i>Editor's Pick</a></li>
                                            </ul>
                                        </div>

                                        <div class="col-sm-3 w3layouts-nav-agile w3layouts-mens-nav-agileits w3layouts-mens-nav-agileits-2">
                                            <p>TORSO</p>
                                            <a href="men.jsp"><img src="images/men-nav-1.jpg" alt="Groovy Apparel"></a>
                                        </div>

                                        <div class="col-sm-3 w3layouts-nav-agile w3layouts-mens-nav-agileits w3layouts-mens-nav-agileits-3">
                                            <p>LEGS</p>
                                            <a href="men.jsp"><img src="images/men-nav-2.jpg" alt="Groovy Apparel"></a>
                                        </div>

                                        <div class="col-sm-3 w3layouts-nav-agile w3layouts-mens-nav-agileits w3layouts-mens-nav-agileits-4">
                                            <p>ACCESSORIES</p>
                                            <a href="men.jsp"><img src="images/men-nav-3.jpg" alt="Groovy Apparel"></a>
                                        </div>

                                        <div class="clearfix"></div>
                                        <p class="promo">Use Promo Code <span>#CFFGTY56</span> and take 30% off the products. <a href="#">Details</a></p>
                                    </div>

                                </ul>
                            </li>

                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle hyper" data-toggle="dropdown"><span> WOMEN </span></a>
                                <ul class="dropdown-menu multi multi2">
                                    <div class="row">

                                        <div class="col-sm-3 w3layouts-nav-agile w3layouts-womens-nav-agileits w3layouts-womens-nav-agileits-1">
                                            <ul class="multi-column-dropdown">
                                                <li class="heading">FEATURED</li>
                                                <li><a href="women.jsp"><i class="fa fa-angle-right" aria-hidden="true"></i>New Arrivals</a></li>
                                                <li><a href="women.jsp"><i class="fa fa-angle-right" aria-hidden="true"></i>Online Only</a></li>
                                                <li><a href="women.jsp"><i class="fa fa-angle-right" aria-hidden="true"></i>Brands</a></li>
                                                <li><a href="women.jsp"><i class="fa fa-angle-right" aria-hidden="true"></i>Clearance Sale</a></li>
                                                <li><a href="women.jsp"><i class="fa fa-angle-right" aria-hidden="true"></i>Discount Store</a></li>
                                                <li><a href="women.jsp"><i class="fa fa-angle-right" aria-hidden="true"></i>Editor's Pick</a></li>
                                            </ul>
                                        </div>

                                        <div class="col-sm-3 w3layouts-nav-agile w3layouts-womens-nav-agileits w3layouts-womens-nav-agileits-2">
                                            <p>TOP</p>
                                            <a href="women.jsp"><img src="images/women-nav-1.jpg" alt="Groovy Apparel"></a>
                                        </div>

                                        <div class="col-sm-3 w3layouts-nav-agile w3layouts-womens-nav-agileits w3layouts-womens-nav-agileits-3">
                                            <p>LEGS</p>
                                            <a href="women.jsp"><img src="images/women-nav-2.jpg" alt="Groovy Apparel"></a>
                                        </div>

                                        <div class="col-sm-3 w3layouts-nav-agile w3layouts-womens-nav-agileits w3layouts-womens-nav-agileits-4">
                                            <p>ACCESSORIES</p>
                                            <a href="women.jsp"><img src="images/women-nav-3.jpg" alt="Groovy Apparel"></a>
                                        </div>

                                        <div class="clearfix"></div>
                                        <p class="promo">Use Promo Code <span>#CFFGTY56</span> and take 30% off the products. <a href="#">Details</a></p>
                                    </div>

                                </ul>
                            </li>
                            <li><a href="about.jsp">ABOUT</a></li>
                            <%
                                            }
                                        }
                                    }
                                }
                            %>	
                        </ul>
                    </div>
                </div>
            </nav>



            <div class="agileheader-topbar">
                <div class="container">
                    <div class="col-md-6 agileheader-topbar-grid agileheader-topbar-grid1">
                        <p>Free shipping on orders over $150. <a href="#.html">Details</a></p>
                    </div>
                    <div class="col-md-6 agileheader-topbar-grid agileheader-topbar-grid2">
                        <ul>
                            <li><a href="#">Store Locator</a></li>
                            <li><a href="#">FAQ</a></li>
                                <%
                                    if (user == null) {
                                %>

                            <li><a href="login.jsp">Login</a></li>					
                            <li><a href="register.jsp">Sign out</a></li>
                                <%
                                } else {                                  
                                %>
                            <li>Welcome ${sessionScope.USER}</li>
                            <li>
                                <form action="ControllerCustomers">
                                    <input type="submit" value="Logout" name="action" class="pure-button pure-button-primary"/>
                                </form>
                            </li>
                            
                            <%
                                            }                             
                            %>	
                        </ul>
                    </div>
                    <div class="clearfix"></div>
                </div>


            </div>





        </div>

    </body>
</html>
