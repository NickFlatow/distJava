<%--
  Created by IntelliJ IDEA.
  User: robotbath
  Date: 2/13/19
  Time: 7:09 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width" />
  <!-- bootstrap -->
  <link href="week1/css/bootstrap.css" rel="stylesheet">
  <!--Font awesome-->
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
  <!--Google Fonts-->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro" rel="stylesheet">

  <!--javascript -->
  <script src ="week1/js/btns.js"></script>
  <script src ="week1/js/jquery-3.2.1.min.js"></script>
  <script src ="week1/js/popper.min.js"></script>
  <script src ="week1/js/bootstrap.js"></script>

  <title>Java - Home</title>
</head>
<body>
<!-- navbar -->
<nav class="navbar navbar-dark navbar-expand-md text-white bg-primary b4b">
  <a href="#" class="navbar-brand"><i class="far fa-compass"></i> Java Products</a>
  <button type ="button" class="navbar-toggler"  data-toggle="collapse" data-target="#navSupportedContent" aria-controls="navSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
      <li class = "nav-item active">
        <a class = "nav-link" href = "week1/home.html">Home</a>
      </li>
      <li class = "nav-item active">
        <a class = "nav-link" href = "week1/productDetails.html">Product Details</a>
      </li>
      <li class = "nav-item active">
        <a class = "nav-link" href = "week1/productList.html">Product List</a>
      </li>
      <li class = "nav-item active">
        <a class = "nav-link" href = "week1/shoppingCart.html">Shopping Cart</a>
      </li>
      </li>
    </ul>
    <!-- Search -->
    <form class="form-inline ml-auto my-2 my-lg-0">
      <input class="form-control mr-sm-2 " type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-danger my-2 my-sm-0" type="submit"><i class="fas fa-search"></i> <span class="sr-only"> Search </span></button>
    </form>
  </div>
</nav>
<div class="jumbotron jumbotron-fluid">
  <div class="container">
    <h1>Northwind</h1>
    <p>We have the best prices and selection of high quality foods & veverages on the plant! Chekc out our...</p>
    <hr/>
    <p>For spectacular  international quisine, look no further</p>
    <button type="button" class="btn btn-outline-primary">Order Now <i class="fas fa-arrow-right"></i></button>
  </div>
</div>
</body>
</html>

