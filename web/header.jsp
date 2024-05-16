<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : header
    Created on : Feb 27, 2024, 10:15:30 AM
    Author     : ducnk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
                                    <c:if test="${sessionScope.acc==null}">
                                        <li class="nav-item">
                                            <a class="nav-link" data-toggle="modal" data-target="#cmspanel" style="cursor: pointer;"><i class="fa fa-sign-in pr-1"></i> <span class="hidden-text-lg" id="adminName">Đăng Nhập</span></a>
                                        </li> 
                                    </c:if>
                                    <c:if test="${sessionScope.acc!=null}">
                                        <li class="nav-item">
                                            <a class="nav-link" href="logout" ><i class="fa fa-sign-out pr-1"></i><span class="hidden-text-lg" id="adminName">Đăng Xuất</span></a>
                                        </li>
                                    </c:if>

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
                                <h5 class="modal-title" id="cmspanel">Login</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body modal-login" id="modal-login">
                                <form method="post" action="login">
                                    <h5>Đăng nhập</h5>
                                    <small style="color: red" id="error"></small>
                                    <p id="user_message"></p>
                                    <div class="form-group">
                                        <label for="username">Username</label>
                                        <input type="text" class="form-control" name="username" aria-describedby="username">
                                    </div>
                                    <div class="form-group">
                                        <label for="password">Password</label>
                                        <input type="password" class="form-control" name="password">
                                    </div>
                                    <div class="form-group">
                                        <input type="radio" class="custom-checkbox"  id="sure">
                                        <label ><span>Nhớ mật khẩu</span></label>
                                    </div>
                                    <input class="btn btn-success text-light" type="submit" value="Đăng Nhập"> 
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
                                <form method="post" action="signup">
                                    <h5>Đăng ký</h5>
                                    <small style="color: red" id="error"></small>
                                    <div class="form-group">
                                        <label for="username">Username</label>
                                        <input type="text" class="form-control" name="reg_username" >
                                    </div>
                                    <div class="form-group">
                                        <label for="reg_name">Name</label>
                                        <input type="text" class="form-control" name="reg_name" >
                                    </div>
                                    <div class="form-group">
                                        <label for="password">Password</label>
                                        <input type="password" class="form-control" name="reg_password">
                                    </div>
                                    <div class="form-group">
                                        <label for="password">RePassword</label>
                                        <input type="password" class="form-control" name="reg_repassword">
                                    </div>
                                    <div class="form-group">
                                        <input type="radio" class="custom-checkbox"  id="sure">
                                        <label ><span>Đồng ý với chính sách và điều khoản</span></label>
                                    </div>

                                    <input type="submit"  class="btn btn-success text-light" id="skipReg" value="Đăng ký">
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
                                    <a href="home" class="logo-wrapper">
                                        <img src="img/logo.png" alt="logo">
                                    </a>
                                </div>
                            </div>
                            <div class="col-md-5 col-sm-5 col-12">
                                <form method="post" action="search">
                                    <input name="search" type="search" placeholder="Tìm kiếm..." class="input-group-field search-text"/>
                                    <span class="input-group-btn">
                                        <button type="submit" class="btn icon-fallback-text">
                                            <i class="fa fa-search"></i>
                                        </button>
                                    </span>
                                </form>
                            </div>
                            <div class="col-md-4 col-sm-4 col-12">
                                <c:if test="${sessionScope.acc!=null}">
                                    <div class="items-cart-inner clearfix mini-cart" id="items-cart-inner">

                                        <a class="showcart" href="showcart"  title="Giỏ hàng">
                                            <i class="fa fa-cart-arrow-down"></i>
                                            <div class=""></div>
                                        </a>  


                                    </div>
                                </c:if>
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

            <!-- end Card modal  -->
            <div class="container-fluid secondary-header">
                <div class="inner-main-menu container">
                    <nav class="navbar navbar-expand-lg navbar-light bg-light nav-custom">
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarNav">
                            <ul class="navbar-nav" >
                                <li class="nav-item">
                                    <a class="nav-link" href="home">Trang chủ</a>
                                </li>

                                <li class="nav-item">
                                    <a class="nav-link" href="listproduct">Sản phẩm</a>
                                </li>

                                <li class="nav-item">
                                    <a class="nav-link" href="#">Liên hệ</a>
                                </li> 
                                <c:if test="${sessionScope.acc==null}">
                                    <li class="nav-item">
                                        <a data-toggle="modal" data-target="#cmspanel" class="nav-link" style="cursor: pointer;">Đăng Nhập</a>
                                    </li> 
                                </c:if>
                                <c:if test="${sessionScope.acc!=null}">
                                    <li class="nav-item">
                                        <a href="user?id=${sessionScope.acc.uId}"  class="nav-link" style="cursor: pointer;">Hello ${sessionScope.acc.uName}</a>
                                    </li> 
                                </c:if>

                                <li class="nav-item">
                                    
                                    <select class="nav-link" id="redirectDropdown" onchange="redirectPage()">
                                        <option value="" disabled selected>-- Chọn Loại sản phẩm --</option>
                                        <option value="category?cid=0" >Tất cả sản phẩm</option>
                                        <c:forEach var="s" items="${sessionScope.listcH}">
                                            <option value="category?cid=${s.id}">${s.name}</option>
                                            </c:forEach>

                                    </select>
                                </li> 

                            </ul>

                        </div>

                    </nav>

                </div>
            </div>
        </header>
        <script>
            function redirectPage() {
                // Lấy giá trị của option được chọn
                var selectedPage = document.getElementById("redirectDropdown").value;

                // Chuyển hướng đến trang được chọn
                if (selectedPage) {
                    window.location.href = selectedPage;
                }
            }
        </script>
    </body>
</html>
