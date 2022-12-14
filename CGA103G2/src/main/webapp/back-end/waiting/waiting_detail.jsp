<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

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
<link rel="icon" type="image/png" sizes="32x32" href="${pageContext.request.contextPath}/favicon.ico">
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
	<main class="body-content"padding-right: 0 px;>
		<!-- ----- ----- -----   中間上面Bar start ----- ----- ----- -->
			<%@ include file="../../back-end/tool/UpSideBar.file"%>
		<!-- ----- ----- -----   中間上面Bar end ----- ----- ----- -->
		
		<!-- ----- ----- -----   中間目錄條 start ----- ----- ----- -->
		<nav aria-label="breadcrumb">
			<ol class="breadcrumb pl-0">
				<li class="breadcrumb-item"><a href="../../back-end/index/BackIndex.jsp"><i
						class="material-icons">home</i>首頁</a></li>
				<li class="breadcrumb-item">候位管理</li>
				<li class="breadcrumb-item active" aria-current="page"><a href="${pageContext.request.contextPath}/back-end/waiting/waiting_detail.jsp">查看候位</a></li>
			</ol>
		</nav>
		<!-- ----- ----- -----   中間目錄條 end ----- ----- ----- -->
		<!-- ----- ----- -----   中間下面內容 start ----- ----- ----- -->
		

		<div class="ms-content-wrapper">
		<button type="button" class="btn btn-danger" id="openBtn" onclick="openBtn">
    開啟候位系統
  </button>
		<button type="button" class="btn btn-danger" data-toggle="modal" data-target="#exampleModal">
    關閉候位系統
  </button>
 
			<div class="row">
			
				<div class="col-md-12">
					<div class="alert alert-success" role="hidden" style="display:none">
					</div>
				</div>
				
				<div class="col-xl-6 col-md-12">
					<div class="ms-panel ms-panel-fh">
						<div class="ms-panel-header">
							<h2>今日日期</h2>
						</div>
						<div class="ms-panel-body">
							<form class="needs-validation clearfix" novalidate>
								<div class="form-row">
									<h3>候位日期：</h3>
									<h3><span id="today"></span></h3>
								</div>
								<div class="form-row">
									<h3>候位時段：</h3>
									<h3><span id="timePeriod"></span></h3>
								</div>
									
									
							</form>
						</div>
					</div>
				</div>
				<div class="col-xl-6 col-md-12">
					<div class="row">
						<div class="col-md-12">
							<div class="ms-panel">
								<div class="ms-panel-header">
									<h2>候位管理</h2>
								</div>
								<div class="ms-panel-body">
								
									<div id="imagesSlider" class="ms-image-slider carousel slide" data-ride="carousel" >

										<div>
										<button type="button" class="btn btn-danger" id="getNextNOBtn" onclick="getNextNOBtn" disabled="disabled">下一號</button>
										<button type="button" class="btn btn-danger" id="doSeatedListBtn" onclick="doSeatedListBtn" disabled="disabled">入座</button>
										<button type="button" class="btn btn-danger" id="doOverListBtn" onclick="doOverListBtn" disabled="disabled">過號</button>
										</div>
										<br>
										<div style="border-color:#BEBEBE;border-style:solid;border-width:3px;padding:5px;">
										<div class="carousel-inner" >
										<h5>當前編號：</h5>
										<h5><span id="currentNO">0</span></h5>
										</div>
										<div class="carousel-inner" >
										<h5>下一號：</h5>
										<h5><span id="nextNO">0</span></h5>
										</div>

										<div class="carousel-inner" >
										<h5>剩餘組數：</h5>
										<h5><span id="remainNO">0</span></h5>
										</div>
										<div class="carousel-inner" >
										<h5>總組數：</h5>
										<h5><span id="totalNO">0</span></h5>
										<div class="carousel-inner">
										<h5>最近5組已入座號碼：</h5>
										<h5><span id="seatedList">0</span></h5>
										<div class="carousel-inner" >
										<h5>最近5組已過號號碼：</h5>
										<h5><span id="overList">0</span></h5>
										</div>
										
										</div>

									</div>
								</div>

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		  <!-- Modal -->
  <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">關閉候位系統</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          這將關閉候位系統，並將全部候位資料清空，您是否要繼續呢？
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">取消</button>
          <button type="button" class="btn btn-primary"  data-dismiss="modal" id="closeBtn" onclick="closeBtn" >確定</button>
        </div>
      </div>
    </div>
  </div>
		
		<!-- ----- ----- -----   中間下面內容 end ----- ----- ----- -->
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
	
	
		<script type="text/javascript">
		$(document).ready(function(){
			
	        $("#getNextNOBtn").click(function(){
	        	


	            $.ajax({


	                 url: "<%=request.getContextPath()%>/queuer/QueuerServlet.do",     

	                 data: {
	                	 action:  "doNextNO", 
	                 },

	                 success : function(res){
	                	 
	                		$("#getNextNOBtn").attr("disabled", true);
	        	    		$("#doSeatedListBtn").attr("disabled", false);
	        	    		$("#doOverListBtn").attr("disabled", false);

	                	 
	                	 showCurrentNO(res)
	                	 showNextNO(res)
	                	 
	                	 
	                 },

	                 error:function(xhr, ajaxOptions, thrownError){

	                     alert('尚未有人候位，先等等！');
	                 }

	             });

	        });
	    	 
	        $("#doSeatedListBtn").click(function(){
	        	
	    		$("#getNextNOBtn").attr("disabled", false);
	    		$("#doSeatedListBtn").attr("disabled", true);
	    		$("#doOverListBtn").attr("disabled", true);

	            $.ajax({


	                 url: "<%=request.getContextPath()%>/queuer/QueuerServlet.do",     

	                 data: {
	                	 action:  "doSeatedList", 
	                 },

	                 success : function(res){
	                	 doSeatedList(res)
	                 },

	                 error:function(xhr, ajaxOptions, thrownError){

	                     alert(xhr.status+"\n"+thrownError);
	                 }

	             });

	        });
	        
	        $("#doOverListBtn").click(function(){
	        	
	    		$("#getNextNOBtn").attr("disabled", false);
	    		$("#doSeatedListBtn").attr("disabled", true);
	    		$("#doOverListBtn").attr("disabled", true);

	            $.ajax({


	                 url: "<%=request.getContextPath()%>/queuer/QueuerServlet.do",     

	                 data: {
	                	 action:  "doOverList", 
	                 },

	                 success : function(res){
	                	 doOverList(res)
	                 },

	                 error:function(xhr, ajaxOptions, thrownError){

	                     alert(xhr.status+"\n"+thrownError);
	                 }

	             });

	        });
	        
	        $("#closeBtn").click(function(){
					localStorage.clear()	
	        		window.location.reload()
	        	
	            $.ajax({


	                 url: "<%=request.getContextPath()%>/queuer/QueuerServlet.do",     

	                 data: {
	                	 action:  "close", 
	                 },

	                 success : function(res){
	                	 console.log(JSON.parse(res));
	                 },

	                 error:function(xhr, ajaxOptions, thrownError){

	                     alert(xhr.status+"\n"+thrownError);
	                 }

	             });

	        });
	        
	        $("#openBtn").click(function(){
        	
	        	$("#getNextNOBtn").attr("disabled", false);
            $.ajax({


                 url: "<%=request.getContextPath()%>/queuer/QueuerServlet.do",     

                 data: {
                	 action:  "open", 
                 },

                 success : function(res){
                	 console.log(JSON.parse(res));
                 },

                 error:function(xhr, ajaxOptions, thrownError){

                     alert(xhr.status+"\n"+thrownError);
                 }

             });

        });

	     });  
	</script>
		<script type="text/javascript">
	Today = new Date();
	yy=Today.getFullYear();
	mm=Today.getMonth()+1;
	dd=Today.getDate();
	
	document.getElementById("today").innerHTML = yy+"/"+mm+"/"+dd;
	
	</script>
	
	<script type="text/javascript">
	Today = new Date();
	time = Today.getHours();
	
	if(time < 17){
		document.getElementById("timePeriod").innerHTML = "中午";
	}else{
		document.getElementById("timePeriod").innerHTML = "晚上";
	}
	</script>
	
	<script type="text/javascript">
	function showCurrentNO(res){
		localStorage.setItem('currentNO', JSON.parse(res).currentNO)
		document.getElementById("currentNO").innerHTML = localStorage.getItem('currentNO')
	}
	
	function showFirstCurrentNO(){
		document.getElementById("currentNO").innerHTML = localStorage.getItem('currentNO')
	}
	
	function showNextNO(res){
		localStorage.setItem('nextNO', JSON.parse(res).nextNO)
		document.getElementById("nextNO").innerHTML = localStorage.getItem('nextNO')
	}

	function showFirstNextNO(){
		document.getElementById("nextNO").innerHTML = localStorage.getItem('nextNO')
	}
	
	function doOverList(res){
		console.log(JSON.parse(res))
	}
	
	function doSeatedList(res){
		console.log(JSON.parse(res))
	}
	</script>
		
	<script type="text/javascript">
	
	function showTotalNO(){
		 $.ajax({


	          url: "<%=request.getContextPath()%>/queuer/QueuerServlet.do",     

	          data: {
	         	 action: "showTotalNO", 
	          },

	          success : function(res){
	         	 
			  document.getElementById("totalNO").innerHTML = JSON.parse(res).totalNO
	         	 
	          },
	         	 
	              
	          

	          error:function(xhr, ajaxOptions, thrownError){

	              alert(xhr.status+"\n"+thrownError);
	          }

	      });
	}
	  function showRemainNO(){

	      $.ajax({


	          url: "<%=request.getContextPath()%>/queuer/QueuerServlet.do",     

	          data: {
	         	 action: "showRemainNO", 
	          },

	          success : function(res){
	         	 
			  document.getElementById("remainNO").innerHTML = JSON.parse(res).remainNO
	          },
	         	 
	              
	          

	          error:function(xhr, ajaxOptions, thrownError){

	              alert(xhr.status+"\n"+thrownError);
	          }

	      });
		  
	  }
	  function showSeatedList(){

	      $.ajax({


	          url: "<%=request.getContextPath()%>/queuer/QueuerServlet.do",     

	          data: {
	         	 action: "showSeatedList", 
	          },

	          success : function(res){
			  document.getElementById("seatedList").innerHTML = JSON.parse(res).seatedList
	          },
	         	 
	              
	          

	          error:function(xhr, ajaxOptions, thrownError){

	              alert(xhr.status+"\n"+thrownError);
	          }

	      });
		  
	  }
	  
	  function showOverList(){

	      $.ajax({


	          url: "<%=request.getContextPath()%>/queuer/QueuerServlet.do",     

	          data: {
	         	 action: "showOverList", 
	          },

	          success : function(res){
	         	 
			  document.getElementById("overList").innerHTML = JSON.parse(res).overList
	          },
	         	 
	              
	          

	          error:function(xhr, ajaxOptions, thrownError){

	              alert(xhr.status+"\n"+thrownError);
	          }

	      });
		  
	  }
	  
	window.onload = function (){
		showFirstCurrentNO()
		showFirstNextNO()
		setInterval(showTotalNO, 1000);
		setInterval(showRemainNO, 1000);
		setInterval(showSeatedList, 1000);
		setInterval(showOverList, 1000);
	}
	
	</script>
	

	
	<!-- ----- ----- ----- Script End ----- ----- ----- -->
</body>

</html>