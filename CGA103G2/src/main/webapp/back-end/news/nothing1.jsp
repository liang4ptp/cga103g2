<%-- <%@ page language="java" contentType="text/html; charset=UTF-8" --%>
<%-- 	pageEncoding="UTF-8"%> --%>
<%-- <%@page import="com.news.model.NewsVO"%> --%>
<%-- <%@page import="java.sql.Timestamp"%> --%>
<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> --%>

<%-- <% --%>
<!-- // NewsVO newsVO = (NewsVO) request.getAttribute("newsVO"); //OrdersServlet.java (Concroller)  -->
<%-- %> --%>

<!-- <!DOCTYPE html> -->
<!-- <html lang="zh-tw"> -->

<!-- <head> -->
<!-- <meta http-equiv="Content-Type" content="text/html; charset=utf-8"> -->
<!-- <meta http-equiv="X-UA-Compatible" content="IE=edge"> -->
<!-- <meta name="viewport" content="width=device-width,initial-scale=1"> -->
<!-- <title>Costic Dashboard</title> -->
<!-- <!-- Iconic Fonts --> -->
<!-- <link href="https://fonts.googleapis.com/icon?family=Material+Icons" -->
<!-- 	rel="stylesheet"> -->
<!-- <link -->
<!-- 	href="../../back-assets/vendors/iconic-fonts/font-awesome/css/all.min.css" -->
<!-- 	rel="stylesheet"> -->
<!-- <link rel="stylesheet" -->
<!-- 	href="../../back-assets/vendors/iconic-fonts/flat-icons/flaticon.css"> -->
<!-- <link rel="stylesheet" -->
<!-- 	href="../../back-assets/vendors/iconic-fonts/cryptocoins/cryptocoins.css"> -->
<!-- <link rel="stylesheet" -->
<!-- 	href="../../back-assets/vendors/iconic-fonts/cryptocoins/cryptocoins-colors.css"> -->
<!-- <!-- Bootstrap core CSS --> -->
<!-- <link href="../../back-assets/css/bootstrap.min.css" rel="stylesheet"> -->
<!-- <!-- Page Specific Css (Datatables.css) --> -->
<!-- <link href="../../back-assets/css/datatables.min.css" rel="stylesheet"> -->
<!-- <!-- jQuery UI --> -->
<!-- <link href="../../back-assets/css/jquery-ui.min.css" rel="stylesheet"> -->
<!-- <!-- Costic Core styles --> -->
<!-- <link href="../../back-assets/css/style.css" rel="stylesheet"> -->
<!-- <!-- Favicon --> -->
<!-- <link rel="icon" type="image/png" sizes="32x32" href="../../favicon.ico"> -->

<!-- <style> -->
/* table#table-1 { */
/* 	background-color: #CCCCFF; */
/* 	border: 2px solid black; */
/* 	text-align: center; */
/* } */

/* table#table-1 h4 { */
/* 	color: red; */
/* 	display: block; */
/* 	margin-bottom: 1px; */
/* } */

/* h4 { */
/* 	color: blue; */
/* 	display: inline; */
/* } */
<!-- </style> -->

<!-- <style> -->
/* table { */
/* 	width: 750px; */
/* 	background-color: white; */
/* 	margin-top: 1px; */
/* 	margin-bottom: 1px; */
/* } */

/* table, th, td { */
/* 	border: 0px solid #CCCCFF; */
/* } */

/* th, td { */
/* 	padding: 1px; */
/* } */
<!-- </style> -->



<!-- </head> -->

