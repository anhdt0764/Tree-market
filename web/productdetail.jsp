<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : productdetail
    Created on : Feb 25, 2024, 8:39:20 PM
    Author     : ducnk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
   
    <link href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i&display=swap" rel="stylesheet">

	<!-- Import Boostrap css, js, font awesome here -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">  

	<!-- Icon from Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha256-eZrrJcwDc/3uDhsdt61sL2oOBY362qM3lon1gyExkL0=" crossorigin="anonymous" />

	<!-- Jquery bootstrap 4 -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js">
    </script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js">
    </script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
    <!-- common css -->
     <style>
        body {
            padding: 20px;
            background-color: #f8f9fa;
        }

        .product-container {
            max-width: 600px;
            margin: auto;
            background-color: #ffffff;
            border-radius: 10px;
            padding: 20px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
        }

        .product-image {
            max-width: 100%;
            height: auto;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
        }

        .product-description {
            margin-top: 20px;
        }

        .product-price {
            font-size: 1.8em;
            font-weight: bold;
            margin-top: 10px;
        }

        .add-to-cart-btn {
            margin-top: 20px;
            width: 100%;
            font-size: 1.2em;
        }
    </style>
    <link rel="stylesheet" type="text/css" href="css/site.css">
    <title>Product Detail</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
    <div class="product-container">
        <div class="text-center">
            <img src="${p.img}" alt="Product Image" class="product-image">
        </div>

        <div class="product-description">
            <h2 class="text-center">${p.name}</h2>
            <p class="text-center">${p.description}</p>
        </div>
        
        <div class="product-price text-center">${p.price}đ</div>
        <c:if test="${sessionScope.acc!=null}">
        <a class="btn btn-primary add-to-cart-btn" href="addcart?id=${p.id}&uid=${sessionScope.acc.uId}">Add to Cart</a>
        </c:if>
        
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<jsp:include page="footer.jsp"></jsp:include>
    
</body>
</html>

