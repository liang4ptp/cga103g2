<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>員工資料修改 - update_emp_input.jsp</title>

<%@ include file="included-fragment.file" %>
<style type="text/css">
	
	button {
		padding: 5px;
	}
	form {
		display: table;
	}
	form div {
		display: table-row;
	}
	label, input, span, select {
		display: table-cell;
		margin: 5px;
		text-align: left;		
	}
	input[type=text], input[type=password], select, textarea {
		width: 200px;
		margin: 5px;
	}
	form div div {
		display: table-cell;
	}
	.center {
        margin-left: auto;
        margin-right: auto;
    }
</style>
</head>
<body>

<nav class="navbar navbar-expand-md navbar-dark bg-success fixed-top justify-content-center">
		 <div align="center"> <h2>員工資料修改 - update_emp_input.jsp</h2>
		 <h3><a class="navbar-brand" href="<%=request.getContextPath()%>/meals/select_page.jsp"><img src="<%=request.getContextPath()%>/resources/images/back1.gif">回查詢頁</a></h3></div>
</nav>

	<div align="center">
		<h3><b>所有欄位皆為必填欄位</b></h3>
		<form action="<%=request.getContextPath()%>/meals/Meals.do" method="post"  enctype="multipart/form-data">
			<div>
			<label for="mealsID">菜色編號:</label>
			<input id ="mealsID" name="mealsID" type="text" value="${param.mealsID}" style="border:0px ; font-weight: bold;" readonly />
			</div>
			
			<div>
			<label for="mealsCategoryID">菜系編號:</label>
			<input id ="mealsCategoryID" name="mealsCategoryID" type="text" value="${param.mealsCategoryID}" style="border:0px ; font-weight: bold;" readonly />
			</div>
			
			<div>
			<label for="mealsName">菜名:</label>
			<input id ="mealsName" name="mealsName" type="text" value="${param.mealsName}" onclick="hideContent('mealsName.errors');" />
			<span  id ="mealsName.errors" class="error">${errorMsgsmealsName}<br/></span>
			</div>
			
			<div> 
			<label for="mealsPrice">價錢:</label>
			<input id ="mealsPrice" name="mealsPrice" type="text" value="${param.mealsPrice}" onclick="hideContent('mealsPrice.errors');" />
			<span  id ="mealsPrice.errors" class="error">${errorMsgs.mealsPrice}</span>
			</div>
			
            <div>
			<label for="mealsInfo">菜色說明:</label>
			<input id ="mealsInfo" name="mealsInfo" type="text" value="${param.mealsInfo}" onclick="hideContent('mealsInfo.errors');" />
			<span  id ="mealsInfo" class="error">${errorMsgs.mealsInfo}</span>
			</div>
			
			<div>
			<label for="mealsPicture">照片:</label>
			<input id ="mealsPicture" name="mealsPicture" type="file" onclick="previewImage()" multiple="multiple" />
            <%-- 可以不修改圖片 <span  id ="mealsPicture.errors" class="error">${errorMsgs.mealsPicture}</span> --%>
			<div id="blob_holder"><img src="<%=request.getContextPath()%>/meals/DBGifReader?mealsID=${param.mealsID}" width="100px"></div>
			</div>
			 <div>
			<label for="mealsControl">菜色控制:</label>
			<input id ="mealsControl" name="mealsControl" type="text" value="${param.mealsControl}" onclick="hideContent('mealsControl.errors');" />
			<span  id ="mealsControl.errors" class="error">${errorMsgs.mealsControl}</span>
			</div>
			
			<div>
				<div></div>
				<input  type="hidden" name="action" value="update">
				<button type="submit" id="submit"> 送出修改 </button>
				<div></div>
			</div>
		</form>
	</div>


<!-- JavaScript part -->
<script type="text/javascript">
//清除提示信息
function hideContent(d) {
     document.getElementById(d).style.display = "none";
}

//照片上傳-預覽用
var filereader_support = typeof FileReader != 'undefined';
if (!filereader_support) {
	alert("No FileReader support");
}
acceptedTypes = {
		'image/png' : true,
		'image/jpeg' : true,
		'image/gif' : true
};
function previewImage() {
	var upfile1 = document.getElementById("upFiles");
	upfile1.addEventListener("change", function(event) {
		var files = event.target.files || event.dataTransfer.files;
		for (var i = 0; i < files.length; i++) {
			previewfile(files[i])
		}
	}, false);
}
function previewfile(file) {
	if (filereader_support === true && acceptedTypes[file.type] === true) {
		var reader = new FileReader();
		reader.onload = function(event) {
			var image = new Image();
			image.src = event.target.result;
			image.width = 100;
			image.height = 75;
			image.border = 2;
			if (blob_holder.hasChildNodes()) {
				blob_holder.removeChild(blob_holder.childNodes[0]);
			}
			blob_holder.appendChild(image);
		};
		reader.readAsDataURL(file);
		document.getElementById('submit').disabled = false;
	} else {
		blob_holder.innerHTML = "<div  style='text-align: left;'>" + "● filename: " + file.name
				+ "<br>" + "● ContentTyp: " + file.type
				+ "<br>" + "● size: " + file.size + "bytes"
				+ "<br>" + "● 上傳ContentType限制: <b> <font color=red>image/png、image/jpeg、image/gif </font></b></div>";
		document.getElementById('submit').disabled = true;
	}
}
</script>

</body>
</html>