<!-- <body -->
<!-- 	class="ms-body ms-aside-left-open ms-primary-theme ms-has-quickbar"> -->
<!-- 	<!-- Preloader --> -->
<!-- 	<div id="preloader-wrap"> -->
<!-- 		<div class="spinner spinner-8"> -->
<!-- 			<div class="ms-circle1 ms-child"></div> -->
<!-- 			<div class="ms-circle2 ms-child"></div> -->
<!-- 			<div class="ms-circle3 ms-child"></div> -->
<!-- 			<div class="ms-circle4 ms-child"></div> -->
<!-- 			<div class="ms-circle5 ms-child"></div> -->
<!-- 			<div class="ms-circle6 ms-child"></div> -->
<!-- 			<div class="ms-circle7 ms-child"></div> -->
<!-- 			<div class="ms-circle8 ms-child"></div> -->
<!-- 			<div class="ms-circle9 ms-child"></div> -->
<!-- 			<div class="ms-circle10 ms-child"></div> -->
<!-- 			<div class="ms-circle11 ms-child"></div> -->
<!-- 			<div class="ms-circle12 ms-child"></div> -->
<!-- 		</div> -->
<!-- 	</div> -->
<!-- 	<!-- Overlays --> -->
<!-- 	<div class="ms-aside-overlay ms-overlay-left ms-toggler" -->
<!-- 		data-target="#ms-side-nav" data-toggle="slideLeft"></div> -->
<!-- 	<div class="ms-aside-overlay ms-overlay-right ms-toggler" -->
<!-- 		data-target="#ms-recent-activity" data-toggle="slideRight"></div> -->
<!-- 	<!-- Sidebar Navigation Left --> -->

<!-- 	<!-- ----- ----- ----- ???????????? ????????? start ----- ----- ----- --> -->
<!-- 	<aside id="ms-side-nav" -->
<!-- 		class="side-nav fixed ms-aside-scrollable ms-aside-left"> -->
<!-- 		<!-- Logo --> -->
<!-- 		<div class="logo-sn ms-d-block-lg"> -->
<!-- 			<a class="pl-0 ml-0 text-center" -->
<%-- 				href="${pageContext.request.contextPath}/back-end/backstage/Back_index.jsp"><img --%>
<%-- 				src="${pageContext.request.contextPath}/back-assets/img/logo/logo01.png" --%>
<!-- 				alt="logo"></a> -->
<!-- 		</div> -->
<!-- 		<!-- Navigation --> -->
<!-- 		<ul class="accordion ms-main-aside fs-14" id="side-nav-accordion"> -->
<!-- 			<!-- ----- ----- ----- ???????????? start ----- ----- ----- --> -->
<!-- 			<li class="menu-item"><a -->
<%-- 				href="${pageContext.request.contextPath}/back-end/backstage/Back_index.jsp"><span><i --%>
<!-- 						class="material-icons fs-16"></i>?????????????????? - ??????</span></a></li> -->
<!-- 			<!-- ----- ----- ----- ???????????? end ----- ----- ----- --> -->

<!-- 			<!-- ----- ----- ----- ?????? start ----- ----- ----- --> -->
<!-- 			<li class="menu-item"><a href="#" class="has-chevron" -->
<!-- 				data-toggle="collapse" data-target="#employee" aria-expanded="false" -->
<!-- 				aria-controls="employee"><span><i -->
<!-- 						class="fas fa-file-employee fs-16"></i>????????????</span></a> -->
<!-- 				<ul id="employee" class="collapse" aria-labelledby="employee" -->
<!-- 					data-parent="#side-nav-accordion"> -->
<!-- 					<li><a -->
<%-- 						href="${pageContext.request.contextPath}/EmpShowServlet">??????????????????</a></li> --%>
<!-- 					<li><a -->
<%-- 						href="${pageContext.request.contextPath}/back-end/employee/employee_add.jsp">??????????????????</a></li> --%>
<!-- 				</ul></li> -->
<!-- 			<!-- ----- ----- ----- ?????? end ----- ----- ----- --> -->

<!-- 			<!-- ----- ----- ----- ?????? start ----- ----- ----- --> -->
<!-- 			<li class="menu-item"><a href="#" class="has-chevron" -->
<!-- 				data-toggle="collapse" data-target="#member" aria-expanded="false" -->
<!-- 				aria-controls="member"><span><i -->
<!-- 						class="fas fa-file-member fs-16"></i>????????????</span></a> -->
<!-- 				<ul id="member" class="collapse" aria-labelledby="member" -->
<!-- 					data-parent="#side-nav-accordion"> -->
<!-- 					<li><a -->
<%-- 						href="${pageContext.request.contextPath}/back-end/member/member_detail.jsp">??????????????????</a></li> --%>
<!-- 					<li><a -->
<%-- 						href="${pageContext.request.contextPath}/back-end/member/member_add.jsp">??????????????????</a></li> --%>
<!-- 					<li><a -->
<%-- 						href="${pageContext.request.contextPath}/back-end/member/member_edit.jsp">??????????????????</a></li> --%>
<!-- 				</ul></li> -->
<!-- 			<!-- ----- ----- ----- ?????? end ----- ----- ----- --> -->

