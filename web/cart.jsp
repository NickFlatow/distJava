<%@ page import="model.Item" %>
<%@ page import="model.ItemCatalog" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Iterator" %>
<%--<%@ page import="java.util.List" %>--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width"/>
    <!-- bootstrap -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
    <%--client--%>
    <link href="css/client.css" rel="stylesheet">
    <!--Font awesome-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css"
          integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
    <!--Google Fonts-->
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro" rel="stylesheet">

    <!--javascript -->
    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="js/btns.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.js"></script>

    <%--animate.css Daniel Eden--%>
    <link href = "https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.0/animate.min.css" rel="stylesheet">

    <title>Java - Home</title>
</head>
<body>

<div class = "container border">
    <!-- Search -->
    <div class = "row">
        <div class = "col-lg-3">
            <form class="form-inline ml-auto my-2 my-lg-0">
                <button class="btn btn-light my-2 my-sm-0" type="submit"><i class="fas fa-search"></i> <span class="sr-only"> Search </span></button>
                <input class="form-control mr-sm-2 " type="search" placeholder="Search" aria-label="Search">
            </form>
        </div>
        <div class = "col-lg-9 text-right mt-1">
            <a href = "#">Check Out</a>
        </div>
    </div>
</div>
<header class = "jumbotron jumbotron-fluid container bg-white mt-2 pt-2 mb-0 pb-0"><h1>Java.</h1></header>


<div class="jumbotron jumbotron-fluid bg-white mt-0 pt-0">
    <div class="container-fluid">
        <div class="row">
            <!-- navbar -->
            <div class = "col-lg-3">
                <nav class="navbar flex-column navbar-light navbar-expand-md b4b stack">
                    <a href="#" class="navbar-brand"><i class="far fa-compass"></i> Java Products</a>
                    <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navSupportedContent"
                            aria-controls="navSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navSupportedContent">
                        <ul class="navbar-nav mr-auto flex-column border-secondary">
                            <li class="nav-item active border-bottom border-top border-secondary">
                                <a class="nav-link" href="index.jsp">Home</a>
                            </li>
                            <li class="nav-item active border-bottom border-secondary">
                                <a class="nav-link" href="catalog.go">Product Details</a>
                            </li>
                            <li class="nav-item active border-bottom border-secondary">
                                <a class="nav-link" href="productList.go">Product List</a>
                            </li>
                            <li class="nav-item active border-bottom border-secondary">
                                <a class="nav-link" href="cart.go">Shopping Cart</a>
                            </li>
                            <ul class = "list-inline  mb-2 mt-2">
                                <li class = "list-inline-item mx-1"><a href = "#"><i class="fab fa-twitter-square"></i></a></li>
                                <li class = "list-inline-item mx-1"><a href = "#"><i class="fab fa-facebook-square"></i></a></li>
                                <li class = "list-inline-item mx-1"><a href = "#"><i class="fab fa-google-plus-square"></i></a></li>
                                <li class = "list-inline-item mx-1"><a href = "#"><i class="fab fa-instagram"></i></a></li>
                                <li class = "list-inline-item mx-1"><a href = "#"><i class="fab fa-pinterest-square"></i></a></li>
                                <li class = "list-inline-item mx-1"><a href = "#"><i class="fab fa-snapchat-square"></i></a></li>
                                <li class = "list-inline-item mx-1"><a href = "#"><i class="fab fa-vimeo"></i></a></li>
                            </ul>
                        </ul>
                    </div>
                </nav>
            </div>
            <%--image div--%>
            <%--<div><h2>Featured Products</h2></div>--%>
            <div class = "col-lg-9">
                <div class = "container">
                    <div class = "row text-center">
                        <table>
                            <%
                                List recs = (List) request.getAttribute("catalog");
                                Iterator it = recs.iterator();
                                double total = 0;
                                while (it.hasNext()) {
                                    Item item = (Item) it.next();
                                    out.print("<tr class='purch'><td> " + item.getName() + " </td><td>" +
                                            String.format("$%3.2f",item.getCost()) + "</td></tr>");
                                    total+=item.getCost();
                                }
                                out.print("<tr class='total' ><td>Total:</td><td>" +
                                        String.format("$%3.2f",total) + "</td></tr>");
                            %>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>