<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width" />
    <!-- bootstrap -->
    <link href="css/bootstrap.css" rel="stylesheet">
    <!--Font awesome-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
    <!--Google Fonts-->
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro" rel="stylesheet">

    <!--javascript -->
    <script src ="js/btns.js"></script>
    <script src ="js/jquery-3.2.1.min.js"></script>
    <script src ="js/popper.min.js"></script>
    <script src ="js/bootstrap.js"></script>

    <title>Java - Product Details</title>
</head>
<body>
<div class = "container border">
    <!-- Search -->
    <div class = "row">
        <div class = "col-3">
            <form class="form-inline ml-auto my-2 my-lg-0">
                <button class="btn btn-light my-2 my-sm-0" type="submit"><i class="fas fa-search"></i> <span class="sr-only"> Search </span></button>
                <input class="form-control mr-sm-2 " type="search" placeholder="Search" aria-label="Search">
            </form>
        </div>
        <div class = "col-9 text-right mt-1">
            <a href = "#">Check Out</a>
        </div>
    </div>
</div>

<div class="jumbotron jumbotron-fluid bg-white">
    <div class="container">
        <div class="row">
            <!-- navbar -->
            <div class = "col-sm-3">
                <nav class="navbar flex-column navbar-light navbar-expand-md b4b">
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
                                <a class="nav-link" href="productDetails.jsp">Product Details</a>
                            </li>
                            <li class="nav-item active border-bottom border-secondary">
                                <a class="nav-link" href="productList.html">Product List</a>
                            </li>
                            <li class="nav-item active border-bottom border-secondary">
                                <a class="nav-link" href="shoppingCart.html">Shopping Cart</a>
                            </li>
                            <ul class = "navbar-nav mb-2 mt-2">
                                <li class = "nav-item mx-1"><a href = "#"><i class="fab fa-twitter-square"></i></a></li>
                                <li class = "nav-item mx-1"><a href = "#"><i class="fab fa-facebook-square"></i></a></li>
                                <li class = "nav-item mx-1"><a href = "#"><i class="fab fa-google-plus-square"></i></a></li>
                                <li class = "nav-item mx-1"><a href = "#"><i class="fab fa-instagram"></i></a></li>
                                <li class = "nav-item mx-1"><a href = "#"><i class="fab fa-pinterest-square"></i></a></li>
                                <li class = "nav-item mx-1"><a href = "#"><i class="fab fa-snapchat-square"></i></a></li>
                                <li class = "nav-item mx-1"><a href = "#"><i class="fab fa-vimeo"></i></a></li>
                            </ul>
                        </ul>
                    </div>
                </nav>
            </div>
            <div class = "col-sm-9">
                <div class = "container">
                    <div class = "row text-center">
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