<!-- 			<!-- ----- ----- ----- ?????? start ----- ----- ----- --> -->
<!-- 			<li class="menu-item"><a href="#" class="has-chevron" -->
<!-- 				data-toggle="collapse" data-target="#product" aria-expanded="false" -->
<!-- 				aria-controls="product"><span><i -->
<!-- 						class="fa fa-archive fs-16"></i>?????????</span></a> -->
<!-- 				<ul id="product" class="collapse" aria-labelledby="product" -->
<!-- 					data-parent="#side-nav-accordion"> -->
<!-- 					<li><a -->
<%-- 						href="${pageContext.request.contextPath}/back-end/product/product_cata.jsp">????????????</a></li> --%>
<!-- 					<li><a -->
<%-- 						href="${pageContext.request.contextPath}/back-end/product/product_list.jsp">????????????</a></li> --%>
<!-- 					<li><a -->
<%-- 						href="${pageContext.request.contextPath}/back-end/product/product_grid.jsp">????????????</a></li> --%>
<!-- 					<li><a -->
<%-- 						href="${pageContext.request.contextPath}/back-end/product/product_add.jsp">????????????</a></li> --%>
<!-- 					<li><a -->
<%-- 						href="${pageContext.request.contextPath}/back-end/product/product_detail.jsp">????????????</a></li> --%>
<!-- 				</ul></li> -->
<!-- 			<!-- ----- ----- ----- ?????? end ----- ----- ----- --> -->

<!-- 			<!-- ----- ----- ----- ?????? start ----- ----- ----- --> -->
<!-- 			<li class="menu-item"><a href="#" class="has-chevron" -->
<!-- 				data-toggle="collapse" data-target="#orders" aria-expanded="false" -->
<!-- 				aria-controls="orders"><span><i -->
<!-- 						class="fas fa-file-orders fs-16"></i>????????????</span></a> -->
<!-- 				<ul id="orders" class="collapse" aria-labelledby="orders" -->
<!-- 					data-parent="#side-nav-accordion"> -->
<!-- 					<li><a -->
<%-- 						href="${pageContext.request.contextPath}/back-end/order/order_details.jsp">????????????</a></li> --%>
<!-- 					<li><a -->
<%-- 						href="${pageContext.request.contextPath}/back-end/orddetails/select_page.jsp">??????????????????</a></li> --%>
<!-- 				</ul></li> -->
<!-- 			<!-- ----- ----- ----- ?????? end ----- ----- ----- --> -->

<!-- 			<!-- ----- ----- ----- ?????? start ----- ----- ----- --> -->
<!-- 			<li class="menu-item"><a href="#" class="has-chevron" -->
<!-- 				data-toggle="collapse" data-target="#reservation" -->
<!-- 				aria-expanded="false" aria-controls="reservation"><span><i -->
<!-- 						class="fas fa-file-reservation fs-16"></i>????????????</span></a> -->
<!-- 				<ul id="reservation" class="collapse" aria-labelledby="reservation" -->
<!-- 					data-parent="#side-nav-accordion"> -->
<!-- 					<li><a -->
<%-- 						href="${pageContext.request.contextPath}/back-end/reservation/reservation_detail.jsp">????????????</a></li> --%>
<!-- 					<li><a -->
<%-- 						href="${pageContext.request.contextPath}/back-end/reservation/reservation_edit.jsp">????????????</a></li> --%>
<!-- 				</ul></li> -->
<!-- 			<!-- ----- ----- ----- ?????? end ----- ----- ----- --> -->

