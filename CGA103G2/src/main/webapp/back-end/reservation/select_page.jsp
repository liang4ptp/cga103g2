<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<title>IBM Rsvt: Home</title>

<style>
table#table-1 {
	width: 450px;
	background-color: #CCCCFF;
	margin-top: 5px;
	margin-bottom: 10px;
	border: 3px ridge Gray;
	height: 80px;
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

</head>
<body bgcolor='white'>

	<table id="table-1">
		<tr>
			<td><h3>IBM Rsvt: Home</h3>
				<h4>( MVC )</h4></td>
		</tr>
	</table>

	<p>This is the Home page for IBM Rsvt: Home</p>

	<h3>資料查詢:</h3>

	<%-- 錯誤表列 --%>
	<c:if test="${not empty errorMsgs}">
		<font style="color: red">請修正以下錯誤:</font>
		<ul>
			<c:forEach var="message" items="${errorMsgs}">
				<li style="color: red">${message}</li>
			</c:forEach>
		</ul>
	</c:if>

	<ul>
		<li><a href='listAllRsvt.jsp'>List</a> all Rsvts. <br>
		<br></li>


		<li>
			<FORM METHOD="post" ACTION="RsvtServlet">
				<b>輸入訂位編號 (如7001):</b> <input type="text" name="rsvtId"> <input
					type="hidden" name="action" value="getOne_For_Display"> <input
					type="submit" value="送出">
			</FORM>
		</li>

		<jsp:useBean id="rsvtSvc" scope="page"
			class="com.rsvt.model.RsvtService" />

		<li>
			<FORM METHOD="post" ACTION="RsvtServlet">
				<b>選擇訂位編號:</b> <select size="1" name="rsvtId">
					<c:forEach var="rsvtVO" items="${rsvtSvc.all}">
						<option value="${rsvtVO.rsvtId}">${rsvtVO.rsvtId}
					</c:forEach>
				</select> <input type="hidden" name="action" value="getOne_For_Display">
				<input type="submit" value="送出">
			</FORM>
		</li>

		<li>
			<FORM METHOD="post" ACTION="RsvtServlet">
				<b>選擇姓名:</b> 
<!-- 				<select size="1" name="customerName"> -->
<%-- 					<c:forEach var="rsvtVO" items="${rsvtSvc.all}"> --%>
<%-- 						<option value="${rsvtVO.customerName}">${rsvtVO.customerName} --%>
<%-- 					</c:forEach> --%>
<!-- 				</select>  -->
				<input type="text" name="customerName">
				<input type="hidden" name="action" value="getOne_For_CustomerName">
				<input type="submit" value="送出">
			</FORM>
		</li>
		<li>
			<FORM METHOD="post" ACTION="RsvtServlet">
				<b>選擇手機:</b> <select size="1" name="rsvtId">
					<c:forEach var="rsvtVO" items="${rsvtSvc.all}">
						<option value="${rsvtVO.rsvtId}">${rsvtVO.customerPhone}
					</c:forEach>
				</select> <input type="hidden" name="action" value="getOne_For_Display">
				<input type="submit" value="送出">
			</FORM>
		</li>
	</ul>


	<h3>訂位管理</h3>

	<ul>
		<li><a href='addRsvt.jsp'>Add</a> a new Rsvt.</li>
	</ul>

</body>
</html>