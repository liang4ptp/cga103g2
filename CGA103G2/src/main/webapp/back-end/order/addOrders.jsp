<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.orders.model.*"%>
<%@page import="java.sql.Timestamp"%>

<%
OrdersVO ordersVO = (OrdersVO) request.getAttribute("ordersVO");
%>


<!DOCTYPE html>
<html lang="zh-tw">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>Costic Dashboard</title>
<!-- Iconic Fonts -->
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link
	href="../../back-assets/vendors/iconic-fonts/font-awesome/css/all.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="../../back-assets/vendors/iconic-fonts/flat-icons/flaticon.css">
<link rel="stylesheet"
	href="../../back-assets/vendors/iconic-fonts/cryptocoins/cryptocoins.css">
<link rel="stylesheet"
	href="../../back-assets/vendors/iconic-fonts/cryptocoins/cryptocoins-colors.css">
<!-- Bootstrap core CSS -->
<link href="../../back-assets/css/bootstrap.min.css" rel="stylesheet">
<!-- Page Specific Css (Datatables.css) -->
<link href="../../back-assets/css/datatables.min.css" rel="stylesheet">
<!-- jQuery UI -->
<link href="../../back-assets/css/jquery-ui.min.css" rel="stylesheet">
<!-- Costic Core styles -->
<link href="../../back-assets/css/style.css" rel="stylesheet">
<!-- Favicon -->
<link rel="icon" type="image/png" sizes="32x32" href="../../favicon.ico">

<style>
table#table-1 {
	background-color: #CCCCFF;
	border: 2px solid black;
	text-align: center;
}

table#table-1 h4 {
	color: red;
	display: block;
	margin-bottom: 1px;
}

h4 {
	color: blue;
	display: inline;
}
</style>

<style>
table {
	width: 570px;
	background-color: f0f0fa;
	margin-top: 1px;
	margin-bottom: 1px;
	margin-left: 10px;
}

table, th, td {
	border: 0px solid #CCCCFF;
}

th, td {
	padding: 1px;
}
</style>
</head>

<body
	class="ms-body ms-aside-left-open ms-primary-theme ms-has-quickbar">
	<!-- ----- ----- ----- ??????????????????????????? start ----- ----- ----- -->
	<%@ include file="../../back-end/tool/ReadingCircle.file"%>
	<!-- ----- ----- ----- ??????????????????????????? end ----- ----- ----- -->
	<div class="ms-aside-overlay ms-overlay-left ms-toggler"
		data-target="#ms-side-nav" data-toggle="slideLeft"></div>
	<div class="ms-aside-overlay ms-overlay-right ms-toggler"
		data-target="#ms-recent-activity" data-toggle="slideRight"></div>
	<!-- Sidebar Navigation Left -->

	<!-- ----- ----- ----- ???????????? ????????? start ----- ----- ----- -->
	<%@ include file="../../back-end/tool/LeftSideBar.file"%>
	<!-- ----- ----- ----- ???????????? ????????? end ----- ----- ----- -->

	<!-- ----- ----- ----- ?????? start ----- ----- ----- -->
	<main class="body-content">
		<!-- ----- ----- -----   ????????????Bar start ----- ----- ----- -->
		<%@ include file="../../back-end/tool/UpSideBar.file"%>
		<!-- ----- ----- -----   ????????????Bar end ----- ----- ----- -->
		<!-- ----- ----- -----   ??????????????? start ----- ----- ----- -->
		<nav aria-label="breadcrumb">
			<ol class="breadcrumb pl-0">
				<li class="breadcrumb-item"><a href="#"><i
						class="material-icons">home</i>??????</a></li>
				<li class="breadcrumb-item"><a href="order_details.jsp">????????????</a></li>
				<li class="breadcrumb-item active" aria-current="page">????????????</li>
			</ol>
		</nav>
		<!-- ----- ----- -----   ??????????????? end ----- ----- ----- -->
		<!-- ----- ----- -----   ?????????????????? start ----- ----- ----- -->
		<table id="table-1">
			<tr>
				<td>
					<h3>???????????? - addOrders.jsp</h3>
				</td>
				<td>
					<h4>
						<a href="order_details.jsp"><img src="images/giphy.gif"
							width="250" height="250" border="0">?????????</a>
					</h4>
				</td>
			</tr>
		</table>

		<h3>????????????:</h3>

		<%-- ???????????? --%>
		<c:if test="${not empty errorMsgs}">
			<font style="color: red">?????????????????????:</font>
			<ul>
				<c:forEach var="message" items="${errorMsgs}">
					<li style="color: red">${message}</li>
				</c:forEach>
			</ul>
		</c:if>

		<FORM METHOD="post" ACTION="orders.do" name="form1">
			<table>
				<tr>
					<td>????????????:</td>
					<td><input type="TEXT" name="ordersID" size="45"
						value="<%=(ordersVO == null) ? "" : ordersVO.getOrdersID()%>" /></td>
				</tr>
				<tr>
					<td>????????????:</td>
					<td><input type="TEXT" name="memID" size="45"
						value="<%=(ordersVO == null) ? "" : ordersVO.getMemID()%>" /></td>
				</tr>
				<tr>
					<td>??????????????????:</td>
					<td><input type="TEXT" name="empCounterID" size="45"
						value="<%=(ordersVO == null) ? "" : ordersVO.getEmpCounterID()%>" /></td>
				</tr>
				<tr>
					<td>??????????????????:</td>
					<td><input type="TEXT" name="empDeliveryID" size="45"
						value="<%=(ordersVO == null) ? "" : ordersVO.getEmpDeliveryID()%>" /></td>
				</tr>
				<tr>
					<td>????????????:</td>
					<td><input type="TEXT" name="seatID" size="45"
						value="<%=(ordersVO == null) ? "" : ordersVO.getSeatID()%>" /></td>
				</tr>
				<tr>
					<td>????????????(?????? ?????? ??????):</td>
					<td><select name="ordersType" id="ordersType">
							<option value="0">??????</option>
							<option value="1">??????</option>
							<option value="2">??????</option>
					</select></td>
				</tr>
				<tr>
					<td>???????????????:</td>
					<td><input type="TEXT" name="ordersAmount" size="45"
						value="<%=(ordersVO == null) ? "" : ordersVO.getOrdersAmount()%>" /></td>
				</tr>
				<tr>
					<td>????????????(??????, ?????????, ??????):</td>
					<td><select id="ordersStatus" name="ordersStatus">
							<option value="0">??????</option>
							<option value="1">?????????</option>
							<option value="2">??????</option>
					</select></td>
				</tr>
				<tr>
					<td>????????????:</td>
					<td><input type="TEXT" name="ordersDestination" size="45"
						value="<%=(ordersVO == null) ? "" : ordersVO.getOrdersDestination()%>" /></td>
				</tr>
				<tr>
					<td>???????????????:</td>
					<td><input name="ordersBuildDate" id="f_date1" type="text"></td>
				</tr>
				<tr>
					<td>???????????????:</td>
					<td><input name="ordersMakeDate" id="f_date2" type="text"></td>
				</tr>

				<%-- 	<jsp:useBean id="ordersSvc" scope="page" class="com.orders.model.OrdersService" /> --%>

			</table>

			<br> <input type="hidden" name="action" value="insert">
			<input type="submit" value="????????????" style="margin-left: 10px;" >
		</FORM>
		<!-- ----- ----- -----   ?????????????????? end ----- ----- ----- -->
	</main>
	<!-- ----- ----- ----- ?????? end ----- ----- ----- -->
	<!-- SCRIPTS -->
	<!-- Global Required Scripts Start -->
	<script src="../../back-assets/js/jquery-3.3.1.min.js"></script>
	<script src="../../back-assets/js/popper.min.js"></script>
	<script src="../../back-assets/js/bootstrap.min.js"></script>
	<script src="../../back-assets/js/perfect-scrollbar.js"></script>
	<script src="../../back-assets/js/jquery-ui.min.js"></script>
	<!-- Global Required Scripts End -->
	<!-- Page Specific Scripts Start -->
	<script src="../../back-assets/js/Chart.bundle.min.js"></script>
	<!-- Page Specific Scripts End -->
	<!-- Page Specific Scripts Finish -->
	<script src="../../back-assets/js/datatables.min.js"></script>
	<script src="../../back-assets/js/data-tables.js"></script>
	<!-- Costic core JavaScript -->
	<script src="../../back-assets/js/framework.js"></script>
	<!-- Settings -->
	<script src="../../back-assets/js/settings.js"></script>
	<%