<!-- 			<!-- ----- ----- ----- ?????? start ----- ----- ----- --> -->
<!-- 			<li class="menu-item"><a href="#" class="has-chevron" -->
<!-- 				data-toggle="collapse" data-target="#waiting" aria-expanded="false" -->
<!-- 				aria-controls="waiting"><span><i -->
<!-- 						class="fas fa-file-waiting fs-16"></i>????????????</span></a> -->
<!-- 				<ul id="waiting" class="collapse" aria-labelledby="waiting" -->
<!-- 					data-parent="#side-nav-accordion"> -->
<!-- 					<li><a -->
<%-- 						href="${pageContext.request.contextPath}/back-end/waiting/waiting_detail.jsp">????????????</a></li> --%>
<!-- 				</ul></li> -->
<!-- 			<!-- ----- ----- ----- ?????? end ----- ----- ----- --> -->

<!-- 			<!-- ----- ----- ----- ?????? start ----- ----- ----- --> -->
<!-- 			<li class="menu-item"><a href="#" class="has-chevron" -->
<!-- 				data-toggle="collapse" data-target="#restaurant_table" -->
<!-- 				aria-expanded="false" aria-controls="restaurant_table"><span><i -->
<!-- 						class="fas fa-file-member fs-16"></i>????????????</span></a> -->
<!-- 				<ul id="restaurant_table" class="collapse" -->
<!-- 					aria-labelledby="restaurant_table" -->
<!-- 					data-parent="#side-nav-accordion"> -->
<!-- 					<li><a -->
<%-- 						href="${pageContext.request.contextPath}/back-end/restaurant_table/restaurant_table_detail.jsp">????????????</a></li> --%>
<!-- 					<li><a -->
<%-- 						href="${pageContext.request.contextPath}/back-end/restaurant_table/restaurant_table_add.jsp">????????????</a></li> --%>
<!-- 					<li><a -->
<%-- 						href="${pageContext.request.contextPath}/back-end/restaurant_table/restaurant_table_edit.jsp">????????????</a></li> --%>
<!-- 				</ul></li> -->
<!-- 			<!-- ----- ----- ----- ?????? end ----- ----- ----- --> -->

<!-- 			<!-- ----- ----- ----- ?????? start ----- ----- ----- --> -->
<!-- 			<li class="menu-item"><a href="#" class="has-chevron" -->
<!-- 				data-toggle="collapse" data-target="#invoice" aria-expanded="false" -->
<!-- 				aria-controls="invoice"><span><i -->
<!-- 						class="fas fa-file-invoice fs-16"></i>??????????????????</span></a> -->
<!-- 				<ul id="invoice" class="collapse" aria-labelledby="invoice" -->
<!-- 					data-parent="#side-nav-accordion"> -->
<!-- 					<li><a -->
<%-- 						href="${pageContext.request.contextPath}/back-end/invoice/invoice_detail.jsp">????????????</a></li> --%>
<!-- 					<li><a -->
<%-- 						href="${pageContext.request.contextPath}/back-end/invoice/invoice_list.jsp">????????????</a></li> --%>
<!-- 				</ul></li> -->
<!-- 			<!-- ----- ----- ----- ?????? end ----- ----- ----- --> -->

<!-- 			<!-- ----- ----- ----- ?????? start ----- ----- ----- --> -->
<!-- 			<li class="menu-item"><a href="#" class="has-chevron" -->
<!-- 				data-toggle="collapse" data-target="#customer" aria-expanded="false" -->
<!-- 				aria-controls="customer"><span><i -->
<!-- 						class="fas fa-user-friends fs-16"></i>????????????</span></a> -->
<!-- 				<ul id="customer" class="collapse" aria-labelledby="customer" -->
<!-- 					data-parent="#side-nav-accordion"> -->
<!-- 					<li><a -->
<%-- 						href="${pageContext.request.contextPath}/back-end/customer/customer_review.jsp">????????????</a></li> --%>
<!-- 					<li><a -->
<%-- 						href="${pageContext.request.contextPath}/back-end/customer/customer_list.jsp">????????????</a></li> --%>
<!-- 				</ul></li> -->
<!-- 			<!-- ----- ----- ----- ?????? end ----- ----- ----- --> -->

