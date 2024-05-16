<%-- 
    Document   : seller
    Created on : Feb 23, 2024, 9:59:10 PM
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
	<header class="header">
		<!-- top header -->
		<div class="container-fluid top-header-wrapper">
			<div class="container">
				<div class="top-header">
					<nav class="navbar navbar-expand-lg navbar-light bg-light">
					  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
					    <span class="navbar-toggler-icon"></span>
					  </button>

					  <div class="collapse navbar-collapse nav-float-right" id="navbarSupportedContent">
					    <ul class="navbar-nav mr-auto">

					      <li class="nav-item">
					        <a class="nav-link dropdown-toggle no-right-icon mr-2" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
					        	<i class="fa fa-bell-o" aria-hidden="true"></i>
					        	<span class="prbage" id="countCoupon"></span>
					        </a>
					        <div class="dropdown-menu dropdown-notice" aria-labelledby="navbarDropdown" id="listNoticeCoupon">
					          <a class="dropdown-item ttl text-white" href="#">Thông Báo</a>
					          <!-- <a class="dropdown-item" href="#">Nhập mã MUANGAY giảm ngay 150.000đ cho tất cả mặt hàng</a>
					          <a class="dropdown-item" href="#">Nhập mã THU7MUANGAY giảm 50k trong thứ 7 này</a>
					          <a class="dropdown-item" href="#">Nhập mã COVID-19 giảm 15k cho tất cả mặt hàng</a> -->
					        </div>
					      </li>

					      <li class="nav-item">
					        <a class="nav-link" data-toggle="modal" data-target="#cmspanel" style="cursor: pointer;"><i class="fa fa-sign-in pr-1"></i> <span class="hidden-text-lg" id="adminName">Đăng Nhập</span></a>
					      </li>
					      <li class="nav-item">
					        <a class="nav-link" href="#" onclick="logout()"><i class="fa fa-sign-out pr-1"></i></a>
					      </li>
					    </ul>
					  </div>
					</nav>
				</div>
			</div>
	<!-- Admin Control -->
	

	<!-- Modal admin panel -->
	<div class="modal fade modal-panel" id="cmspanel" tabindex="-1" role="dialog" aria-labelledby="cmspanel" aria-hidden="true">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h5 class="modal-title" id="cmspanel">Admin Panel</h5>
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	          <span aria-hidden="true">&times;</span>
	        </button>
	      </div>
	      <div class="modal-body modal-login" id="modal-login">
	      	<form>
	      		<h5>Đăng nhập</h5>
	      		<small style="color: red" id="error"></small>
	      		<p id="user_message"></p>
			  <div class="form-group">
			    <label for="username">Username</label>
			    <input type="text" class="form-control" id="username" aria-describedby="username">
			  </div>
			  <div class="form-group">
			    <label for="password">Password</label>
			    <input type="password" class="form-control" id="password">
			  </div>
			  <div class="form-group form-check">
			    <input type="checkbox" class="form-check-input" id="sure">
			    <label class="form-check-label" for="sure">Nhớ mật khẩu</label>
			  </div>
			  <a class="btn btn-success text-light" onclick="login()">Đăng Nhập</a>
			  <a class="btn btn-secondary text-light" id="skipReg">Đăng Ký</a>
			</form>
	      </div>
	      <div class="modal-body modal-reg" id="modal-reg">
	      	<div class="banhangcungantgreen">
	      		<div class="banhangcungantgreen_wrap">
	      			<img src="img/hoptac.jpg" alt="banhangcungantgreen">
	      		</div>
	      		<p>Đăng ký tham gia <b>Bán hàng cùng Ant Green</b>. Bán hàng hiệu quả - năng cao thu nhập!</p>
	      	</div>
	      	<form>
	      		<h5>Đăng ký</h5>
	      		<small style="color: red" id="error"></small>
			  <div class="form-group">
			    <label for="username">Username</label>
			    <input type="text" class="form-control" id="reg_username" aria-describedby="username">
			  </div>
			  <div class="form-group">
			    <label for="reg_name">Name</label>
			    <input type="text" class="form-control" id="reg_name" aria-describedby="name">
			  </div>
			  <div class="form-group">
			    <label for="password">Password</label>
			    <input type="password" class="form-control" id="reg_password">
			  </div>
			  <div class="form-group">
			    <label for="password">RePassword</label>
			    <input type="password" class="form-control" id="reg_repassword">
			  </div>
			  <div class="form-group form-check">
			    <input type="checkbox" class="form-check-input" id="sure">
			    <label class="form-check-label" for="sure">Đồng ý với chính sách và điều khoản</label>
			  </div>
			  <a class="btn btn-success text-light" id="skipReg" onclick="register()">Đăng Ký</a>
			  <br/>
			   <p class="d-block mt-3">Bạn đã có tài khoản? <a class="text-dark" id="backLogin" style="cursor: pointer; color: #28a745!important">Đăng Nhập</a></p>
			</form>
	      </div>
	      <div class="modal-body modal-secure" id="modal-secure">
	        <!-- body -->
	        	<p id="greeting"></p>

	        	<div id="doughnutChart" class="chart"></div>



				<a style="cursor: pointer;" class="text-dark btnmanageAcc"  data-toggle="modal" data-target="#manageProducts">Quản lý sản phẩm</a>
				<a style="cursor: pointer;" class="text-dark btnmanageAcc"  data-toggle="modal" data-target="#manageSlide">Quản lý slide</a>
	        <!-- end body -->
	      </div>

	      <div class="modal-footer">
	        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
	      </div>
	    </div>
	  </div>
	</div>
	<!-- end Modal admin panel -->
	<!-- end Admin Control -->
		</div>
		<!-- end top header -->
		<div class="container-fluid header-wrapper">
			<div class="container">
				<div class="main-header">
					<div class="row">
						<div class="col-md-3 col-sm-3 col-12">
							<div class="logo">
								<a href="index.html" class="logo-wrapper">
									<img src="img/logo.png" alt="logo">
								</a>
							</div>
						</div>
						<div class="col-md-5 col-sm-5 col-12">
							<form class="search-form">
								<input type="search" placeholder="Tìm kiếm..." class="input-group-field search-text"/>
								<span class="input-group-btn">
									<button class="btn icon-fallback-text">
										<i class="fa fa-search"></i>
									</button>
								</span>
							</form>
						</div>
						<div class="col-md-4 col-sm-4 col-12">
							<div class="items-cart-inner clearfix mini-cart" id="items-cart-inner">
								<a class="showcart" data-toggle="modal" data-target="#cart" title="Giỏ hàng">
									<i class="fa fa-cart-arrow-down"></i>
									<div class="basket-item-count count_item_pr"><span class="total-count"></span></div>
								</a>
							</div>
							<div class="customer-support-text clearfix">
								<img src="img/hotline_image.svg" alt="Hotline">
								<div class="text">
									<span>Hotline</span><a href="tel:0123456789">0123 456 789</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

