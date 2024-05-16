<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : cart
    Created on : Feb 23, 2024, 10:05:04 PM
    Author     : ducnk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>Giỏ hàng</title>
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


            <div class="container">
                <div class="flash-sale-title mb-3 mt-3 ml-3">
                    <a href="#" title="">Chi tiết giỏ hàng<small class="count-in-cart">(<span class="total-count"></span> sản phẩm)</small></a>
                </div>
                <div class="row">
                    <div class="col-md-8 col-sm-8 col-12">

                        <table class="table" >
                            <thead class="cus-thead">
                                <tr>
                                    <th>Hình ảnh</th>
                                    <th>Sản phẩm</th>
                                    <th>Giá gốc</th>
                                    <th>Số lượng</th>
                                    <th>Xóa</th>
                                    <th>Tổng</th>
                                </tr>
                            </thead>
                        <c:forEach var="s" items="${sessionScope.cart}" varStatus="loop">
                            <tr>
                                <td><img style='width: 50px;' src="${s.p.img}" alt='product image'/></td>
                                <td>${s.p.name} </td>
                                <td>${s.p.price} ₫</td>
                                <td style='width: 135px;'><div class='input-group'>
                                        <form action="change">
                                            <input type='number' name="quan"  class='item-count form-control' value="${s.quantity}" >
                                            <input type='text' hidden="" name="id"  class='item-count form-control' value="${s.cId}" >
                                            <input type='text' hidden="" name="uid"  class='item-count form-control' value="${sessionScope.acc.uId}" >
                                            
                                            <button type="submit" class=' btn btn-primary input-group-addon' >Change</button>
                                        </form>
                                        
                                    </div></td>
                                    <td><a href="deletecart?id=${s.cId}&uid=${sessionScope.acc.uId}"><button type="button" class="btn btn-danger" ><i class='fa fa-trash-o' aria-hidden='true'></i></button></a></td>

                                <td>  ${s.p.price*s.quantity}₫</td>
                            </tr>
                        </c:forEach>


                    </table>
                        <div class="ttprice-wrap">Tổng: <span class="span-of-span"><span class="">${sessionScope.sum}</span> VNĐ</span></div>
                </div>
                <div class="col-md-4 col-sm-4 col-12">
                    <table class="table compute-table">
                        <tr>
                            <th>Tạm tính</th>
                            <th class="text-right"><span class="">${sessionScope.sum}</span> VNĐ</th>
                        </tr>
                        <tr>
                            <th>Giảm giá</th>
                            <th class="text-right">
                                <span class="total-cart-giftcode"></span>0 VNĐ
                            </th>
                        </tr>
                        <tr>
                            <th>Thành tiền</th>
                            <th class="text-right">
                                <span class="">${sessionScope.sum}</span> VNĐ
                                <small class="d-block">(Đã bao gồm cả VAT nếu có)</small>
                            </th>
                        </tr>

                        <tr>
                            <td colspan="2"><a href="checkout" class="btn btn-danger w-100">Thanh Toán</a></td>
                        </tr>
                    </table>

                    
                </div>
            </div>

        </div>





        <jsp:include page="footer.jsp"></jsp:include>

        <script type="text/javascript" src="js/menu.js"></script>
        <script type="text/javascript" src="js/account.js"></script>
        <script type="text/javascript" src="js/coupon.js"></script>
        <script type="text/javascript" src="js/product.js"></script>
        <script type="text/javascript" src="js/libs/jquery.min.js"></script>
        <script type="text/javascript" src="js/shoppingcart.js"></script>
        <script type="text/javascript" src="js/common.js"></script>
    </body>
</html>