<!-- 			<!-- ----- ----- ----- ???????????? start ----- ----- ----- --> -->
<!-- 			<li class="menu-item"><a href="#" class="has-chevron" -->
<!-- 				data-toggle="collapse" data-target="#listAllNews" -->
<!-- 				aria-expanded="false" aria-controls="listAllNews"><span><i -->
<!-- 						class="fas fa-file-invoice fs-16"></i>????????????</span></a> -->
<!-- 				<ul id="listAllNews" class="collapse" aria-labelledby="listAllNews" -->
<!-- 					data-parent="#side-nav-accordion"> -->
<!-- 					<li><a -->
<%-- 						href="${pageContext.request.contextPath}/back-end/news/listAllNews.jsp">??????????????????</a></li> --%>
<!-- 				</ul></li> -->
<!-- 			<!-- ----- ----- ----- ???????????? end ----- ----- ----- --> -->
<!-- 		</ul> -->
<!-- 	</aside> -->
<!-- 	<!-- ----- ----- ----- ???????????? ????????? end ----- ----- ----- --> -->

<!-- 	<!-- ----- ----- ----- ?????? start ----- ----- ----- --> -->
<!-- 	<main class="body-content"> -->
<!-- 		<!-- ----- ----- -----   ????????????Bar start ----- ----- ----- --> -->
<!-- 		<nav class="navbar ms-navbar"> -->
<!-- 			<div class="ms-aside-toggler ms-toggler pl-0" -->
<!-- 				data-target="#ms-side-nav" data-toggle="slideLeft"> -->
<!-- 				<span class="ms-toggler-bar bg-primary"></span><span -->
<!-- 					class="ms-toggler-bar bg-primary"></span><span -->
<!-- 					class="ms-toggler-bar bg-primary"></span> -->
<!-- 			</div> -->
<!-- 			<div class="logo-sn logo-sm ms-d-block-sm"> -->
<!-- 				<a class="pl-0 ml-0 text-center navbar-brand mr-0" -->
<%-- 					href="${pageContext.request.contextPath}/back-end/backstage/Back_index.jsp"><img --%>
<%-- 					src="${pageContext.request.contextPath}/back-assets/img/logo/logo01.png" --%>
<!-- 					alt="logo"></a> -->
<!-- 			</div> -->
<!-- 			<ul class="ms-nav-list ms-inline mb-0" id="ms-nav-options"> -->
<!-- 				<li class="ms-nav-item ms-search-form pb-0 py-0"> -->
<!-- 					<form class="ms-form" method="post"> -->
<!-- 						<div class="ms-form-group my-0 mb-0 has-icon fs-14"> -->
<!-- 							<input type="search" class="ms-form-input" name="search" -->
<!-- 								placeholder="Search here..." value=""><i -->
<!-- 								class="flaticon-search text-disabled"></i> -->
<!-- 						</div> -->
<!-- 					</form> -->
<!-- 				</li> -->
<!-- 				<li class="ms-nav-item dropdown"><a href="#" -->
<!-- 					class="text-disabled ms-has-notification" id="mailDropdown" -->
<!-- 					data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i -->
<!-- 						class="flaticon-mail"></i></a> -->
<!-- 					<ul class="dropdown-menu dropdown-menu-right" -->
<!-- 						aria-labelledby="mailDropdown"> -->
<!-- 						<li class="dropdown-menu-header"> -->
<!-- 							<h6 class="dropdown-header ms-inline m-0"> -->
<!-- 								<span class="text-disabled">??????</span> -->
<!-- 							</h6> <span class="badge badge-pill badge-success">0 New</span> -->
<!-- 						</li> -->
<!-- 						<li class="dropdown-divider"></li> -->

