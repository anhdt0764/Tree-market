<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : index
    Created on : Feb 22, 2024, 4:14:41 PM
    Author     : ducnk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>Trang chủ</title>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <!-- Font Roboto  -->
        <link href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i&display=swap" rel="stylesheet">

        <!-- Import Boostrap css, js, font awesome here -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">  

        <!-- Icon from Font Awesome -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha256-eZrrJcwDc/3uDhsdt61sL2oOBY362qM3lon1gyExkL0=" crossorigin="anonymous" />

        <!-- Jquery bootstrap 4 -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
        <!-- common css -->
        <link rel="stylesheet" type="text/css" href="css/site.css">

    </head>
    <body>

        <jsp:include page="header.jsp"></jsp:include>


            <div class="container-fluid carousel-fluid">
                <div class="container">
                    <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel" data-interval="3000">
                        <ol class="carousel-indicators">
                            <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
                            <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
                            <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
                        </ol>
                        <div class="carousel-inner" id="cmsSlide">

                        </div>
                        <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="sr-only">Previous</span>
                        </a>
                        <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                        </a>
                    </div>
                </div>
            </div>

            <div class="clearfix"></div>


            <div class="container-fluid product-fluid">
                <div class="container wrap-product">
                    <div class="flash-sale-title">
                        <a href="#" title="Sản phẩm mới">Sản phẩm mới</a>
                    </div>
                    <div class="row">
                    <c:forEach var="s" items="${listNew}">
                        <div class="col-md-3 col-sm-6 col-12">
                            <div class="cate-item">
                                <a href="detail?pid=${s.id}" class="cate-item-wrap">
                                    <img src="${s.img}" alt="danh muc">
                                    <div class="category-content">
                                        <h5>${s.name}</h5>
                                        <p><span></span></p>
                                        <c:if test="${sessionScope.acc!=null}">
                                           <a class="icon-addcart "  href="addcart?id=${s.id}&uid=${sessionScope.acc.uId}" ">
                                            <i class="fa fa-cart-arrow-down"></i>
                                            <p class="eve-addcart">Thêm vào giỏ hàng</p>
                                        </a> 
                                        </c:if>
                                        
                                    </div>
                                </a>
                            </div>
                        </div>

                    </c:forEach>
                </div>
            </div>
        </div>

        

        <!-- Categories -->
        <div class="container-fluid cate-wrapper">
            <div class="container cate-wrap">
                <div class="flash-sale-title">
                    <a href="#" title="Sản phẩm mới">Danh mục nổi bật</a>
                </div>
                <div class="row">
                    <c:forEach var="s" items="${listTopC}">
                        <div class="col-md-3 col-sm-6 col-12">
                            <div class="cate-item">
                                <a href="category?cid=${s.id}" class="cate-item-wrap">
                                    <img src="${s.img}" alt="danh muc">
                                    <div class="category-content">
                                        <h5>${s.name}</h5>
                                        <p><span></span> </p>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </c:forEach>


                </div>
            </div>
        </div>
        <!-- end Categories -->










        <!-- News -->
        
        <!-- end News -->
        
        <jsp:include page="footer.jsp"></jsp:include>
        
            
<c:if test="${mess!=null}">
    <script>
        $(document).ready(function(){
            alert("${mess}");
        });
    </script>
</c:if>
    <h1 style="color: red">${as}</h1>
       

        <script type="text/javascript" src="js/account.js"></script>
        <script type="text/javascript" src="js/menu.js"></script>
        <script type="text/javascript" src="js/slider.js"></script>
        <script type="text/javascript" src="js/coupon.js"></script>
        <script type="text/javascript" src="js/product.js"></script>
        <script type="text/javascript" src="js/news.js"></script>
        <script type="text/javascript" src="js/libs/jquery.min.js"></script>
        <script type="text/javascript" src="js/shoppingcart.js"></script>
        <script type="text/javascript" src="js/common.js"></script>
    </body>
</html>
