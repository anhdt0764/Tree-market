<%-- 
    Document   : user
    Created on : Feb 23, 2024, 10:03:51 PM
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
								<a class="btn-userlogout" href="logout" ><i class="fa fa-sign-out pr-1" aria-hidden="true"></i>Đăng xuất</a>
							</div>
						</div>
						<div class="user-list-action">
							<ul>
								<li><a href="#" id="btnInfo">Thông tin tài khoản</a></li>
								
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
                                                    <p >${sessionScope.acc.uName}</p>
						</div>
					</div>
					<div class="user-info-row">
						<div class="user-left">
							<p>Username</p>
						</div>
						<div class="user-right">
							<p >${sessionScope.acc.name}</p>
						</div>
					</div>
					<div class="user-info-row">
						<div class="user-left">
							<p>Password</p>
						</div>
						<div class="user-right">
							<p >${sessionScope.acc.pass}</p>
						</div>
					</div>
                                                <div class="user-info-row">
						<div class="user-left">
							<p>Role</p>
						</div>
						<div class="user-right">
							<p >${(sessionScope.acc.role==1)?"Admin":"User"}</p>
						</div>
					</div>
					

					<a href="#" id="closeInfo">
						[Ẩn]
					</a>
				</div>
					
			        
				</div>
			</div>
		</div>
	</div>
	<!-- endMain -->


<jsp:include page="footer.jsp"></jsp:include>
	
	
	<script type="text/javascript" src="js/account.js"></script>
	<script type="text/javascript" src="js/menu.js"></script>
	<script type="text/javascript" src="js/coupon.js"></script>
	<script type="text/javascript" src="js/product.js"></script>
	<script type="text/javascript" src="js/libs/jquery.min.js"></script>
	<script type="text/javascript" src="js/shoppingcart.js"></script>
	<script type="text/javascript" src="js/common.js"></script>
</body>
</html>