<!-- 						<li class="dropdown-divider"></li> -->
<!-- 						<li class="dropdown-menu-footer text-center"><a href="">Go -->
<!-- 								to Inbox</a></li> -->
<!-- 					</ul></li> -->
<!-- 				<li class="ms-nav-item dropdown"><a href="#" -->
<!-- 					class="text-disabled ms-has-notification" id="notificationDropdown" -->
<!-- 					data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i -->
<!-- 						class="flaticon-bell"></i></a> -->
<!-- 					<ul class="dropdown-menu dropdown-menu-right" -->
<!-- 						aria-labelledby="notificationDropdown"> -->
<!-- 						<li class="dropdown-menu-header"> -->
<!-- 							<h6 class="dropdown-header ms-inline m-0"> -->
<!-- 								<span class="text-disabled">??????</span> -->
<!-- 							</h6> <span class="badge badge-pill badge-info">0 New</span> -->
<!-- 						</li> -->
<!-- 						<li class="dropdown-divider"></li> -->
<!-- 						<li class="dropdown-menu-footer text-center"><a href="#">??????????????????</a></li> -->
<!-- 					</ul></li> -->
<!-- 				<li class="ms-nav-item ms-nav-user dropdown"><a href="#" -->
<!-- 					id="userDropdown" data-toggle="dropdown" aria-haspopup="true" -->
<!-- 					aria-expanded="false"><img -->
<!-- 						class="ms-user-img ms-img-round float-right" -->
<%-- 						src="${pageContext.request.contextPath}/back-assets/img/costic/customer-6.jpg" --%>
<!-- 						alt="people"></a> -->
<!-- 					<ul class="dropdown-menu dropdown-menu-right user-dropdown" -->
<!-- 						aria-labelledby="userDropdown"> -->
<!-- 						<li class="dropdown-menu-header"> -->
<!-- 							<h6 class="dropdown-header ms-inline m-0"> -->
<!-- 								<span class="text-disabled">Welcome, ????????????</span> -->
<!-- 							</h6> -->
<!-- 						</li> -->
<!-- 						<li class="dropdown-divider"></li> -->
<!-- 						<li class="ms-dropdown-list"><a class="media fs-14 p-2" -->
<!-- 							href=""><span><i class="flaticon-user mr-2"></i>??????????????????</span></a><a -->
<!-- 							class="media fs-14 p-2" href=""><span><i -->
<!-- 									class="flaticon-mail mr-2"></i>??????</span><span -->
<!-- 								class="badge badge-pill badge-info">3</span></a><a -->
<!-- 							class="media fs-14 p-2" href=""><span><i -->
<!-- 									class="flaticon-gear mr-2"></i>????????????</span></a></li> -->
<!-- 						<li class="dropdown-divider"></li> -->
<!-- 						<li class="dropdown-menu-footer"><a class="media fs-14 p-2" -->
<%-- 							href="${pageContext.request.contextPath}/back-end/prebuilt-pages/default-login.html"><span><i --%>
<!-- 									class="flaticon-shut-down mr-2"></i>Logout</span></a></li> -->
<!-- 					</ul></li> -->
<!-- 			</ul> -->
<!-- 			<div class="ms-toggler ms-d-block-sm pr-0 ms-nav-toggler" -->
<!-- 				data-toggle="slideDown" data-target="#ms-nav-options"> -->
<!-- 				<span class="ms-toggler-bar bg-primary"></span><span -->
<!-- 					class="ms-toggler-bar bg-primary"></span><span -->
<!-- 					class="ms-toggler-bar bg-primary"></span> -->
<!-- 			</div> -->
<!-- 		</nav> -->
<!-- 		<!-- ----- ----- -----   ????????????Bar end ----- ----- ----- --> -->
<!-- 		<!-- ----- ----- -----   ??????????????? start ----- ----- ----- --> -->
<!-- 		<nav aria-label="breadcrumb"> -->
<!-- 			<ol class="breadcrumb pl-0"> -->
<!-- 				<li class="breadcrumb-item"><a href="#"><i -->
<!-- 						class="material-icons">home</i>??????</a></li> -->
<!-- 			</ol> -->
<!-- 		</nav> -->
<!-- 		<!-- ----- ----- -----   ??????????????? end ----- ----- ----- --> -->
<!-- 		<!-- ----- ----- -----   ?????????????????? start ----- ----- ----- --> -->

<!-- 		<table id="table-1"> -->
<!-- 			<tr> -->
<!-- 				<td> -->
<!-- 					<h3>?????????????????? - update_news_input.jsp</h3> -->
<!-- 					<h4> -->
<!-- 						<a href="listAllNews.jsp"><img src="images/back.png" -->
<!-- 							width="100" height="100" border="0">?????????</a> -->
<!-- 					</h4> -->
<!-- 				</td> -->
<!-- 			</tr> -->
<!-- 		</table> -->

<!-- 		<h3>????????????:</h3> -->