<!-- Card modal  -->

 <!-- Modal -->
<div class="modal fade showcard-modal" id="cart" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content hiucus-modal">
      <div class="modal-header hiucus-mdheader">
        <h5 class="modal-title" id="exampleModalLabel">Giỏ hàng của bạn</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <table class="table">
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
        	<tbody class="show-cart">
        		
        	</tbody>
          
        </table>
        <div class="ttprice-wrap">Tổng: <span class="span-of-span"><span class="total-cart"></span> VNĐ</span></div>
      </div>
      <div class="modal-footer">
      	<a href="cart.html" class="btn btn-primary btn-hcart"><i class="fa fa-cart-plus" aria-hidden="true"></i>Giỏ hàng</a>
        <a href="checkout.html" class="btn btn-success">Thanh Toán</a>
        <button class="clear-cart btn btn-danger btn-hdelall">Xóa Tất Cả</button>
      </div>
    </div>
  </div>
</div> 
<!-- end Card modal  -->
		<div class="container-fluid secondary-header">
			<div class="inner-main-menu container">
				<nav class="navbar navbar-expand-lg navbar-light bg-light nav-custom">
				   <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
				   <span class="navbar-toggler-icon"></span>
				   </button>
				   <div class="collapse navbar-collapse" id="navbarNav">
				      <ul class="navbar-nav" id="cmsMenu">
						<!--  <li class="nav-item">
						 	<a class="nav-link" href="#">Trang chủ</a>
						 </li>
						 <li class="nav-item">
						 	<a class="nav-link" href="#">Giới thiệu</a>
						 </li>
						 <li class="nav-item">
						 	<a class="nav-link" href="product.html">Sản phẩm</a>
						 </li>
						 <li class="nav-item">
						 	<a class="nav-link" href="#">Tin tức</a>
						 </li>
						 <li class="nav-item">
						 	<a class="nav-link" href="#">Liên hệ</a>
						 </li> -->

						 <!-- <li class="nav-item">
						 	<a data-toggle="modal" data-target="#cmspanel" class="nav-link" style="cursor: pointer;">Đăng Nhập</a>
						 </li> -->
						 
				      </ul>
				   </div>
				</nav>
			</div>
		</div>
	</header>

	<!-- Main -->
	<div class="container-fluid">
		<div class="container user-wrap">
			<div class="row">
				<div class="col-md-3 col-sm-3 col-12">
					<div class="user-card">
						<div class="user-card-inner">
							<div class="user-card-ima">
								<img src="img/userlogin1.png">
							</div>
							<div class="user-card-info">
								<p class="user-loginname" id="adminName2"></p>
								<a class="btn-userlogout" href="index.html" onclick='logout()'><i class="fa fa-sign-out pr-1" aria-hidden="true"></i>Đăng xuất</a>
							</div>
						</div>
						<div class="user-list-action">
							<ul>
								<li><a href="#" id="btnInfo">Thông tin tài khoản</a></li>
								<li><a href="#" id="innerChangePassword">Đổi mật khẩu</a></li>
								<li><a href="#">Bán hàng cùng AntGreen</a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-md-9 col-sm-9 col-12 user-main-container">
				
				<div class="user-infomation" id="userInfo">
					<h5 class="modal-title mb-2 hcustom" id="exampleModalLabel">Thông tin tài khoản</h5>
					<div class="user-info-row">
						<div class="user-left">
							<p>Full Name</p>
						</div>
						<div class="user-right">
							<p id="d_name"></p>
						</div>
					</div>
					<div class="user-info-row">
						<div class="user-left">
							<p>Username</p>
						</div>
						<div class="user-right">
							<p id="d_username"></p>
						</div>
					</div>
					<div class="user-info-row">
						<div class="user-left">
							<p>Password</p>
						</div>
						<div class="user-right">
							<p>
								<input class="form-hiu-control" type="password" id="inputNewPass" value="******">
								<a class="inner-ui-btn" href="" onclick="getNewPassword()">Cập nhật</a>
							</p>
						</div>
					</div>
					<div class="user-info-row">
						<div class="user-left">
							<p>Email</p>
						</div>
						<div class="user-right">
							<p><span id="d_usernamex"></span>@gmail.com</p>
						</div>
					</div>
					<div class="user-info-row">
						<div class="user-left">
							<p>Website</p>
						</div>
						<div class="user-right">
							<p></p>
						</div>
					</div>
					<div class="user-info-row">
						<div class="user-left">
							<p>Tỉnh thành</p>
						</div>
						<div class="user-right">
							<p></p>
						</div>
					</div>
					<div class="user-info-row">
						<div class="user-left">
							<p>Địa chỉ</p>
						</div>
						<div class="user-right">
							<p></p>
						</div>
					</div>
					<div class="user-info-row">
						<div class="user-left">
							<p>Facebook</p>
						</div>
						<div class="user-right">
							<p></p>
						</div>
					</div>
					<div class="user-info-row">
						<div class="user-left">
							<p>Instagram</p>
						</div>
						<div class="user-right">
							<p></p>
						</div>
					</div>

					<a href="#" id="closeInfo">
						[Ẩn]
					</a>
				</div>

				<div class="card-body">
					<h5 class="modal-title mb-2 hcustom" id="exampleModalLabel">Quản lý sản phẩm</h5>
	                  <a data-toggle="modal" data-target="#exampleModal" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm mb-2" style="color: white"><i class="fa fa-plus fa-sm text-white-50" aria-hidden="true"></i> Thêm sản phẩm</a>
	                  <table class="table">
	                    <thead>
	                      <tr>
	                        <th>Mã SP</th>
	                        <th>Hình Ảnh</th>
	                        <th>Tên Sản Phẩm</th>
	                        <th>Giá Sản Phẩm</th>
	                        <th>Xuất Xứ</th>
	                        <th>Danh Mục</th>
	                        <th>Hiển thị</th>
	                        <th>Thao Tác</th>
	                      </tr>
	                    </thead>
	                    <tbody id="listProductInAdmin"></tbody>
	                  </table>
	              </div>

					<h5 class="modal-title mb-2 hcustom" id="exampleModalLabel">Giỏ hàng của bạn</h5>
					<table class="table">
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
			        	<tbody class="show-cart">
			        		
			        	</tbody>
			          
			        </table>
			        <div class="action-list">
			        	<a class="btn btn-success user-updateCart" data-toggle="modal" data-target="#cart">Cập nhật giỏ hàng</a>
					    <a href="cart.html" class="btn btn-success">Chi tiết giỏ hàng</a>
					    <a href="checkout.html" class="btn btn-success">Thanh Toán</a>
					    <button class="clear-cart btn btn-danger btn-hdelall">Xóa Tất Cả</button>
			        </div>
			        
				</div>
			</div>
		</div>
	</div>
	<!-- endMain -->
