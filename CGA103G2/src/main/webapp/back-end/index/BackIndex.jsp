<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%@ page import="com.orders.model.*"%>
<%@ page import="com.orddetails.model.*"%>
<%
	OrdersVO ordersVO = (OrdersVO) request.getAttribute("ordersVO");
	OrddetailsVO orddetailsVO = (OrddetailsVO) request.getAttribute("orddetailsVO");
%>

<!DOCTYPE html>
<html lang="zh-tw">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>義鄉人-義式餐酒館-管理中心</title>
<!-- ----- ----- ----- CSS&Front設定 start ----- ----- ----- -->
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
<link rel="icon" type="image/png" sizes="32x32" href="favicon.ico">
<!-- GoTop -->
<link href="${pageContext.request.contextPath}/back-assets/css//gotop/GoTop.css" rel="stylesheet">
<!-- ----- ----- ----- CSS&Front設定 end ----- ----- ----- -->
</head>

<body class="ms-body ms-aside-left-open ms-primary-theme ms-has-quickbar">
	<!-- ----- ----- ----- 進入網站的讀取圈圈 start ----- ----- ----- -->
	<%@ include file="../../back-end/tool/ReadingCircle.file"%>
	<!-- ----- ----- ----- 進入網站的讀取圈圈 end ----- ----- ----- -->

	<div class="ms-aside-overlay ms-overlay-left ms-toggler" data-target="#ms-side-nav" data-toggle="slideLeft"></div>
	<div class="ms-aside-overlay ms-overlay-right ms-toggler" data-target="#ms-recent-activity" data-toggle="slideRight"></div>

	<!-- ----- ----- ----- 最左邊的 選擇列 start ----- ----- ----- -->
	<%@ include file="../../back-end/tool/LeftSideBar.file"%>
	<!-- ----- ----- ----- 最左邊的 選擇列 end ----- ----- ----- -->

	<!-- ----- ----- ----- 中間 start ----- ----- ----- -->
	<main class="body-content">
		<!-- ----- ----- -----   中間上面Bar start ----- ----- ----- -->
		<%@ include file="../../back-end/tool/UpSideBar.file"%>
		<!-- ----- ----- -----   中間上面Bar end ----- ----- ----- -->

		<!-- ----- ----- -----   中間目錄條 start ----- ----- ----- -->
		<nav aria-label="breadcrumb">
			<ol class="breadcrumb pl-0">
				<li class="breadcrumb-item"><a href="../../back-end/index/BackIndex.jsp"><i class="material-icons">home</i>首頁</a></li>
			</ol>
		</nav>
		<!-- ----- ----- -----   中間目錄條 end ----- ----- ----- -->

		<!-- ----- ----- -----   中間下面內容 start ----- ----- ----- -->
		<div style="text-align: center;">
			<span style="font-size: 50px; font-family: 微軟正黑體; margin: 0px;">義鄉人</span> <br> <span style="font-size: 25px; font-family: 微軟正黑體; margin: 0px;">餐廳管理系統</span>
		</div>
		<!-- 目前外送 外帶 內用 訂單數量 -->
		<div class="col-md-12">
			<div class="ms-panel">
				<div class="ms-panel-header">
					<h6>目前訂單數量</h6>
				</div>
				<div class="ms-panel-body">
					<div class="row">
						<div class="col-xl-3 col-lg-6 col-md-6 col-sm-6">
							<div class="ms-card no-margin">
								<div class="ms-card-body">
									<div>外帶訂單數量</div>
									<div class="ms-card-heading-title">
										<br>
									</div>
									<div class="ms-card-heading-title">
										<p>
											數量 : <span class="red-text">1</span>
										</p>
									</div>
								</div>
							</div>
						</div>
						<div class="col-xl-3 col-lg-6 col-md-6 col-sm-6">
							<div class="ms-card no-margin">
								<div class="ms-card-body">
									<div>外送訂單數量</div>
									<div class="ms-card-heading-title">
										<br>
									</div>
									<div class="ms-card-heading-title">
										<p>
											數量 : <span class="red-text">1</span>
										</p>
									</div>
								</div>
							</div>
						</div>
						<div class="col-xl-3 col-lg-6 col-md-6 col-sm-6">
							<div class="ms-card no-margin">
								<div class="ms-card-body">
									<div>內用訂單數量</div>
									<div class="ms-card-heading-title">
										<br>
									</div>
									<div class="ms-card-heading-title">
										<p>
											數量 : <span class="red-text">3</span>
										</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- 目前候位 訂位 數量 -->
		<div class="col-md-12">
			<div class="ms-panel">
				<div class="ms-panel-header">
					<h6>目前候位 訂位人數</h6>
				</div>
				<div class="ms-panel-body">
					<div class="row">
						<div class="col-xl-3 col-lg-6 col-md-6 col-sm-6">
							<div class="ms-card no-margin">
								<div class="ms-card-body">
									<div>目前候位人數</div>
									<div class="ms-card-heading-title">
										<br>
									</div>
									<div class="ms-card-heading-title">
										<p>
											數量 : <span class="red-text">5</span>人
										</p>
									</div>
								</div>
							</div>
						</div>
						<div class="col-xl-3 col-lg-6 col-md-6 col-sm-6">
							<div class="ms-card no-margin">
								<div class="ms-card-body">
									<div>目前訂位人數</div>
									<div class="ms-card-heading-title">
										<br>
									</div>
									<div class="ms-card-heading-title">
										<p>
											數量 : <span class="red-text">1</span>人
										</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Recent Orders< -->
<!-- 		<pre> -->
<%-- 		<%@ include file="../../back-end/tool/picture02.file"%> --%>
<!-- 		</pre> -->
		<!-- ----- ----- -----   中間下面內容 end ----- ----- ----- -->
		<!-- ----- ----- -----   按鈕-回到網頁最上面 start ----- ----- ----- -->
		<button type="button" id="GoTop" class="GoTop-arrow"></button>
		<!-- ----- ----- -----   按鈕-回到網頁最上面 end ----- ----- ----- -->
	</main>
	<!-- ----- ----- ----- 中間 end ----- ----- ----- -->

	<!-- ----- ----- ----- Script Start ----- ----- ----- -->
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
	<!-- GoTop -->
	<script src="${pageContext.request.contextPath}/back-assets/js/gotop/GoTop.js"></script>
	<!-- ----- ----- ----- Script End ----- ----- ----- -->
</body>

</html>