<%-- 		<%-- ???????????? --%> --%>
<%-- 		<c:if test="${not empty errorMsgs}"> --%>
<!-- 			<font style="color: red">?????????????????????:</font> -->
<!-- 			<ul> -->
<%-- 				<c:forEach var="message" items="${errorMsgs}"> --%>
<%-- 					<li style="color: red">${message}</li> --%>
<%-- 				</c:forEach> --%>
<!-- 			</ul> -->
<%-- 		</c:if> --%>

<!-- 		<FORM METHOD="post" ACTION="news.do" name="form1" -->
<!-- 			enctype="multipart/form-data"> -->
<!-- 			<table> -->
<!-- 				<tr> -->
<!-- 					<td>????????????:<font color=red><b>*</b></font></td> -->
<%-- 					<td><%=newsVO.getNewsID()%></td> --%>
<!-- 				</tr> -->

<!-- 				<tr> -->
<!-- 					<td>???????????? :</td> -->
<!-- 					<td><input type="TEXT" name="empID" size="45" -->
<%-- 						value="<%=newsVO.getEmpID()%>" /></td> --%>
<!-- 				</tr> -->
<!-- 				<tr> -->
<!-- 					<td>????????????:</td> -->
<!-- 					<td><input name="newsDate" id="f_date1" type="text"></td> -->
<!-- 				</tr> -->
<!-- 				<tr> -->
<!-- 					<td>???????????? :</td> -->
<!-- 					<td><input type="TEXT" name="newsTitle" size="45" -->
<%-- 						value="<%=newsVO.getNewsTitle()%>" /></td> --%>
<!-- 				</tr> -->
<!-- 				<tr> -->
<!-- 					<td>????????????:</td> -->
<!-- 					<td class="col-md-8 form-group"><textarea class="form-control" -->
<%-- 							id="newsInformation" rows="3" name="newsInformation"><%=(newsVO == null) ? "" : newsVO.getNewsInformation()%></textarea> --%>
<!-- 					</td> -->
<!-- 					 				<td><input type="TEXT" name="newsInformation" size="45" -->
<%-- 										value="<%=(newsVO == null) ? "TEST" : newsVO.getNewsInformation()%>" /></td> --%>
<!-- 				</tr> -->

<!-- 				<tr> -->
<!-- 					<td>????????????(?????? ??????):</td> -->
<!-- 					<td><select name="newsControl" id="newsControl"> -->
<!-- 							<option value="0">??????</option> -->
<!-- 							<option value="1">??????</option> -->
<!-- 					</select></td> -->
<!-- 				</tr> -->

<!-- 				<div> -->
<!-- 					<label for="newsPictures">??????:</label> <input id="newsPictures" -->
<!-- 						name="newsPictures" type="file" onclick="previewImage()" -->
<!-- 						multiple="multiple " accept="image/*" /> -->
<%-- 									????????????????????? <span  id ="newsPictures.errors" class="error">${errorMsgs.newsPictures}</span> --%>
<!-- 					<div id="blob_holder"> -->
<!-- 						<img -->
<%-- 							src="<%=request.getContextPath()%>/news/DBGifReader?newsID=${param.newsID}" --%>
<!-- 							width="100px"> -->
<!-- 					</div> -->
<!-- 				</div> -->

<!-- 			</table> -->
<!-- 			<br> <input type="hidden" name="action" value="update"> -->
<%-- 			<input type="hidden" name="newsID" value="<%=newsVO.getNewsID()%>"> --%>
<!-- 			<input type="submit" value="????????????"> -->
<!-- 		</FORM> -->

<!-- 		<!-- ----- ----- -----   ?????????????????? end ----- ----- ----- --> -->
<!-- 	</main> -->
<!-- 	<!-- ----- ----- ----- ?????? end ----- ----- ----- --> -->