<!-- Modal thêm sản phẩm -->
  <div class="modal fade modal-panel" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" style="z-index: 9999">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="modalTitleCreate">Thêm mới sản phẩm</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <!-- body -->
          <form name="myForm">
            <div class="form-group">
          <label for="exampleInputEmail1">Product Name<span style="color: red">*</span></label>
          <input type="text" class="form-control" id="inputName" >
        </div>
        <div class="row">
          <div class="col-sm-6">
            <div class="form-group">
            <label for="exampleInputEmail1">Price<span style="color: red">*</span></label>
            <input type="number" class="form-control" id="inputPrice">
          </div>
          </div>
          <div class="col-sm-6">
            <div class="form-group">
            <label for="exampleInputEmail1">Product Code<span style="color: red">*</span></label>
            <input type="text" class="form-control" id="inputId" value="SP0001">
          </div>
          </div>
        </div>
        <div class="form-group">
          <label for="exampleInputEmail1">Product Image<span style="color: red">*</span></label>
          <input type="text" class="form-control" id="inputImg" value="img/cay1.jpg">
        </div>
        <div class="row">
          <div class="col-sm-4">
          <div class="form-group">
            <label for="exampleInputEmail1">Feature Product<span style="color: red">*</span></label>
          <select class="form-control" id="inputFea">
            <option value="1">Hiển Thị</option>
            <option value="0">Ẩn</option>
          </select>
          </div>
        </div>
        <div class="col-sm-4">
          <div class="form-group">
            <label for="exampleInputEmail1">Product Category<span style="color: red">*</span></label>
            <select class="form-control" id="inputCate">
            <option value="1">Tiêu cảnh để bàn</option>
            <option value="2">Chậu cảnh để bàn</option>
            <option value="3">Chậu cảnh mini</option>
            <option value="4">Phị kiện trang trí</option>
            <option value="5">Sen đá</option>
          </select>
          </div>
        </div>
        <div class="col-sm-4">
          <div class="form-group">
            <label for="exampleInputEmail1">Product Origin<span style="color: red">*</span></label>
            <select class="form-control" id="inputOrigin">
            <option value="Việt Nam">Việt Nam</option>
            <option value="Nhật Bản">Nhật Bản</option>
          </select>
          </div>
        </div>
      </div>
          </form>
          <!-- end body -->
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
          <div id="submitButtons">
            <button type="button" class="btn btn-primary" onclick="addNewLocalProduct()">Thêm sản phẩm</button>
          </div>
          
        </div>
      </div>
    </div>
  </div>
  <!-- end Modal thêm sản phẩm -->


