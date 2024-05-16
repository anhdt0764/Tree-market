<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : product
    Created on : Feb 22, 2024, 5:10:57 PM
    Author     : ducnk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Danh sách sản phẩm</title>

	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<!-- Font Roboto  -->
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
    <link rel="stylesheet" type="text/css" href="css/site.css">
</head>
<body>
		<jsp:include page="header.jsp"></jsp:include>


	<!-- body -->
	<div class="container-fluid product-fluid">
		<div class="container wrap-product">
			<!-- <div class="flash-sale-title">
				<a href="#" title="Sản phẩm mới">Sản phẩm mới</a>
			</div> -->
			
			<button type="button" class="btn btn-demo mt-3" data-toggle="modal" data-target="#myModal">
				<i class="fa fa-filter pr-2" aria-hidden="true"></i>Lọc sản phẩm
			</button>

			<!-- Modal -->
			<div class="modal left fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
				<div class="modal-dialog" role="document">
					<div class="modal-content">

						<div class="modal-header">
							<h4 class="modal-title modal-filter-title" id="myModalLabel"><i class="fa fa-filter pr-2" aria-hidden="true"></i>Lọc sản phẩm</h4>
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
						</div>

						<div class="modal-body">
                                                    <form method="post" action="filter">
							<div class="filter-wrap mt-3">
								<div id="product-filters">
									<h3 class="product-filter-sm-tiltle">
										Giá
									</h3>
                                                                    
									<div >
                                                                            <input type="radio" name="priceFilter" id="duoi100k" class="custom-checkbox filter-industry" value="0 and 100000">
								   		 <label for="duoi100k"><span>Dưới 100.000₫</span></label>
									</div>
									<div >
								   		<input type="radio" name="priceFilter" id="100k-300k" class="custom-checkbox filter-industry" value="100000 and 300000">
								   		 <label for="100k-300k"><span>Từ 100.000₫ - 300.000₫</span></label>
									</div>
									<div >
								   		<input type="radio" name="priceFilter" id="300k-500k" class="custom-checkbox filter-industry" value="300000 and 500000">
								   		 <label for="300k-500k"><span>Từ 300.000₫ - 500.000₫</span></label>
									</div>
									<div >
								   		<input type="radio" name="priceFilter" id="500k-1m" class="custom-checkbox filter-industry" value="500000 and 1000000">
								   		 <label for="500k-1m"><span>Từ 500.000₫ - 1.000.000₫</span></label>
									</div>
									<div >
								   		<input type="radio" name="priceFilter" id="1m-up" class="custom-checkbox filter-industry" value="1000000 and 3000000">
								   		 <label for="1m-up"><span>Từ 1.000.000₫ trở lên</span></label>
									</div>
								</div>
								<div id="product-filters">
									<h3 class="product-filter-sm-tiltle">
										Danh mục
									</h3>
									<div >
                                                                            <input type="radio" name="categoryFilter"   value="0">
								   		 <label for="0"><span>Tất cả danh mục</span></label>
									</div>
                                                                <c:forEach begin="1" step="1" var="s" end="${listCate.size()}">
                                                                    <div>
                                                                        <input type="radio" name="categoryFilter" value="${s}">
								   		 <label for="1"><span>${listCate.get(s-1).getName()}</span></label>
									</div>
                                                                </c:forEach>	
									
								</div>
                                                            <div> 
                                                                <input type="submit" value="Search" />
                                                            </div>
							</div>
						</form>
						</div>

					</div><!-- modal-content -->
				</div><!-- modal-dialog -->
			</div><!-- modal -->
                        
                        
                        
            <div class="container-fluid product-fluid">
            <div class="container wrap-product">
                <div class="flash-sale-title">
                    <a href="#" title="Sản phẩm mới">Danh Sách Sản Phẩm</a>
                </div>
                <div class="row">
                
                     <c:forEach var="s" items="${listPro}">
                        <div class="col-md-3 col-sm-6 col-12">
                            <div class="cate-item">
                                <a href="detail?pid=${s.id}" class="cate-item-wrap">
                                    <img src="${s.img}" alt="${s.name}">
                                    <div class="category-content">
                                        <h5>${s.name}</h5>
                                        <p><span ></span></p>
                                        <c:if test="${sessionScope.acc!=null}">
                                        <a class="icon-addcart"  href="addcart?id=${s.id}&uid=${sessionScope.acc.uId}">
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
			

<jsp:include page="footer.jsp"></jsp:include>
	
	<!-- ./ body -->
	<script type="text/javascript" src="js/account.js"></script>
	<script type="text/javascript" src="js/product.js"></script>
	<script type="text/javascript" src="js/menu.js"></script>
	<script type="text/javascript" src="js/coupon.js"></script>
	<script type="text/javascript" src="js/libs/jquery.min.js"></script>
	<script type="text/javascript" src="js/shoppingcart.js"></script>
	<script type="text/javascript" src="js/common.js"></script>
	<script type="text/javascript" src="js/filter.js"></script>
</body>
</html>
