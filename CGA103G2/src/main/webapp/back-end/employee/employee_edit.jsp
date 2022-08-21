<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*,com.emp.model.EmpVO"%>

<!DOCTYPE html>
<html lang="zh-tw">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>異鄉人-義式餐酒館-管理中心</title>
<!-- Iconic Fonts -->
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

<link rel="stylesheet" href="${pageContext.request.contextPath}/back-assets/vendors/iconic-fonts/flat-icons/flaticon.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/back-assets/vendors/iconic-fonts/cryptocoins/cryptocoins.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/back-assets/vendors/iconic-fonts/cryptocoins/cryptocoins-colors.css">
<!-- Bootstrap core CSS -->
<link href="${pageContext.request.contextPath}/back-assets/css/bootstrap.min.css" rel="stylesheet">
<!-- jQuery UI -->
<link href="${pageContext.request.contextPath}/back-assets/css/jquery-ui.min.css" rel="stylesheet">
<!-- Page Specific CSS (Slick Slider.css) -->
<link href="${pageContext.request.contextPath}/back-assets/css/slick.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/back-assets/css/datatables.min.css" rel="stylesheet">
<!-- Costic styles -->
<link href="${pageContext.request.contextPath}/back-assets/css/style.css" rel="stylesheet">
<!-- Favicon -->
<link rel="icon" type="image/png" sizes="32x32" href="${pageContext.request.contextPath}/favicon.ico">
</head>