<br><br>

<div class="top-footer">
	<div class="container top-footer-wrap">
		<div class="row">
			<div class="col-md-3 col-sm-12 col-12">
				<div class="top-footer-inner">
					<div class="d-block">
						<img src="img/logo.png" class="footer-logo" alt="footer logo">
					</div>
					<ul class="f-adress">
						<li><b>Địa chỉ:</b> 33 Nghệ Tĩnh Xô Viết, Hải Châu, Đà Nẵng</li>
						<li><b>Điện thoại:</b> 0123 456 789</li>
						<li><b>Email:</b> quochieuu@gmail.com</li>
					</ul>
				</div>
			</div>
			<div class="col-md-3 col-sm-12 col-12">
				<div class="top-footer-inner">
					<h3 class="footer-title">Về chúng tôi</h3>
					<ul class="f-list">
						<li><a href="#">Giới thiệu chúng tôi</a></li>
						<li><a href="#">Thông tin liên hệ</a></li>
						<li><a href="#">Chính sách mua hàng</a></li>
						<li><a href="#">Chính sách đổi trả</a></li>
						<li><a href="#">Chính sách thanh toán</a></li>
						<li><a href="#">Chính sách đối tác</a></li>
						<li><a href="#">Chính sách bản quyền</a></li>
					</ul>
				</div>
			</div>
			<div class="col-md-3 col-sm-12 col-12">
				<div class="top-footer-inner">
					<h3 class="footer-title">Hỗ trợ</h3>
					<ul class="f-list">
						<li><a href="#">Giới thiệu chúng tôi</a></li>
						<li><a href="#">Thông tin liên hệ</a></li>
						<li><a href="#">Chính sách mua hàng</a></li>
						<li><a href="#">Chính sách đổi trả</a></li>
						<li><a href="#">Chính sách thanh toán</a></li>
						<li><a href="#">Chính sách đối tác</a></li>
						<li><a href="#">Chính sách bản quyền</a></li>
					</ul>
				</div>
			</div>
			<div class="col-md-3 col-sm-12 col-12">
				<div class="top-footer-inner">
					<h3 class="footer-title">Chính sách</h3>
					<ul class="f-list">
						<li><a href="#">Giới thiệu chúng tôi</a></li>
						<li><a href="#">Thông tin liên hệ</a></li>
						<li><a href="#">Chính sách mua hàng</a></li>
						<li><a href="#">Chính sách đổi trả</a></li>
						<li><a href="#">Chính sách thanh toán</a></li>
						<li><a href="#">Chính sách đối tác</a></li>
						<li><a href="#">Chính sách bản quyền</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>