Timestamp ordersBuildDate = null;
try {
	ordersBuildDate = ordersVO.getOrdersBuildDate();
} catch (Exception e) {
	ordersBuildDate = new Timestamp(System.currentTimeMillis());
}
%>
<%
Timestamp ordersMakeDate = null;
try {
	ordersMakeDate = ordersVO.getOrdersMakeDate();
} catch (Exception e) {
	ordersMakeDate = new Timestamp(System.currentTimeMillis());
}
%>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/back-assets/datetimepicker/jquery.datetimepicker.css" />
<script src="<%=request.getContextPath()%>/back-assets/datetimepicker/jquery.js"></script>
<script
	src="<%=request.getContextPath()%>/back-assets/datetimepicker/jquery.datetimepicker.full.js"></script>


<style>
.xdsoft_datetimepicker .xdsoft_datepicker {
	width: 300px; /* width:  300px; */
}

.xdsoft_datetimepicker .xdsoft_timepicker .xdsoft_time_box {
	height: 151px; /* height:  151px; */
}
</style>
<script>
	
	document.getElementById('ordersType').onchange = () => {
		console.log(this);
	}
	document.getElementById('ordersStatus').onchange = () => {
		console.log(this);
	}

        $.datetimepicker.setLocale('zh');
        $('#f_date1').datetimepicker({
	       theme: '',              //theme: 'dark',
	       timepicker:true,       //timepicker:true,
	       step: 30,                //step: 60 (??????timepicker???????????????60??????)
	       format:'Y-m-d H:i:s',         //format:'Y-m-d H:i:s',
		   value: '<%=ordersBuildDate%>', // value:   new Date(),
           //disabledDates:        ['2017/06/08','2017/06/09','2017/06/10'], // ??????????????????
           //startDate:	            '2017/07/10',  // ?????????
           //minDate:               '-1970-01-01', // ????????????(??????)??????
           //maxDate:               '+1970-01-01'  // ????????????(??????)??????
        });
        
        
        $.datetimepicker.setLocale('zh');
        $('#f_date2').datetimepicker({
	       theme: '',              //theme: 'dark',
	       timepicker:true,       //timepicker:true,
	       step: 30,                //step: 60 (??????timepicker???????????????60??????)
	       format:'Y-m-d H:i:s',         //format:'Y-m-d H:i:s',
		   value: '<%=ordersMakeDate%>', // value:   new Date(),
           //disabledDates:        ['2017/06/08','2017/06/09','2017/06/10'], // ??????????????????
           //startDate:	            '2017/07/10',  // ?????????
           //minDate:               '-1970-01-01', // ????????????(??????)??????
        });
</script>
</body>

</html>