<body class="ms-body ms-aside-left-open ms-primary-theme ms-has-quickbar">
	<!-- Preloader -->
	<div id="preloader-wrap">
		<div class="spinner spinner-8">
			<div class="ms-circle1 ms-child"></div>
			<div class="ms-circle2 ms-child"></div>
			<div class="ms-circle3 ms-child"></div>
			<div class="ms-circle4 ms-child"></div>
			<div class="ms-circle5 ms-child"></div>
			<div class="ms-circle6 ms-child"></div>
			<div class="ms-circle7 ms-child"></div>
			<div class="ms-circle8 ms-child"></div>
			<div class="ms-circle9 ms-child"></div>
			<div class="ms-circle10 ms-child"></div>
			<div class="ms-circle11 ms-child"></div>
			<div class="ms-circle12 ms-child"></div>
		</div>
	</div>
	<!-- Overlays -->
	<div class="ms-aside-overlay ms-overlay-left ms-toggler" data-target="#ms-side-nav" data-toggle="slideLeft"></div>
	<div class="ms-aside-overlay ms-overlay-right ms-toggler" data-target="#ms-recent-activity" data-toggle="slideRight"></div>

	<!-- ----- ----- ----- 最左邊的 選擇列 start ----- ----- ----- -->
	<aside id="ms-side-nav" class="side-nav fixed ms-aside-scrollable ms-aside-left">
		<!-- Logo -->
		<div class="logo-sn ms-d-block-lg">
			<a class="pl-0 ml-0 text-center" href="${pageContext.request.contextPath}/back-end/backstage/Back_index.jsp"><img src="${pageContext.request.contextPath}/back-assets/img/logo/logo01.png" alt="logo"></a>
		</div>
		<!-- Navigation -->
		<ul class="accordion ms-main-aside fs-14" id="side-nav-accordion">
			<!-- ----- ----- ----- 導向首頁 start ----- ----- ----- -->
			<li class="menu-item"><a href="${pageContext.request.contextPath}/back-end/backstage/Back_index.jsp"><span><i class="material-icons fs-16"></i>後臺管理系統 - 首頁</span></a></li>
			<!-- ----- ----- ----- 導向首頁 end ----- ----- ----- -->

			<!-- ----- ----- ----- 員工 start ----- ----- ----- -->
			<li class="menu-item"><a href="#" class="has-chevron" data-toggle="collapse" data-target="#employee" aria-expanded="false" aria-controls="employee"><span><i class="fas fa-file-employee fs-16"></i>員工管理</span></a>
				<ul id="employee" class="collapse" aria-labelledby="employee" data-parent="#side-nav-accordion">
					<li><a href="${pageContext.request.contextPath}/EmpShowServlet">查看員工資料</a></li>
					<li><a href="${pageContext.request.contextPath}/back-end/employee/employee_add.jsp">新增員工資料</a></li>
				</ul></li>
			<!-- ----- ----- ----- 員工 end ----- ----- ----- -->

			<!-- ----- ----- ----- 會員 start ----- ----- ----- -->
			<li class="menu-item"><a href="#" class="has-chevron" data-toggle="collapse" data-target="#member" aria-expanded="false" aria-controls="member"><span><i class="fas fa-file-member fs-16"></i>會員管理</span></a>
				<ul id="member" class="collapse" aria-labelledby="member" data-parent="#side-nav-accordion">
					<li><a href="${pageContext.request.contextPath}/back-end/member/member_detail.jsp">查看會員資料</a></li>
					<li><a href="${pageContext.request.contextPath}/back-end/member/member_add.jsp">新增員工資料</a></li>
					<li><a href="${pageContext.request.contextPath}/back-end/member/member_edit.jsp">修改員工資料</a></li>
				</ul></li>
			<!-- ----- ----- ----- 會員 end ----- ----- ----- -->

			<!-- ----- ----- ----- 菜單 start ----- ----- ----- -->
			<li class="menu-item"><a href="#" class="has-chevron" data-toggle="collapse" data-target="#product" aria-expanded="false" aria-controls="product"><span><i class="fa fa-archive fs-16"></i>總菜單</span></a>
				<ul id="product" class="collapse" aria-labelledby="product" data-parent="#side-nav-accordion">
					<li><a href="${pageContext.request.contextPath}/back-end/product/product_cata.jsp">菜單目錄</a></li>
					<li><a href="${pageContext.request.contextPath}/back-end/product/product_list.jsp">菜單列表</a></li>
					<li><a href="${pageContext.request.contextPath}/back-end/product/product_grid.jsp">菜單網格</a></li>
					<li><a href="${pageContext.request.contextPath}/back-end/product/product_add.jsp">加入菜樣</a></li>
					<li><a href="${pageContext.request.contextPath}/back-end/product/product_detail.jsp">產品細節</a></li>
				</ul></li>
			<!-- ----- ----- ----- 菜單 end ----- ----- ----- -->

			<!-- ----- ----- ----- 訂單 start ----- ----- ----- -->
			<li class="menu-item"><a href="#" class="has-chevron" data-toggle="collapse" data-target="#orders" aria-expanded="false" aria-controls="orders"><span><i class="fas fa-file-orders fs-16"></i>訂單管理</span></a>
				<ul id="orders" class="collapse" aria-labelledby="orders" data-parent="#side-nav-accordion">
					<li><a href="${pageContext.request.contextPath}/back-end/order/order_details.jsp">查看訂單</a></li>
				</ul></li>
			<!-- ----- ----- ----- 訂單 end ----- ----- ----- -->

			<!-- ----- ----- ----- 訂位 start ----- ----- ----- -->
			<li class="menu-item"><a href="#" class="has-chevron" data-toggle="collapse" data-target="#reservation" aria-expanded="false" aria-controls="reservation"><span><i class="fas fa-file-reservation fs-16"></i>訂位管理</span></a>
				<ul id="reservation" class="collapse" aria-labelledby="reservation" data-parent="#side-nav-accordion">
					<li><a href="${pageContext.request.contextPath}/back-end/reservation/reservation_detail.jsp">查看訂位</a></li>
					<li><a href="${pageContext.request.contextPath}/back-end/reservation/reservation_edit.jsp">修改訂位</a></li>
				</ul></li>
			<!-- ----- ----- ----- 訂位 end ----- ----- ----- -->

			<!-- ----- ----- ----- 候位 start ----- ----- ----- -->
			<li class="menu-item"><a href="#" class="has-chevron" data-toggle="collapse" data-target="#waiting" aria-expanded="false" aria-controls="waiting"><span><i class="fas fa-file-waiting fs-16"></i>候位管理</span></a>
				<ul id="waiting" class="collapse" aria-labelledby="waiting" data-parent="#side-nav-accordion">
					<li><a href="${pageContext.request.contextPath}/back-end/waiting/waiting_detail.jsp">查看候位</a></li>
				</ul></li>
			<!-- ----- ----- ----- 候位 end ----- ----- ----- -->

			<!-- ----- ----- ----- 桌位 start ----- ----- ----- -->
			<li class="menu-item"><a href="#" class="has-chevron" data-toggle="collapse" data-target="#restaurant_table" aria-expanded="false" aria-controls="restaurant_table"><span><i class="fas fa-file-member fs-16"></i>桌位管理</span></a>
				<ul id="restaurant_table" class="collapse" aria-labelledby="restaurant_table" data-parent="#side-nav-accordion">
					<li><a href="${pageContext.request.contextPath}/back-end/restaurant_table/restaurant_table_detail.jsp">查看桌位</a></li>
					<li><a href="${pageContext.request.contextPath}/back-end/restaurant_table/restaurant_table_add.jsp">新增桌位</a></li>
					<li><a href="${pageContext.request.contextPath}/back-end/restaurant_table/restaurant_table_edit.jsp">修改桌位</a></li>
				</ul></li>
			<!-- ----- ----- ----- 桌位 end ----- ----- ----- -->

			<!-- ----- ----- ----- 明細 start ----- ----- ----- -->
			<li class="menu-item"><a href="#" class="has-chevron" data-toggle="collapse" data-target="#invoice" aria-expanded="false" aria-controls="invoice"><span><i class="fas fa-file-invoice fs-16"></i>顧客消費明細</span></a>
				<ul id="invoice" class="collapse" aria-labelledby="invoice" data-parent="#side-nav-accordion">
					<li><a href="${pageContext.request.contextPath}/back-end/invoice/invoice_detail.jsp">消費明細</a></li>
					<li><a href="${pageContext.request.contextPath}/back-end/invoice/invoice_list.jsp">明細列表</a></li>
				</ul></li>
			<!-- ----- ----- ----- 明細 end ----- ----- ----- -->

			<!-- ----- ----- ----- 顧客 start ----- ----- ----- -->
			<li class="menu-item"><a href="#" class="has-chevron" data-toggle="collapse" data-target="#customer" aria-expanded="false" aria-controls="customer"><span><i class="fas fa-user-friends fs-16"></i>顧客回應</span></a>
				<ul id="customer" class="collapse" aria-labelledby="customer" data-parent="#side-nav-accordion">
					<li><a href="${pageContext.request.contextPath}/back-end/customer/customer_review.jsp">顧客回應</a></li>
					<li><a href="${pageContext.request.contextPath}/back-end/customer/customer_list.jsp">顧客列表</a></li>
				</ul></li>
			<!-- ----- ----- ----- 顧客 end ----- ----- ----- -->

			<!-- ----- ----- ----- 空白頁面 start ----- ----- ----- -->
			<li class="menu-item"><a href="#" class="has-chevron" data-toggle="collapse" data-target="#nothing1" aria-expanded="false" aria-controls="nothing1"><span><i class="fas fa-file-invoice fs-16"></i>空白頁面</span></a>
				<ul id="nothing1" class="collapse" aria-labelledby="nothing1" data-parent="#side-nav-accordion">
					<li><a href="${pageContext.request.contextPath}/back-end/nothing/nothing1.jsp">nothing1</a></li>
				</ul></li>
			<!-- ----- ----- ----- 空白頁面 end ----- ----- ----- -->
		</ul>
	</aside>
	<!-- ----- ----- ----- 最左邊的 選擇列 end ----- ----- ----- -->

	<!-- ----- ----- ----- 中間 start ----- ----- ----- -->
	<main class="body-content"padding-right: 0 px;>
		<!-- ----- ----- -----   中間上面Bar start ----- ----- ----- -->
		<nav class="navbar ms-navbar">
			<div class="ms-aside-toggler ms-toggler pl-0" data-target="#ms-side-nav" data-toggle="slideLeft">
				<span class="ms-toggler-bar bg-primary"></span><span class="ms-toggler-bar bg-primary"></span><span class="ms-toggler-bar bg-primary"></span>
			</div>
			<div class="logo-sn logo-sm ms-d-block-sm">
				<a class="pl-0 ml-0 text-center navbar-brand mr-0" href="${pageContext.request.contextPath}/back-end/backstage/Back_index.jsp"><img src="${pageContext.request.contextPath}/back-assets/img/logo/logo01.png" alt="logo"></a>
			</div>
			<ul class="ms-nav-list ms-inline mb-0" id="ms-nav-options">
				<li class="ms-nav-item ms-search-form pb-0 py-0">
					<form class="ms-form" method="post">
						<div class="ms-form-group my-0 mb-0 has-icon fs-14">
							<input type="search" class="ms-form-input" name="search" placeholder="Search here..." value=""><i class="flaticon-search text-disabled"></i>
						</div>
					</form>
				</li>
				<li class="ms-nav-item dropdown"><a href="#" class="text-disabled ms-has-notification" id="mailDropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="flaticon-mail"></i></a>
					<ul class="dropdown-menu dropdown-menu-right" aria-labelledby="mailDropdown">
						<li class="dropdown-menu-header">
							<h6 class="dropdown-header ms-inline m-0">
								<span class="text-disabled">信箱</span>
							</h6> <span class="badge badge-pill badge-success">0 New</span>
						</li>
						<li class="dropdown-divider"></li>

						<li class="dropdown-divider"></li>
						<li class="dropdown-menu-footer text-center"><a href="">Go to Inbox</a></li>
					</ul></li>
				<li class="ms-nav-item dropdown"><a href="#" class="text-disabled ms-has-notification" id="notificationDropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="flaticon-bell"></i></a>
					<ul class="dropdown-menu dropdown-menu-right" aria-labelledby="notificationDropdown">
						<li class="dropdown-menu-header">
							<h6 class="dropdown-header ms-inline m-0">
								<span class="text-disabled">通知</span>
							</h6> <span class="badge badge-pill badge-info">0 New</span>
						</li>
						<li class="dropdown-divider"></li>
						<li class="dropdown-menu-footer text-center"><a href="#">查看所有通知</a></li>
					</ul></li>
				<li class="ms-nav-item ms-nav-user dropdown"><a href="#" id="userDropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><img class="ms-user-img ms-img-round float-right" src="${pageContext.request.contextPath}/back-assets/img/costic/customer-6.jpg" alt="people"></a>
					<ul class="dropdown-menu dropdown-menu-right user-dropdown" aria-labelledby="userDropdown">
						<li class="dropdown-menu-header">
							<h6 class="dropdown-header ms-inline m-0">
								<span class="text-disabled">Welcome, 員工姓名</span>
							</h6>
						</li>
						<li class="dropdown-divider"></li>
						<li class="ms-dropdown-list"><a class="media fs-14 p-2" href=""><span><i class="flaticon-user mr-2"></i>個人基本資料</span></a><a class="media fs-14 p-2" href=""><span><i class="flaticon-mail mr-2"></i>信箱</span><span class="badge badge-pill badge-info">3</span></a><a class="media fs-14 p-2" href=""><span><i class="flaticon-gear mr-2"></i>帳號設定</span></a></li>
						<li class="dropdown-divider"></li>
						<li class="dropdown-menu-footer"><a class="media fs-14 p-2" href="${pageContext.request.contextPath}/back-end/prebuilt-pages/default-login.html"><span><i class="flaticon-shut-down mr-2"></i>Logout</span></a></li>
					</ul></li>
			</ul>
			<div class="ms-toggler ms-d-block-sm pr-0 ms-nav-toggler" data-toggle="slideDown" data-target="#ms-nav-options">
				<span class="ms-toggler-bar bg-primary"></span><span class="ms-toggler-bar bg-primary"></span><span class="ms-toggler-bar bg-primary"></span>
			</div>
		</nav>
		<!-- ----- ----- -----   中間上面Bar end ----- ----- ----- -->
		<!-- ----- ----- -----   中間目錄條 start ----- ----- ----- -->
		<nav aria-label="breadcrumb">
			<ol class="breadcrumb pl-0">
				<li class="breadcrumb-item"><a href="#"><i class="material-icons">home</i>首頁</a></li>
				<li class="breadcrumb-item"><a href="#">員工管理</a></li>
				<li class="breadcrumb-item active" aria-current="page">編輯員工資料</li>
			</ol>
		</nav>
		<!-- ----- ----- -----   中間目錄條 end ----- ----- ----- -->
		<!-- ----- ----- -----   中間下面內容 start ----- ----- ----- -->
		<h2>修改員工訊息</h2>
		<%
		EmpVO emp = (EmpVO) request.getAttribute("emp");
		%>
		<form action="${pageContext.request.contextPath}/EmpModifyServlet" name="form" method="post">
			<table>

				<tr>
					<td>員工編號</td>
					<td><input type="text" name="emp_id" value="<%=emp.getEmp_id()%>" readonly="readonly" /></td>
				</tr>
				<tr>
					<td>員工姓名</td>
					<td><input type="text" name="emp_name" value="<%=emp.getEmp_name()%>" required /></td>
				</tr>
				<tr>
					<td>帳號</td>
					<td><input type="text" name="emp_account" value="<%=emp.getEmp_account()%>" required /></td>
				</tr>
				<tr>
					<td>密碼</td>
					<td><input type="text" name="emp_password" value="<%=emp.getEmp_password()%>" required /></td>
				</tr>
				<tr>
					<td>權限</td>
					<td><input type="text" name="emp_permission" value="<%=emp.getEmp_permission()%>" required /></td>
				</tr>
				<tr>
					<td>員工電話</td>
					<td><input type="text" name="emp_phone" value="<%=emp.getEmp_phone()%>" required /></td>
				</tr>
				<tr>
					<td>員工地址</td>
					<td><input type="text" name="emp_address" value="<%=emp.getEmp_address()%>" required /></td>
				</tr>
				<tr>
					<td>員工職位</td>
					<td><input type="text" name="emp_job" value="<%=emp.getEmp_job()%>" required /></td>
				</tr>
				<tr>
					<td>員工到職日</td>
					<td><input type="text" name="emp_hiredate" value="<%=emp.getEmp_hiredate()%>" required /></td>
				</tr>
				<tr>
					<td colspan="2"><button type="submit">保存</button></td>
				</tr>
			</table>
		</form>
		<!-- ----- ----- -----   中間下面內容 end ----- ----- ----- -->
	</main>
	<!-- ----- ----- ----- 中間 end ----- ----- ----- -->

	<!-- SCRIPTS -->
	<!-- Global Required Scripts Start -->
	<script src="${pageContext.request.contextPath}/back-assets/js/jquery-3.3.1.min.js"></script>
	<script src="${pageContext.request.contextPath}/back-assets/js/popper.min.js"></script>
	<script src="${pageContext.request.contextPath}/back-assets/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/back-assets/js/perfect-scrollbar.js"></script>
	<script src="${pageContext.request.contextPath}/back-assets/js/jquery-ui.min.js"></script>
	<!-- Global Required Scripts End -->
	<!-- Page Specific Scripts Start -->
	<script src="${pageContext.request.contextPath}/back-assets/js/d3.v3.min.js"></script>
	<script src="${pageContext.request.contextPath}/back-assets/js/topojson.v1.min.js"></script>
	<script src="${pageContext.request.contextPath}/back-assets/js/datatables.min.js"></script>
	<script src="${pageContext.request.contextPath}/back-assets/js/data-tables.js"></script>
	<!-- Page Specific Scripts Finish -->
	<!-- Costic core JavaScript -->
	<script src="${pageContext.request.contextPath}/back-assets/js/framework.js"></script>
	<!-- Settings -->
	<script src="${pageContext.request.contextPath}/back-assets/js/settings.js"></script>
</body>

</html>