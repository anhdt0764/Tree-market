<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : admin
    Created on : Feb 23, 2024, 10:05:47 PM
    Author     : ducnk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html >

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>AntGreen - Dashboard</title>

        <!-- Custom fonts for this template-->
        <link href="admin/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

        <!-- Custom styles for this template-->
        <link href="admin/css/sb-admin-2.min.css" rel="stylesheet">

        <!-- Icon from Font Awesome -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha256-eZrrJcwDc/3uDhsdt61sL2oOBY362qM3lon1gyExkL0=" crossorigin="anonymous" />


    </head>

    <body id="page-top">


        <!-- Page Wrapper -->
        <div id="wrapper">

            <!-- Sidebar -->
            <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion toggled" id="accordionSidebar">

                <!-- Sidebar - Brand -->
                <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.html">
                    <div class="sidebar-brand-text mx-3">AntGreen Admin</div>
                </a>

                <!-- Divider -->
                <hr class="sidebar-divider my-0">

                <!-- Nav Item - Dashboard -->


                <!-- Nav Item - Pages Collapse Menu -->
                <li class="nav-item">
                    <a class="nav-link collapsed" href="logout"  aria-expanded="true" aria-controls="collapseTwo">
                        <i class="fa fa-sign-out pr-1"></i>
                        <span>Logout</span>
                    </a>
                    
                </li>

                <!-- Nav Item - Utilities Collapse Menu -->
                



                <!-- Sidebar Toggler (Sidebar) -->
                <div class="text-center d-none d-md-inline">
                    <button class="rounded-circle border-0" id="sidebarToggle"></button>
                </div>

            </ul>
            <!-- End of Sidebar -->

            <!-- Content Wrapper -->
            <div id="content-wrapper" class="d-flex flex-column">

                <!-- Main Content -->
                <div id="content">

                    <!-- Topbar -->
                    <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                        <!-- Sidebar Toggle (Topbar) -->
                        <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                            <i class="fa fa-bars"></i>
                        </button>

                        <!-- Topbar Search -->
                        <form class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
                            <div class="input-group">
                                <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
                                <div class="input-group-append">
                                    <button class="btn btn-primary" type="button">
                                        <i class="fas fa-search fa-sm"></i>
                                    </button>
                                </div>
                            </div>
                        </form>

                        <!-- Topbar Navbar -->
                        <ul class="navbar-nav ml-auto">

                            <!-- Nav Item - Search Dropdown (Visible Only XS) -->
                            <li class="nav-item dropdown no-arrow d-sm-none">
                                <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <i class="fas fa-search fa-fw"></i>
                                </a>
                                <!-- Dropdown - Messages -->
                                <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in" aria-labelledby="searchDropdown">
                                    <form class="form-inline mr-auto w-100 navbar-search">
                                        <div class="input-group">
                                            <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
                                            <div class="input-group-append">
                                                <button class="btn btn-primary" type="button">
                                                    <i class="fas fa-search fa-sm"></i>
                                                </button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </li>

                            <!-- Nav Item - Alerts -->
                            <li class="nav-item dropdown no-arrow mx-1">
                                <a class="nav-link dropdown-toggle" href="#" id="alertsDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <i class="fas fa-bell fa-fw"></i>
                                    <!-- Counter - Alerts -->
                                    <span class="badge badge-danger badge-counter">3+</span>
                                </a>
                                <!-- Dropdown - Alerts -->
                                <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="alertsDropdown">
                                    <h6 class="dropdown-header">
                                        Alerts Center
                                    </h6>
                                    <a class="dropdown-item d-flex align-items-center" href="#">
                                        <div class="mr-3">
                                            <div class="icon-circle bg-primary">
                                                <i class="fas fa-file-alt text-white"></i>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="small text-gray-500">December 12, 2019</div>
                                            <span class="font-weight-bold">A new monthly report is ready to download!</span>
                                        </div>
                                    </a>
                                    <a class="dropdown-item d-flex align-items-center" href="#">
                                        <div class="mr-3">
                                            <div class="icon-circle bg-success">
                                                <i class="fas fa-donate text-white"></i>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="small text-gray-500">December 7, 2019</div>
                                            $290.29 has been deposited into your account!
                                        </div>
                                    </a>
                                    <a class="dropdown-item d-flex align-items-center" href="#">
                                        <div class="mr-3">
                                            <div class="icon-circle bg-warning">
                                                <i class="fas fa-exclamation-triangle text-white"></i>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="small text-gray-500">December 2, 2019</div>
                                            Spending Alert: We've noticed unusually high spending for your account.
                                        </div>
                                    </a>
                                    <a class="dropdown-item text-center small text-gray-500" href="#">Show All Alerts</a>
                                </div>
                            </li>

                            <!-- Nav Item - Messages -->
                            <li class="nav-item dropdown no-arrow mx-1">
                                <a class="nav-link dropdown-toggle" href="#" id="messagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <i class="fas fa-envelope fa-fw"></i>
                                    <!-- Counter - Messages -->
                                    <span class="badge badge-danger badge-counter">7</span>
                                </a>
                                <!-- Dropdown - Messages -->
                                <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="messagesDropdown">
                                    <h6 class="dropdown-header">
                                        Message Center
                                    </h6>
                                    <a class="dropdown-item d-flex align-items-center" href="#">
                                        <div class="dropdown-list-image mr-3">
                                            <img class="rounded-circle" src="https://source.unsplash.com/fn_BT9fwg_E/60x60" alt="">
                                            <div class="status-indicator bg-success"></div>
                                        </div>
                                        <div class="font-weight-bold">
                                            <div class="text-truncate">Hi there! I am wondering if you can help me with a problem I've been having.</div>
                                            <div class="small text-gray-500">Emily Fowler · 58m</div>
                                        </div>
                                    </a>
                                    <a class="dropdown-item d-flex align-items-center" href="#">
                                        <div class="dropdown-list-image mr-3">
                                            <img class="rounded-circle" src="https://source.unsplash.com/AU4VPcFN4LE/60x60" alt="">
                                            <div class="status-indicator"></div>
                                        </div>
                                        <div>
                                            <div class="text-truncate">I have the photos that you ordered last month, how would you like them sent to you?</div>
                                            <div class="small text-gray-500">Jae Chun · 1d</div>
                                        </div>
                                    </a>
                                    <a class="dropdown-item d-flex align-items-center" href="#">
                                        <div class="dropdown-list-image mr-3">
                                            <img class="rounded-circle" src="https://source.unsplash.com/CS2uCrpNzJY/60x60" alt="">
                                            <div class="status-indicator bg-warning"></div>
                                        </div>
                                        <div>
                                            <div class="text-truncate">Last month's report looks great, I am very happy with the progress so far, keep up the good work!</div>
                                            <div class="small text-gray-500">Morgan Alvarez · 2d</div>
                                        </div>
                                    </a>
                                    <a class="dropdown-item d-flex align-items-center" href="#">
                                        <div class="dropdown-list-image mr-3">
                                            <img class="rounded-circle" src="https://source.unsplash.com/Mv9hjnEUHR4/60x60" alt="">
                                            <div class="status-indicator bg-success"></div>
                                        </div>
                                        <div>
                                            <div class="text-truncate">Am I a good boy? The reason I ask is because someone told me that people say this to all dogs, even if they aren't good...</div>
                                            <div class="small text-gray-500">Chicken the Dog · 2w</div>
                                        </div>
                                    </a>
                                    <a class="dropdown-item text-center small text-gray-500" href="#">Read More Messages</a>
                                </div>
                            </li>

                            <div class="topbar-divider d-none d-sm-block"></div>

                            <!-- Nav Item - User Information -->
                            <li class="nav-item dropdown no-arrow">
                                <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <span class="mr-2 d-none d-lg-inline text-gray-600 small" id="adminName2">
                                    </span>
                                    <img class="img-profile rounded-circle" src="img/admin.png">
                                </a>
                                <!-- Dropdown - User Information -->
                                <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
                                    <a class="dropdown-item" href="user.html">
                                        <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                                        Profile
                                    </a>
                                    <a class="dropdown-item" href="#">
                                        <i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
                                        Settings
                                    </a>
                                    <a class="dropdown-item" href="#">
                                        <i class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
                                        Activity Log
                                    </a>
                                    <div class="dropdown-divider"></div>
                                    <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                                        <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                        Logout
                                    </a>
                                </div>
                            </li>

                        </ul>

                    </nav>
                    <!-- End of Topbar -->

                    <!-- Begin Page Content -->
                    <div class="container-fluid">

                        <!-- Page Heading -->
                        <div class="d-sm-flex align-items-center justify-content-between mb-4">
                            <h1 class="h3 mb-0 text-gray-800">Dashboard</h1>
                            <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i class="fas fa-download fa-sm text-white-50"></i> Generate Report</a>
                        </div>

                        <!-- Content Row -->
                        <div class="row">

                            <!-- Earnings (Monthly) Card Example -->
                            <div class="col-xl-4 col-md-6 mb-4">
                                <div class="card border-left-primary shadow h-100 py-2">
                                    <div class="card-body">
                                        <div class="row no-gutters align-items-center">
                                            <div class="col mr-2">
                                                <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">Welcome back,</div>
                                                <div class="h5 mb-0 font-weight-bold text-gray-800" >${sessionScope.acc.uName}</div>
                                            </div>
                                            <div class="col-auto">
                                                <i class="fas fa-user fa-2x text-gray-300"></i>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- Earnings (Monthly) Card Example -->
                            <div class="col-xl-4 col-md-6 mb-4">
                                <div class="card border-left-success shadow h-100 py-2">
                                    <div class="card-body">
                                        <div class="row no-gutters align-items-center">
                                            <div class="col mr-2">
                                                <div class="text-xs font-weight-bold text-success text-uppercase mb-1">Số thành viên</div>
                                                <div class="h5 mb-0 font-weight-bold text-gray-800">
                                                    <span >${listAcc.size()}</span>
                                                </div>
                                            </div>
                                            <div class="col-auto">
                                                <i class="fas fa-dollar-sign fa-2x text-gray-300"></i>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- Earnings (Monthly) Card Example -->
                            <div class="col-xl-4 col-md-6 mb-4">
                                <div class="card border-left-info shadow h-100 py-2">
                                    <div class="card-body">
                                        <div class="row no-gutters align-items-center">
                                            <div class="col mr-2">
                                                <div class="text-xs font-weight-bold text-info text-uppercase mb-1">Số sản phẩm</div>
                                                <div class="row no-gutters align-items-center">
                                                    <div class="col-auto">
                                                        <div class="h5 mb-0 mr-3 font-weight-bold text-gray-800">
                                                            <span >${listP.size()}</span>
                                                        </div>
                                                    </div>
                                                    <!-- <div class="col">
                                                      <div class="progress progress-sm mr-2">
                                                        <div class="progress-bar bg-info" role="progressbar" style="width: 50%" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
                                                      </div>
                                                    </div> -->
                                                </div>
                                            </div>
                                            <div class="col-auto">
                                                <i class="fas fa-clipboard-list fa-2x text-gray-300"></i>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- Pending Requests Card Example -->
                            
                        </div>

                        <!-- Content Row -->

                        <div class="row">

                            <!-- Area Chart -->
                            <div class="col-xl-12 col-lg-12">
                                <div class="card shadow mb-4 col-xl-12 col-lg-12 float-left">
                                    <!-- Card Header - Dropdown -->
                                    <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                        <h6 class="m-0 font-weight-bold text-primary">Quản Lý Sản Phẩm</h6>
                                        <div class="dropdown no-arrow">
                                            <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                <i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
                                            </a>
                                            <div class="dropdown-menu dropdown-menu-right shadow animated--fade-in" aria-labelledby="dropdownMenuLink">
                                                <div class="dropdown-header">Dropdown Header:</div>
                                                <a class="dropdown-item" href="#">Action</a>
                                                <a class="dropdown-item" href="#">Another action</a>
                                                <div class="dropdown-divider"></div>
                                                <a class="dropdown-item" href="#">Something else here</a>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Card Body -->
                                    <div class="card-body">
                                        <a data-toggle="modal" data-target="#exampleModal" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm mb-2" style="color: white"><i class="fa fa-plus fa-sm text-white-50" aria-hidden="true"></i> Thêm sản phẩm</a>
                                        <table class="table">
                                            <thead>


                                            <th>Hình Ảnh</th>
                                            <th>Tên Sản Phẩm</th>
                                            <th>Giá Sản Phẩm</th>

                                            <th>Danh Mục</th>

                                            <th>Thao Tác</th>

                                            </thead>


                                            <tbody id="listProductInAdmin">
                                                <c:forEach var="s" items="${listP}">
                                                    <tr>

                                                        <td><img style="width: 50px" src="${s.img}" alt="san pham">

                                                        <td>${s.name}</td>
                                                        <td>${s.price}₫</td>

                                                        <td>${s.c.name}</td>

                                                        <td style="width: 100px"><a href="delete?id=${s.id}"  class="btn btn-danger mr-2 btn-sm shadow-sm"><i class="fa fa-trash-o" aria-hidden="true"></i></a>
                                                            <a  href="update?id=${s.id}"    class="btn btn-primary btn-sm shadow-sm"><i class="fa fa-pencil" aria-hidden="true"></i></a></td>
                                                    </tr>

                                                </c:forEach> 




                                            </tbody>

                                        </table>
                                    </div>
                                </div>
                                <jsp:include page="update.jsp"></jsp:include>
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
                                                    <div id="error" style="font-size: 11px; color: red"></div>
                                                    <!-- body -->
                                                    <form method="post" action="add">
                                                        <div class="form-group">
                                                            <label for="exampleInputEmail1">Product Name<span style="color: red">*</span></label>
                                                            <input type="text" class="form-control" name="Name"  ">
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="exampleInputEmail1">Product Description<span style="color: red">*</span></label>
                                                            <input type="text" class="form-control" name="des"  ">
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-sm-6">
                                                                <div class="form-group">
                                                                    <label for="exampleInputEmail1">Price<span style="color: red">*</span></label>
                                                                    <input type="number" class="form-control" name="Price" ">
                                                                </div>
                                                            </div>

                                                        </div>
                                                        <div class="form-group">
                                                            <label for="exampleInputEmail1">Product Image<span style="color: red">*</span></label>
                                                            <input type="text" class="form-control" name="inputImg" ">
                                                        </div>
                                                        <div class="row">

                                                            <div class="col-sm-6">
                                                                <div class="form-group">
                                                                    <label for="exampleInputEmail1">Product Category<span style="color: red">*</span></label>
                                                                    <select class="form-control" name="inputCate">

                                                                    <c:forEach var="s" items="${listC}">
                                                                        <option value="${s.id}">${s.name}</option>
                                                                    </c:forEach>
                                                                </select>
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-6">
                                                            <div class="form-group">
                                                                <label for="exampleInputEmail1">Product Quantity<span style="color: red">*</span></label>
                                                                <input type="number" class="form-control"  name="quantity" ">
                                                            </div>
                                                        </div>

                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                                        <div id="submitButtons">
                                                            <input type="submit" class="btn btn-primary"  value="Thêm Sản phẩm">
                                                        </div>

                                                    </div>
                                                </form>
                                                <!-- end body -->
                                            </div>

                                        </div>
                                    </div>
                                </div>

                                <!-- end Modal thêm sản phẩm -->


                                <div class="col-xl-4 col-lg-4 float-left">
                                    <div class="card shadow mb-4">

                                        <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                            <h6 class="m-0 font-weight-bold text-primary">Revenue Sources</h6>
                                            <div class="dropdown no-arrow">
                                                <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                    <i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
                                                </a>
                                                <div class="dropdown-menu dropdown-menu-right shadow animated--fade-in" aria-labelledby="dropdownMenuLink">
                                                    <div class="dropdown-header">Dropdown Header:</div>
                                                    <a class="dropdown-item" href="#">Action</a>
                                                    <a class="dropdown-item" href="#">Another action</a>
                                                    <div class="dropdown-divider"></div>
                                                    <a class="dropdown-item" href="#">Something else here</a>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="card-body">
                                            <div class="chart-pie pt-4 pb-2">
                                                <canvas id="myPieChart"></canvas>
                                            </div>
                                            <div class="mt-4 text-center small">
                                                <span class="mr-2">
                                                    <i class="fas fa-circle text-primary"></i> Direct
                                                </span>
                                                <span class="mr-2">
                                                    <i class="fas fa-circle text-success"></i> Social
                                                </span>
                                                <span class="mr-2">
                                                    <i class="fas fa-circle text-info"></i> Referral
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                </div> 
                            </div>

                            <!-- Content Row -->
                            <div class="row">

                                <!-- Content Column -->
                                <div class="col-lg-6 mb-4">

                                    <!-- Project Card Example -->


                                    <!-- Project Card Example -->
                                    <div class="card shadow mb-4">
                                        <div class="card-header py-3">
                                            <h6 class="m-0 font-weight-bold text-primary">Quản Lý Loại Sản Phẩm</h6>
                                        </div>
                                        <div class="card-body">
                                            <a data-toggle="modal" data-target="#modalMenu" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm mb-2" style="color: white"><i class="fa fa-plus fa-sm text-white-50" aria-hidden="true"></i> Thêm mới Category</a>
                                            <table class="table">
                                                <thead>
                                                    <tr>

                                                        <th>Category Name</th>
                                                        <th>Ảnh</th>


                                                        <th>Hành Động</th>
                                                    </tr>
                                                </thead>
                                                <tbody id="cmsMenuInAdmin">
                                                    <c:forEach var="s" items="${listC}">
                                                        <tr>

                                                            <td>${s.name}</td>
                                                            <td><img style="width: 50px" src="${s.img}" alt="san pham">


                                                            <td><a  href="deletecate?id=${s.id}" class="btn btn-danger mr-2 btn-sm shadow-sm"><i class="fa fa-trash-o" aria-hidden="true"></i></a>
                                                                <a href="updatecate?cId=${s.id}"  class="btn btn-primary btn-sm shadow-sm"><i class="fa fa-pencil" aria-hidden="true"></i></a></td>
                                                        </tr>
                                                    </c:forEach>


                                                </tbody>
                                            </table>
                                        </div>
                                    </div>

                                    <!-- Modal thêm menu -->
                                    <div class="modal fade modal-panel" id="modalMenu" tabindex="-1" role="dialog" aria-labelledby="modalMenu" aria-hidden="true" style="z-index: 9999">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h5 class="modal-title" id="modalTitleMenu">Thêm mới Category</h5>
                                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                        <span aria-hidden="true">&times;</span>
                                                    </button>
                                                </div>
                                                <div class="modal-body">
                                                    <!-- body -->
                                                    <form method="post" action="addcate">
                                                        <div class="row">

                                                            <div class="col-sm-12">
                                                                <div class="form-group">
                                                                    <label for="menuName">Category Name</label>
                                                                    <input type="text" class="form-control" name="menuName" value="${c.name}">
                                                                </div>
                                                            </div>
                                                        </div>

                                                        <div class="form-group">
                                                            <label for="menuLink">Category Image</label>
                                                            <input type="text" class="form-control" name="menuLink" value="${c.img}">
                                                        </div>
                                                        <div class="modal-footer">
                                                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                                            <div id="submitButtonMenu">
                                                                <input type="submit" class="btn btn-primary" value="Add Category">
                                                            </div>

                                                        </div>



                                                    </form>
                                                    <!-- end body -->
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                    <!-- end Modal thêm menu -->
                                    <div class="card shadow mb-4">
                                        <div class="card-header py-3">
                                            <h6 class="m-0 font-weight-bold text-primary">Quản Lý Coupon</h6>
                                        </div>
                                        <div class="card-body">
                                            <a data-toggle="modal" data-target="#modalCoupon" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm mb-2" style="color: white"><i class="fa fa-plus fa-sm text-white-50" aria-hidden="true"></i> Thêm mới coupon</a>
                                            <table class="table">
                                                <thead>
                                                    <tr>
                                                        <th>Code</th>
                                                        <th>Detail</th>
                                                        <th>Value</th>

                                                        <th>Hành Động</th>
                                                    </tr>
                                                </thead>
                                                <tbody id="listCouponInAdmin">
                                                    <c:forEach var="s" items="${listCou}">
                                                        <tr>
                                                            <td>${s.name}</td>
                                                            <td>${s.detail}</td>
                                                            <td>${s.value} ₫</td>

                                                            <td style="width: 100px;"><a href="deletecou?id=${s.id}" class="btn btn-danger mr-2 btn-sm shadow-sm"><i class="fa fa-trash-o" aria-hidden="true"></i></a>
                                                                <a href="updatecou?id=${s.id}" class="btn btn-primary btn-sm shadow-sm"><i class="fa fa-pencil" aria-hidden="true"></i></a></td>
                                                        <tr/>
                                                    </c:forEach>

                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                    <!-- Modal thêm coupon -->
                                    <div class="modal fade modal-panel" id="modalCoupon" tabindex="-1" role="dialog" aria-labelledby="modalCoupon" aria-hidden="true" style="z-index: 9999">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h5 class="modal-title" id="modalTitleCoupon">Thêm mới coupon</h5>
                                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                        <span aria-hidden="true">&times;</span>
                                                    </button>
                                                </div>
                                                <div class="modal-body">
                                                    <!-- body -->
                                                    <form action="addcou" method="post">
                                                        <div class="form-group">
                                                            <label for="couponCode">Code</label>
                                                            <input type="text" class="form-control" name="couponCode">
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="couponDetail">Detail</label>
                                                            <textarea type="text" class="form-control" name="couponDetail"></textarea>
                                                        </div>


                                                        <div class="form-group">
                                                            <label for="couponValue">Value</label>
                                                            <input type="text" class="form-control" name="couponValue"></input>
                                                        </div>



                                                        <div class="modal-footer">
                                                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                                            <div id="submitButtonCoupon">
                                                                <input type="submit" class="btn btn-primary" value="Thêm mới coupon">
                                                            </div>

                                                        </div>

                                                    </form>
                                                    <!-- end body -->
                                                </div>

                                            </div>
                                        </div>
                                    </div>


                                </div>

                                <div class="col-lg-6 mb-4">

                                    <!-- Illustrations -->
                                    <div class="card shadow mb-4">
                                        <div class="card-header py-3">
                                            <h6 class="m-0 font-weight-bold text-primary">Quản Lý Tài Khoản</h6>
                                        </div>
                                        <div class="card-body">

                                            <small style="display: block;">Admin không có quyền xóa tài khoản hoặc chỉnh sửa thông tin tài khoản. Admin chỉ có thể Khóa, Kích hoạt tài khoản và Phân quyền tài khoản.</small>
                                            <table class="table table-responsive" id="manageAcc">
                                                <thead>
                                                <th>Họ tên</th>
                                                <th>Tài khoản</th>
                                                <th>Mật khẩu</th>
                                                <th>Phân quyền</th>

                                                <th>Hành động</th>
                                                </thead>
                                                <tbody >
                                                    <c:forEach var="s" items="${listAcc}">
                                                        <tr>
                                                            <td>${s.uName}</td>
                                                            <td>${s.name}</td>
                                                            <td id='showhide_pass'>${s.pass}</td>
                                                            <td>${(s.role==1)?"Admin":"User"}</td>

                                                            <td><a href="updateacc?uid=${s.uId}"  class='btn btn-primary btn-sm shadow-sm'><i class='fa fa-pencil' aria-hidden='true'></i></a></td>
                                                        </tr>  
                                                    </c:forEach>

                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                    <!-- Modal Thêm tài khoản -->
                                    <div class="modal fade modal-panel" id="addAcc" tabindex="-1" role="dialog" aria-labelledby="addAcc" aria-hidden="true" style="z-index: 9999">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h5 class="modal-title" id="modalTitleAcc">Thêm mới tài khoản</h5>
                                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                        <span aria-hidden="true">&times;</span>
                                                    </button>
                                                </div>
                                                <div class="modal-body">
                                                    <!-- body -->
                                                    <form name="myFormAcc">
                                                        <div class="form-group">
                                                            <label for="e_username">UserName</label>
                                                            <input type="text" class="form-control" id="e_username">
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="e_name">Name</label>
                                                            <input type="text" class="form-control" id="e_name">
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-sm-6">
                                                                <div class="form-group">
                                                                    <label for="e_password">Password</label>
                                                                    <input type="password" class="form-control" id="e_password">
                                                                </div>
                                                            </div>
                                                            <div class="col-sm-6">
                                                                <div class="form-group">
                                                                    <label for="e_repassword">RePassword</label>
                                                                    <input type="password" class="form-control" id="e_repassword">
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-sm-6">
                                                                <div class="form-group">
                                                                    <label for="e_role">Role</label>
                                                                    <select class="form-control" id="e_role">
                                                                        <option value="admin">Admin</option>
                                                                        <option value="user">User</option>
                                                                    </select>
                                                                </div>
                                                            </div>
                                                            <div class="col-sm-6">
                                                                <div class="form-group">
                                                                    <label for="e_status">Status</label>
                                                                    <select class="form-control" id="e_status">
                                                                        <option value="kích hoạt">Kích hoạt</option>
                                                                        <option value="khóa">Khóa</option>
                                                                    </select>
                                                                </div>
                                                            </div>
                                                        </div>

                                                    </form>
                                                    <!-- end body -->
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                                    <div id="submitButton2">
                                                        <button type="button" class="btn btn-primary" onclick="addNewLocalAccount()">Thêm tài khoản</button>
                                                    </div>

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- end Modal thêm tài khoản -->
                                    <!-- Approach -->
                                    <div class="card shadow mb-4">
                                        <div class="card-header py-3">
                                            <h6 class="m-0 font-weight-bold text-primary">Quản Lý Slide</h6>
                                        </div>

                                        <div class="card-body">
                                            <a data-toggle="modal" data-target="#modalSlide" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm mb-2" style="color: white"><i class="fa fa-plus fa-sm text-white-50" aria-hidden="true"></i> Thêm mới slide</a>
                                            <small class="d-block text-danger"><b>Lưu ý:</b> Bắt buộc phải có 3 và chỉ 3 slide được Hiển thị.</small>
                                            <table class="table">
                                                <thead>
                                                    <tr>
                                                        <th>Hình Ảnh</th>
                                                        <th>Tiêu đề</th>
                                                        <th>Mô tả</th>
                                                        <th>Trạng Thái</th>
                                                        <th>Hành động</th>
                                                    </tr>
                                                </thead>
                                                <tbody id="cmsSlideInAdmin"></tbody>
                                            </table>
                                        </div>
                                    </div>

                                </div>
                            </div>

                        </div>
                        <!-- /.container-fluid -->
                        <!-- Modal Thêm slide -->
                        <div class="modal fade modal-panel" id="modalSlide" tabindex="-1" role="dialog" aria-labelledby="modalSlide" aria-hidden="true" style="z-index: 9999">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="modalTitleSlide">Thêm mới slide</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                        <!-- body -->
                                        <form name="myFormAcc">
                                            <div class="form-group">
                                                <label for="sTitle">Tiêu đề</label>
                                                <input type="text" class="form-control" id="sTitle">
                                            </div>
                                            <div class="form-group">
                                                <label for="sImage">Hình Ảnh</label>
                                                <input type="text" class="form-control" id="sImage" value="img/slider_1.jpg">
                                            </div>
                                            <div class="form-group">
                                                <label for="sDescription">Mô tả</label>
                                                <textarea type="text" class="form-control" id="sDescription"></textarea>
                                            </div>
                                            <div class="form-group">
                                                <label for="sLink">Link to</label>
                                                <input type="text" class="form-control" id="sLink" value="#">
                                            </div>
                                            <div class="row">
                                                <div class="col-sm-6">
                                                    <div class="form-group">
                                                        <label for="sStatus">Status</label>
                                                        <select class="form-control" id="sStatus">
                                                            <option value="">Mặc định</option>
                                                            <option value="active">Active</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-sm-6">
                                                    <div class="form-group">
                                                        <label for="sActive">Trạng Thái</label>
                                                        <select class="form-control" id="sActive">
                                                            <option value="1">Hiển thị</option>
                                                            <option value="0">Ẩn</option>
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>
                                        </form>
                                        <!-- end body -->
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                        <div id="submitButtonSlide">
                                            <button type="button" class="btn btn-primary" onclick="addNewLocalSlide()">Thêm mới slide</button>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- end Modal thêm slide -->




                        <!-- end Modal bài viết -->


                    </div>
                </div>
                <!-- End of Main Content -->

                <!-- Footer -->
                <footer class="sticky-footer bg-white">
                    <div class="container my-auto">
                        <div class="copyright text-center my-auto">
                            <span>Copyright &copy; Your Website 2019</span>
                        </div>
                    </div>
                </footer>
                <!-- End of Footer -->

            </div>
            <!-- End of Content Wrapper -->

        </div>
        <!-- End of Page Wrapper -->

        <!-- Scroll to Top Button-->
        <a class="scroll-to-top rounded" href="#page-top">
            <i class="fas fa-angle-up"></i>
        </a>

        <!-- Logout Modal-->
        <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                        <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">×</span>
                        </button>
                    </div>
                    <div class="modal-body">Đăng xuất khỏi phần admin.</div>
                    <div class="modal-footer">
                        <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                        <a class="btn btn-primary" href="home" ">Logout</a>
                    </div>
                </div>
            </div>
        </div>


        <!-- Bootstrap core JavaScript-->
        <script src="admin/vendor/jquery/jquery.min.js"></script>
        <script src="admin/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

        <!-- Core plugin JavaScript-->
        <script src="admin/vendor/jquery-easing/jquery.easing.min.js"></script>

        <!-- Custom scripts for all pages-->
        <script src="admin/js/sb-admin-2.min.js"></script>

        <!-- Page level plugins -->
        <script src="admin/vendor/chart.js/Chart.min.js"></script>

        <!-- Page level custom scripts -->
        <script src="admin/js/demo/chart-area-demo.js"></script>
        <script src="admin/js/demo/chart-pie-demo.js"></script>

        <c:if test="${mess!=null}">
            <script>
                                                $(document).ready(function () {
                                                    alert("${mess}");
                                                });
            </script>
        </c:if>
        <script type="text/javascript" src="js/slider.js"></script>
        <script type="text/javascript" src="js/menu.js"></script>
        <script type="text/javascript" src="js/coupon.js"></script>
        <script type="text/javascript" src="js/news.js"></script>
        <script type="text/javascript" src="js/account.js"></script>
        <script type="text/javascript" src="js/product.js"></script>
        <script type="text/javascript" src="js/admin.js"></script>


    </body>

</html>

