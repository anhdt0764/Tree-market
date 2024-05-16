<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : checkout
    Created on : Feb 23, 2024, 10:04:37 PM
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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js">
    </script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js">
    </script>
    <!-- <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script> -->
    <!-- common css -->
    <link rel="stylesheet" type="text/css" href="css/site.css">
</head>
<body>

    <jsp:include page="header.jsp"></jsp:include>


	<div class="container">
		<div class="flash-sale-title mb-3 mt-3 ml-3">
			<a href="#" title="">Thông tin giao hàng</a>
		</div>
		<div class="row">
			<div class="col-md-8 col-sm-8 col-12">
				<form class="getInfoCustomer">
					<div class="row">
						<div class="col-sm-6">
							<div class="form-group">
							    <label for="exampleInputEmail1">Họ tên</label>
							    <input type="text" class="form-control" id="getCustomerName" value="Nguyễn Văn A">
							</div>
							<div class="form-group">
							    <label for="exampleInputEmail1">Email</label>
							    <input type="email" class="form-control" id="getCustomerEmail" value="admin@antgreen.com">
							</div>
							<div class="form-group">
							    <label for="exampleInputEmail1">Số điện thoại</label>
							    <input type="number" class="form-control" id="getCustomerPhone" value="0123456789">
							</div>
						</div>
						<div class="col-sm-6">
							<div class="form-group">
							    <label for="exampleInputEmail1">Địa chỉ nhận hàng</label>
							    <textarea type="text" class="form-control" id="getCustomerAddress"></textarea>
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">Tỉnh/Thành Phố</label>
								 <select name="Tỉnh/Thành Phố" id="id_parent" data-child-id='id_child' class='form-control dependent-selects__parent'>
							        <option value="">Thành phố</option>
							        <option value="hcmc" data-child-options="hcmc1|#hcmc2|#hcmc3|#hcmc4|#hcmc5|#hcmc6|#hcmc7|#hcmc8|#hcmc9">Hồ Chí Minh</option>
							        <option value="dn" data-child-options="dn_hc|#dn_lc|#dn-cl">Đà Nẵng</option>
							        <option value="hn" data-child-options="hn1|#hn2|#hn3|#hn4|#hn5|#hn6|#hn7">Hà Nội</option>
							      </select>
							</div>
							<div class="form-group">
							<label for="exampleInputEmail1">Quận/ Huyện</label>      
							      <select name="Quận/Huyện" id="id_child" class='form-control dependent-selects__child'>
							        <option value="">Quận/Huyện</option>
							        <option value="dn_hc">Hải Châu</option>
							        <option value="dn_lc">Liên Chiểu</option>
							        <option value="dn-cl">Cẩm Lệ</option>
							        <option value="hcmc1">Quận 1</option>
							        <option value="hcmc2">Quận 2</option>
							        <option value="hcmc3">Quận 3</option>
							        <option value="hcmc4">Quận 4</option>
							        <option value="hcmc5">Quận 5</option>
							        <option value="hcmc6">Quận 6</option>
							        <option value="hcmc7">Quận 7</option>
							        <option value="hcmc8">Quận 8</option>
							        <option value="hcmc9">Quận 9</option>
							        <option value="hn1">Quận Thanh Xuân</option>
							        <option value="hn2">Quận Cầu Giấy</option>
							        <option value="hn3">Quận Hoàn Kiếm</option>
							        <option value="hn4">Quận Đống Đa</option>
							        <option value="hn5">Quận Ba Đình</option>
							        <option value="hn6">Quận Tây Hồ</option>
							        <option value="hn7">Quận Từ Liêm</option>
							      </select>
							</div>
							<div class="form-group ck-formcheck">
								<label for="exampleInputEmail1">Hình thức thanh toán</label>  
								<div class="form-check">
								  <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios1" value="tt1" checked>
								  <label class="form-check-label" for="exampleRadios1">
								    Thanh toán khi nhận hàng
								  </label>
								</div>
								<div class="form-check">
								  <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios2" value="tt2">
								  <label class="form-check-label" for="exampleRadios2">
								    Chuyển khoản khi nhận hàng
								  </label>
								</div>
								<div class="form-check">
								  <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios3" value="tt3" disabled>
								  <label class="form-check-label" for="exampleRadios3">
								    Thanh toán online
								  </label>
								</div>
							</div>
							<div class="form-group">
							    <label for="exampleInputEmail1">Ghi chú cho đơn hàng của bạn</label>
							    <textarea type="text" class="form-control" id="getCustomerNote"></textarea>
							</div>
						</div>
					</div>
				  
				</form>
				<!-- Modal displayInfo-->
				<div class="modal modal-checkout fade" id="displayInfo" data-backdrop="static" data-keyboard="false" tabindex="-1" role="dialog" aria-labelledby="staticBackdropLabel" aria-hidden="true">
				  <div class="modal-dialog" id="displayInfoes">
				    <div class="modal-content modal-ck">
				      <div class="modal-header">
				        <h5 class="modal-title" id="staticBackdropLabel">Đơn hàng của bạn</h5>
				        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
				          <span aria-hidden="true">&times;</span>
				        </button>
				      </div>
				      <div class="modal-body" id="html-content-holder">
				           <div class="inner-modal-body">
				           	<table class="table checkout-table">
				           		<tbody>
				           			<tr>
				           				<td>Họ tên</td>
				           				<td><p id="disCustomerName"></p></td>
				           			</tr>
				           			<tr>
				           				<td>Email</td>
				           				<td><p id="disCustomerEmail"></p></td>
				           			</tr>
				           			<tr>
				           				<td>Số điện thoại</td>
				           				<td><p id="disCustomerPhone"></p></td>
				           			</tr>
				           			<tr>
				           				<td>Địa chỉ</td>
				           				<td><p id="disCustomerAddress"></p></td>
				           			</tr>
				           			<tr>
				           				<td>Tỉnh/Thành phố</td>
				           				<td><p id="disid_parent"></p></td>
				           			</tr>
				           			<tr>
				           				<td>Quận/Huyện</td>
				           				<td><p id="disid_child"></p></td>
				           			</tr>
				           			<tr>
				           				<td>Hình thức thanh toán</td>
				           				<td><p id="disTrans"></p></td>
				           			</tr>
				           			<tr>
				           				<td>Ghi chú</td>
				           				<td><p id="disCustomerNote"></p></td>
				           			</tr>
				           		</tbody>
				           	</table>
							<table class="CheckoutBill">
								<tbody class="show-cart-CheckoutBill table">
									
								</tbody>
							</table>
							<table class="footerCheckout table">
								<tr>
									<th>Tổng</th>
									<td class="text-right ttl-text"><span class="">${sessionScope.sum-v}</span> ₫</td>
								</tr>
							</table>
				           </div>
				      </div>
				      <div class="modal-footer">
                                          <a style="color: #fff" type="button" class="btn btn-success"  href="checkoutsucces?id=${sessionScope.acc.uId}">Hoàn Tất Thanh Toán</a>
				      </div>
				    </div>
				  </div>
				</div>

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
							<span class=""></span>${v} VNĐ
						</th>
					</tr>
					<tr>
						<th>Thành tiền</th>
						<th class="text-right">
                                                    <span class=""></span> ${sessionScope.sum-v} VNĐ
							<small class="d-block">(Đã bao gồm cả VAT nếu có)</small>
						</th>
					</tr>
					
					<tr>
						<td colspan="2"><button id="completeCheckout" class="btn btn-danger w-100" onclick="displayCheckoutInfo()" data-toggle='modal' data-target='#displayInfo'>Thanh Toán</button></td>
					</tr>
				</table>

                            <form method="post" action="checkout">
					<div class="gift-code-inner">
						<div class="form-group pb-4">
						     <label for="inputGiftCode">Mã giảm giá/ Quà tặng</label>
						     <input type="text" class="form-control input-giftcode" name="inputGiftCode" placeholder="Nhập mã giảm giá ở đây">
                                                     <input type="submit" class="btn btn-customg" value="Đồng ý">
						</div>
					</div>
				</form>
			</div>
		</div>

        </div>

<c:if test="${mess!=null}">
    <script>
        $(document).ready(function(){
            alert("${mess}");
        });
    </script>
</c:if>

	
    <jsp:include page="footer.jsp"></jsp:include>
	
	<script type="text/javascript" src="js/menu.js"></script>
	<script type="text/javascript" src="js/libs/dependent-selects.js"></script>
	<script type="text/javascript" src="js/account.js"></script>
	<script type="text/javascript" src="js/product.js"></script>
	<script type="text/javascript" src="js/coupon.js"></script>
	<script type="text/javascript" src="js/libs/jquery.min.js"></script>
	<script type="text/javascript" src="js/shoppingcart.js"></script>
	<script type="text/javascript" src="js/common.js"></script>
	<script type="text/javascript" src="js/checkout.js"></script>
	<script type="text/javascript" src="js/libs/jquery.min.js"></script>

	<!-- Jquery bootstrap 4 -->

    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</body>
</html>