<div class='footer' id='footer'>
   <svg class='wave-animation' preserveAspectRatio='none' viewBox='0 24 150 28' xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink'>
      <defs>
         <path d='M-160 44c30 0 58-18 88-18s 58 18 88 18 58-18 88-18 58 18 88 18 v44h-352z' id='gentle-wave'></path>
      </defs>
      <g class='wave-bg'>
         <use fill='#49cb67ad' x='50' xlink:href='#gentle-wave' y='0'></use>
         <use fill='#49b14d' x='50' xlink:href='#gentle-wave' y='3'></use>
         <use fill='#222' x='50' xlink:href='#gentle-wave' y='6'></use>
      </g>
   </svg>
   <div class='footer-widget main-container section container' id='footer-widget'>
      <div class='widget HTML' data-version='1' id='HTML8'>
         <ul class='link-social widget-content'>
            <li>
               <a href='javascript:void(0)' rel='nofollow' target='_blank' title='Ikuti di Facebook'>
                  <span style='display:none'>Facebook</span>
                  <svg viewbox='0 0 512 512' xmlns='http://www.w3.org/2000/svg'>
                     <path d='M426.8 64H85.2C73.5 64 64 73.5 64 85.2v341.6c0 11.7 9.5 21.2 21.2 21.2H256V296h-45.9v-56H256v-41.4c0-49.6 34.4-76.6 78.7-76.6 21.2 0 44 1.6 49.3 2.3v51.8h-35.3c-24.1 0-28.7 11.4-28.7 28.2V240h57.4l-7.5 56H320v152h106.8c11.7 0 21.2-9.5 21.2-21.2V85.2c0-11.7-9.5-21.2-21.2-21.2z'></path>
                  </svg>
               </a>
            </li>
            <li>
               <a href='javascript:void(0)' rel='nofollow' target='_blank' title='Ikuti di Instagram'>
                  <span style='display:none'>Instagram</span>
                  <svg viewbox='0 0 512 512' xmlns='http://www.w3.org/2000/svg'>
                     <path d='M336 96c21.2 0 41.3 8.4 56.5 23.5S416 154.8 416 176v160c0 21.2-8.4 41.3-23.5 56.5S357.2 416 336 416H176c-21.2 0-41.3-8.4-56.5-23.5S96 357.2 96 336V176c0-21.2 8.4-41.3 23.5-56.5S154.8 96 176 96h160m0-32H176c-61.6 0-112 50.4-112 112v160c0 61.6 50.4 112 112 112h160c61.6 0 112-50.4 112-112V176c0-61.6-50.4-112-112-112z'></path>
                     <path d='M360 176c-13.3 0-24-10.7-24-24s10.7-24 24-24c13.2 0 24 10.7 24 24s-10.8 24-24 24zM256 192c35.3 0 64 28.7 64 64s-28.7 64-64 64-64-28.7-64-64 28.7-64 64-64m0-32c-53 0-96 43-96 96s43 96 96 96 96-43 96-96-43-96-96-96z'></path>
                  </svg>
               </a>
            </li>
            <li>
               <a href='javascript:void(0)' rel='nofollow' target='_blank' title='Ikuti di Twitter'>
                  <span style='display:none'>Twitter</span>
                  <svg viewbox='0 0 512 512' xmlns='http://www.w3.org/2000/svg'>
                     <path d='M492 109.5c-17.4 7.7-36 12.9-55.6 15.3 20-12 35.4-31 42.6-53.6-18.7 11.1-39.4 19.2-61.5 23.5C399.8 75.8 374.6 64 346.8 64c-53.5 0-96.8 43.4-96.8 96.9 0 7.6.8 15 2.5 22.1-80.5-4-151.9-42.6-199.6-101.3-8.3 14.3-13.1 31-13.1 48.7 0 33.6 17.2 63.3 43.2 80.7-16-.4-31-4.8-44-12.1v1.2c0 47 33.4 86.1 77.7 95-8.1 2.2-16.7 3.4-25.5 3.4-6.2 0-12.3-.6-18.2-1.8 12.3 38.5 48.1 66.5 90.5 67.3-33.1 26-74.9 41.5-120.3 41.5-7.8 0-15.5-.5-23.1-1.4C62.8 432 113.7 448 168.3 448 346.6 448 444 300.3 444 172.2c0-4.2-.1-8.4-.3-12.5C462.6 146 479 129 492 109.5z'></path>
                  </svg>
               </a>
            </li>
            <li>
               <a href='javascript:void(0)' rel='nofollow' target='_blank' title='Ikuti di Youtube'>
                  <span style='display:none'>Youtube</span>
                  <svg viewbox='0 0 512 512' xmlns='http://www.w3.org/2000/svg'>
                     <path d='M508.6 148.8c0-45-33.1-81.2-74-81.2C379.2 65 322.7 64 265 64h-18c-57.6 0-114.2 1-169.6 3.6C36.6 67.6 3.5 104 3.5 149 1 184.6-.1 220.2 0 255.8c-.1 35.6 1 71.2 3.4 106.9 0 45 33.1 81.5 73.9 81.5 58.2 2.7 117.9 3.9 178.6 3.8 60.8.2 120.3-1 178.6-3.8 40.9 0 74-36.5 74-81.5 2.4-35.7 3.5-71.3 3.4-107 .2-35.6-.9-71.2-3.3-106.9zM207 353.9V157.4l145 98.2-145 98.3z'></path>
                  </svg>
               </a>
            </li>
            <li>
               <a href='javascript:void(0)' rel='nofollow' target='_blank' title='Terhubung di LinkedIn'>
                  <span style='display:none'>Linkedin</span>
                  <svg viewbox='0 0 512 512' xmlns='http://www.w3.org/2000/svg'>
                     <path d='M417.2 64H96.8C79.3 64 64 76.6 64 93.9V415c0 17.4 15.3 32.9 32.8 32.9h320.3c17.6 0 30.8-15.6 30.8-32.9V93.9C448 76.6 434.7 64 417.2 64zM183 384h-55V213h55v171zm-25.6-197h-.4c-17.6 0-29-13.1-29-29.5 0-16.7 11.7-29.5 29.7-29.5s29 12.7 29.4 29.5c0 16.4-11.4 29.5-29.7 29.5zM384 384h-55v-93.5c0-22.4-8-37.7-27.9-37.7-15.2 0-24.2 10.3-28.2 20.3-1.5 3.6-1.9 8.5-1.9 13.5V384h-55V213h55v23.8c8-11.4 20.5-27.8 49.6-27.8 36.1 0 63.4 23.8 63.4 75.1V384z'></path>
                  </svg>
               </a>
            </li>
         </ul>
      </div>
   </div>
   <div class='credit-wrapper main-container container' id='credit-wrapper' itemprop='hasPart'>
      <p class='credit-content' itemprop='isPartOf'>
         &#169; 
         <span id='copyrightYear' itemprop='copyrightYear'>
            <script>  var d = new Date(); var n = d.getFullYear(); document.getElementById('copyrightYear').innerHTML = n;</script> - 
         </span>
        <span class='creator' style='opacity:0;'>Designed By <a href='https://www.quochieu.com' rel='noopener' target='_blank'>Fteam</a></span>
      </p>
   </div>
</div>
	
	<script type="text/javascript" src="js/account.js"></script>
	<script type="text/javascript" src="js/menu.js"></script>
	<script type="text/javascript" src="js/coupon.js"></script>
	<script type="text/javascript" src="js/product.js"></script>
	<script type="text/javascript" src="js/libs/jquery.min.js"></script>
	<script type="text/javascript" src="js/shoppingcart.js"></script>
	<script type="text/javascript" src="js/common.js"></script>
	<script type="text/javascript" src="js/admin.js"></script>
</body>
</html>
