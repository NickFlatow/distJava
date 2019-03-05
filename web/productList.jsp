<%--
Created by IntelliJ IDEA.
User: robotbath
Date: 2/13/19
Time: 7:09 PM
To change this template use File | Settings | File Templates.
--%>
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
<%

  ItemCatalog shop = new ItemCatalog();

  // Always a good idea to trim and/or validate input data
  List<Item> result = shop.getItemCatalog();

//  out.print(result.get(0).getName());
  Item req = (Item) request.getAttribute("catalog");

  out.print(req);
//  List recs = (List) request.getAttribute("catalog");
//  out.print(recs.get(0));
////  Iterator it = recs.iterator();
//  out.print("B");
//  while (it.hasNext()) {
//    // Notice we're outputting some HTML. Is that a good idea?
//    // Also, notice we do not cast the object returned by the
//    // iterator to a String. Why?
//    Item item = (Item) it.next();
//    out.print("<tr><td><img src='" + item.getImg() + "' height='100'></td><td>" + item.getName() + "</td><td>$" + item.getCost() + "</td><td>Add to Cart<input type='checkbox' name='cartItem' value=" + item.getProductNumber()+ "></td></tr>");
//  }
%>
</body>
</html>