<!-- 	<!-- SCRIPTS --> -->
<!-- 	<!-- Global Required Scripts Start --> -->
<!-- 	<script src="../../back-assets/js/jquery-3.3.1.min.js"></script> -->
<!-- 	<script src="../../back-assets/js/popper.min.js"></script> -->
<!-- 	<script src="../../back-assets/js/bootstrap.min.js"></script> -->
<!-- 	<script src="../../back-assets/js/perfect-scrollbar.js"></script> -->
<!-- 	<script src="../../back-assets/js/jquery-ui.min.js"></script> -->
<!-- 	<!-- Global Required Scripts End --> -->
<!-- 	<!-- Page Specific Scripts Start --> -->
<!-- 	<script src="../../back-assets/js/Chart.bundle.min.js"></script> -->
<!-- 	<!-- Page Specific Scripts End --> -->
<!-- 	<!-- Page Specific Scripts Finish --> -->
<!-- 	<script src="../../back-assets/js/datatables.min.js"></script> -->
<!-- 	<script src="../../back-assets/js/data-tables.js"></script> -->
<!-- 	<!-- Costic core JavaScript --> -->
<!-- 	<script src="../../back-assets/js/framework.js"></script> -->
<!-- 	<!-- Settings --> -->
<!-- 	<script src="../../back-assets/js/settings.js"></script> -->
<!-- </body> -->
<%-- <% --%>
// Timestamp newsDate = null;
// try {
// 	newsDate = newsVO.getNewsDate();
// } catch (Exception e) {
// 	newsDate = new Timestamp(System.currentTimeMillis());
// }
<%-- %> --%>

<!-- <link rel="stylesheet" type="text/css" -->
<%-- 	href="<%=request.getContextPath()%>/back-assets/datetimepicker/jquery.datetimepicker.css" /> --%>
<!-- <script -->
<%-- 	src="<%=request.getContextPath()%>/back-assets/datetimepicker/jquery.js"></script> --%>
<!-- <script -->
<%-- 	src="<%=request.getContextPath()%>/back-assets/datetimepicker/jquery.datetimepicker.full.js"></script> --%>

<!-- <style> -->
/* .xdsoft_datetimepicker .xdsoft_datepicker { */
/* 	width: 300px; /* width:  300px; */ */
/* } */

/* .xdsoft_datetimepicker .xdsoft_timepicker .xdsoft_time_box { */
/* 	height: 151px; /* height:  151px; */ */
/* } */
<!-- </style> -->

<!-- <script> -->

// document.getElementById('newsControl').onchange = ()=> {
// 	console.log(this);
// }


// $.datetimepicker.setLocale('zh');
// $('#f_date1').datetimepicker({
//    theme: '',              //theme: 'dark',
//    timepicker:true,       //timepicker:true,
//    step: 30,                //step: 60 (??????timepicker???????????????60??????)
//    format:'Y-m-d H:i:s',         //format:'Y-m-d H:i:s',
<%--    value: '<%=newsDate%>', // value:   new Date(), --%>
// });


// //????????????-?????????
// var filereader_support = typeof FileReader != 'undefined';
// if (!filereader_support) {
// 	alert("No FileReader support");
// }
// acceptedTypes = {
// 		'image/png' : true,
// 		'image/jpeg' : true,
// 		'image/gif' : true
// };
// function previewImage() {
// 	var newsPictures1 = document.getElementById("newsPictures");
// 	newsPictures1.addEventListener("change", function(event) {
// 		var files = event.target.files || event.dataTransfer.files;
// 		for (var i = 0; i < files.length; i++) {
// 			previewfile(files[i])
// 		}
// 	}, false);
// }
// function previewfile(file) {
// 	if (filereader_support === true && acceptedTypes[file.type] === true) {
// 		var reader = new FileReader();
// 		reader.onload = function(event) {
// 			var image = new Image();
// 			image.src = event.target.result;
// 			image.width = 200;
// 			image.height = 200;
// 			image.border = 2;
// 			blob_holder.innerHTML = '';
// // 			if (blob_holder.hasChildNodes()) {
// // 				blob_holder.removeChild(blob_holder.childNodes[0]);
// // 			}
// 			blob_holder.appendChild(image);
// 		};
// 		reader.readAsDataURL(file);
// 		document.getElementById('submit');
// 	} else {
// 		blob_holder.innerHTML = "<div  style='text-align: left;'>" + "??? filename: " + file.name
// 				+ "<br>" + "??? ContentTyp: " + file.type
// 				+ "<br>" + "??? size: " + file.size + "bytes"
// 				+ "<br>" + "??? ??????ContentType??????: <b> <font color=red>image/png???image/jpeg???image/gif </font></b></div>";
// 		document.getElementById('submit');
// 	}
// }

<!-- </script> -->
<!-- </html> -->