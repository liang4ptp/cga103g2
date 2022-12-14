<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%@ page import="com.meals.model.*"%>
<%@ page import="com.meals.controller.MealsServlet"%>
<%@ page import="com.mealscateory.model.*"%>
<%@ page import="com.botqa.model.*"%>
<%@ page import="com.botqa.controller.BotqaServlet"%>

<%
	BotqaService botqaSvc = new BotqaService();
	List<BotqaVO> list4 = botqaSvc.getAll();
	pageContext.setAttribute("list4",list4);


	MealsCategoryService mealsCategorySvc = new MealsCategoryService();
	List<MealsCategoryVO> list1 = mealsCategorySvc.getAll();
	pageContext.setAttribute("list1",list1);
	
	MealsService mealsSvc = new MealsService();
	List<MealsVO> list = mealsSvc.getAll();
	pageContext.setAttribute("list",list);
	
%>


<!doctype html>
<html lang="zh-tw">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<meta name="description" content="">
<meta name="author" content="">

<title>義鄉人 - 義式餐酒館 - 訂單 - 緯育 中壢Java班 CGA_103 第二組</title>

<!-- ----- ----- ----- CSS&Front設定 start ----- ----- ----- -->


<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.0/css/all.min.css'>
<link  href="../botqa/style.css" rel="stylesheet">
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js'></script>
<script src="../botqa/botqa.js"></script>


<link rel="preconnect" href="https://fonts.googleapis.com">

<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

<link
	href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;600;700&display=swap"
	rel="stylesheet">

<link href="../../front-assets/css/navbar.css" rel="stylesheet">

<link href="../../front-assets/bootstrap_css/bootstrap.min.css"
	rel="stylesheet">

<link href="../../front-assets/bootstrap_css/bootstrap-icons.css"
	rel="stylesheet">

<link href="../../front-assets/css/tooplate-crispy-kitchen.css"
	rel="stylesheet">

<link href="../../front-assets/css/menuButton.css" rel="stylesheet">
<!-- <link href="../../front-assets/css/navbar.css" rel="stylesheet"> -->

<!-- <link href="../../front-assets/css/shoppingcart/ShoppingCart.css" rel="stylesheet"> -->
<!-- ----- ----- ----- CSS&Front設定 end ----- ----- ----- -->

<style>
.show-cart li {
	display: flex;
}

.card {
	margin-bottom: 20px;
}

.card-img-top {
	width: 200px;
	height: 200px;
	align-self: center;
}

.Info {
	float: right;
	color: #fff;
	background-color: #0d6efd;
	padding: 0.375rem 0.75rem;
	border-radius: 0.25rem;
	border: 1px solid transparent;
}
.nav-tabs {
    border-bottom: 0;
}
.pt-4 {
    padding-top: 1.5rem !important;
    padding-bottom: 1.5rem;
    display: flex;
    align-content: center;
    justify-content: flex-start;
/*      align-items: center;  */
}
.shop{
/*    position: absolute;   */
}

</style>
</head>

<body>

	<!-- ----- ----- ----- 最上面 選擇列 start ----- ----- ----- -->
	<%@ include file="../../front-end/tool/UpSideBarNoRSVT.file"%>
	<!-- ----- ----- ----- 最上面 選擇列 end ----- ----- ----- -->

	<!-- ----- ----- ----- 中間 start ----- ----- ----- -->
	<main>
		<%@ include file="../../back-end/tool/page3.file"%>
		<!-- ----- ----- ----- 中間上面 start ----- ----- ----- -->
		<header> </header>

		<!-- 		<button id="demo8">Demo 8</button> -->
		<!-- Food Widget -->
		<!-- 		col-xl-6 col-md-12 -->
		
		<div class="shop">
			<div class="ms-panel ms-widget ms-crypto-widget">
				<div class="ms-panel-header">
					<h6>美味餐點</h6>
					<p>選擇你想吃的食物</p>
				</div>
		<jsp:include page="../botqa/botqaIndex3.jsp"></jsp:include><!-- 第二種 -->
				
				<div class="ms-panel-body p-0">
					<ul class="nav nav-tabs nav-justified has-gap px-4 pt-4"
						role="tablist">
						<li role="presentation" class="fs-12"><a href="#btc"
							aria-controls="btc" class="active show" role="tab"
							data-toggle="tab">前菜 </a></li>
					<c:forEach var="MealsCategoryVO" items="${list1}"
											begin="<%=pageIndex +1%>" end="<%=pageIndex+rowsPerPage-1%>">
<%-- 										<h4 class="card-title">${MealsCategoryVO.mealsCategoryId}</h4>	 --%>
<%-- 										<h4 class="card-title">${MealsCategoryVO.mealsCategory}</h4> --%>
										<li role="presentation" class="fs-12"><a href="#${MealsCategoryVO.mealsCategory}"
							aria-controls="${MealsCategoryVO.mealsCategory}" role="tab" data-toggle="tab">${MealsCategoryVO.mealsCategory}</a></li>
					</c:forEach>
					</ul>
					<div class="tab-content">
						<!--                             --------------沙拉------------------- -->
						<div role="tabpanel" class="tab-pane active show fade in" id="btc">

							<div class="table-responsive">
								<div class="container">
									<div class="row">
										<c:forEach var="MealsVO" items="${list}"
											begin="<%=pageIndex%>" end="<%=pageIndex+rowsPerPage-1%>">
											<c:if test="${MealsVO.mealsCategoryID ==1}">
												<div class="col">
													<div class="card" style="width: 20rem;">
														<img class="card-img-top" alt="Card image cap"
															src="<%=request.getContextPath()%>/meals/DBGifReader?mealsID=${MealsVO.mealsID}"
															width="100px">
														<div class="card-block">
															<h4 class="card-title">${MealsVO.mealsName}</h4>
															<p class="card-text">價錢:${MealsVO.mealsPrice}</p>
															
															<a 
																data-id="${MealsVO.mealsID}" 
																data-name="${MealsVO.mealsName}"
																data-price="${MealsVO.mealsPrice}"
																data-info="${MealsVO.mealsInfo}" class="Info">查看詳情</a>
															<a href="#"
																data-id="${MealsVO.mealsID}" 
																data-name="${MealsVO.mealsName}"
																data-price="${MealsVO.mealsPrice}"
																class="add-to-cart btn btn-primary">加入購物車</a>
														</div>
													</div>
												</div>
											</c:if>
										</c:forEach>
									</div>
								</div>
							</div>
						</div>
						<!--                             --------------前菜------------------- -->
						
						
<!-- 						-----------測試------>
						<c:forEach var="MealsCategoryVO" items="${list1}"
											begin="<%=pageIndex +1%>" end="<%=pageIndex+rowsPerPage-1%>">
										<div role="tabpanel" class="tab-pane fade" id="${MealsCategoryVO.mealsCategory}">

							<div class="table-responsive">
								<div class="container">
									<div class="row">
										<c:forEach var="MealsVO" items="${list}"
											begin="<%=pageIndex%>" end="<%=pageIndex+rowsPerPage-1%>">
											<c:if test="${MealsVO.mealsCategoryID  ==  MealsCategoryVO.mealsCategoryId}">
												<c:if test="${MealsVO.mealsControl==1}">
													<div class="col">
														<div class="card" style="width: 20rem;">
															<img class="card-img-top" alt="Card image cap"
																src="<%=request.getContextPath()%>/meals/DBGifReader?mealsID=${MealsVO.mealsID}"
																width="100px">
																<div class="card-block">
															<h4 class="card-title">${MealsVO.mealsName}</h4>
															<p class="card-text">${MealsVO.mealsPrice}</p>
															<a  data-id="${MealsVO.mealsID}" 
																data-name="${MealsVO.mealsName}"
																data-price="${MealsVO.mealsPrice}"
																data-info="${MealsVO.mealsInfo}" class="Info">查看詳情</a>
															<a href="#" 
															data-id="${MealsVO.mealsID}" 
															data-name="${MealsVO.mealsName}"
																data-price="${MealsVO.mealsPrice}"
																class="add-to-cart btn btn-primary">加入購物車</a>
														</div>
													</div>
												</div>
											</c:if>
											</c:if>
										</c:forEach>
									</div>
								</div>

							</div>
						</div>
					
											
						</c:forEach>
						
						


						
					
					</div>
				</div>
			</div>
		</div>


		<!-- ----- ----- ----- 中間上面 end ----- ----- ----- -->

		<!-- ----- ----- ----- 中間內容 start ----- ----- ----- -->

		<section class="about section-padding bg-white">
			<!-- Nav -->
			<!-- 			<nav class="navbar bg-inverse bg-faded "> -->
			<!-- 				<div class="row"> -->
			<!-- 					<div class="col"> -->
			<!-- 						<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#cart"> -->
			<!-- 							Cart (<span class="total-count"></span>) -->
			<!-- 						</button> -->
			<!-- 						<button class="clear-cart btn btn-danger">Clear Cart</button> -->
			<!-- 					</div> -->
			<!-- 				</div> -->
			<!-- 			</nav> -->


			<!-- Main -->

			<!-- Modal -->
			<div class="modal-fade" id="cart" tabindex="-1" role="dialog"
				aria-labelledby="exampleModalLabel" aria-hidden="true">
				<!-- 						<div class="modal-dialog modal-dialog-centered modal-xl"> -->
				<div class="modal-dialog modal-lg" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="exampleModalLabel">購物車</h5>
							<!-- 							<button type="button" class="close" data-dismiss="modal" aria-label="Close"> -->
							<!-- 								<span aria-hidden="true">&times;</span> -->
							<!-- 							</button> -->
						</div>
						<div class="modal-body">
							<table class="show-cart table">

							</table>
							<div>
								總金額: $<span class="total-cart"></span>
							</div>
						</div>
						<div class="modal-footer">
							<!-- 							<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button> -->
							<button type="button" class="btn btn-primary"
								onclick="window.location.href='../../front-end/shopcart/ShopCart.jsp'">確認購物車</button>
						</div>
					</div>
				</div>
			</div>
			<hr>
		</section>
		<!-- ----- ----- ----- 中間內容 end ----- ----- ----- -->
	</main>
	<!-- ----- ----- ----- 中間 end ----- ----- ----- -->

	<!-- ----- ----- ----- 底部 start ----- ----- ----- -->
	<footer class="site-footer section-padding">

		<div class="container">

			<div class="row">

				<div class="col-12">
					<h4 class="text-white mb-4 me-5">義式餐酒館</h4>
				</div>

				<div class="col-lg-4 col-md-7 col-xs-12 tooplate-mt30">
					<h6 class="text-white mb-lg-4 mb-3">Location</h6>

					<p>緯育 中壢Java班 CGA_103 第二組</p>

					<a href="https://goo.gl/maps/wcmDpTGaAHn3eWPd7"
						class="custom-btn btn btn-dark mt-2">Directions</a>
				</div>

				<div class="col-lg-4 col-md-5 col-xs-12 tooplate-mt30">
					<h6 class="text-white mb-lg-4 mb-3">Opening Hours</h6>

					<p class="mb-2">Monday - Friday</p>

					<p>17:00 PM - 03:00 AM</p>

					<p>
						Tel: <a href="tel: 03-425-1108" class="tel-link">03-425-1108</a>
					</p>
				</div>

				<div class="col-lg-4 col-md-6 col-xs-12 tooplate-mt30">
					<h6 class="text-white mb-lg-4 mb-3">社群</h6>

					<ul class="social-icon">
						<li><a href="#" class="social-icon-link bi-facebook"></a></li>

						<li><a href="#" class="social-icon-link bi-instagram"></a></li>

						<li><a
							href="https://twitter.com/search?q=tooplate.com&src=typed_query&f=live"
							target="_blank" class="social-icon-link bi-twitter"></a></li>

						<li><a href="#" class="social-icon-link bi-youtube"></a></li>
					</ul>

					<p class="copyright-text tooplate-mt60">
						Copyright © 2022 中壢Java班 CGA_103 緯育 第二組 Co., Ltd. <br>Design:
						<a rel="nofollow" href="" target="_blank">2022 中壢Java班 CGA_103
							緯育 第二組</a>
					</p>

				</div>

			</div>
			<!-- row ending -->

		</div>
		<!-- container ending -->

	</footer>
	<!-- ----- ----- ----- 底部 end ----- ----- ----- -->

	<!-- ----- ----- ----- 跳出預先訂位頁面 start ----- ----- ----- -->
	
	<!-- ----- ----- ----- 跳出預先訂位頁面 end ----- ----- ----- -->

	<!-- ----- ----- ----- Script Start ----- ----- ----- -->
	<script src="../../front-assets/js/jquery.min.js"></script>
	<script src="../../front-assets/bootstrap_js/bootstrap.bundle.min.js"></script>
	<script src="../../front-assets/js/custom.js"></script>

	<script src="../../front-assets/js/shoppingcart/bootstrap.min.js"></script>
	<script src="../../front-assets/js/shoppingcart/ShoppingCart.js"></script>
	<script src="../../front-assets/js/shoppingcart/test.js"></script>

	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
	<!-- ----- ----- ----- Script End ----- ----- ----- -->
	<script>
				$('.Info').click(function(event) {
					event.preventDefault();
					var name = $(this).data('name');
					var price = Number($(this).data('price'));
			        var info = ($(this).data('info'));
			        var id = ($(this).data('id'));
					console.log(name);
					console.log(info);
					swal.fire({
					 title: name,
		                html: "價錢:" + price + "<p></p>" + info ,
		                text: 'Modal with a custom image.',
		                imageUrl: '/CGA103G2//meals/DBGifReader?mealsID='+id,
		                imageWidth: 400,
		                imageHeight: 200,
		                imageAlt: 'Custom image',
		                showCancelButton: true,
		                confirmButtonColor: '#3085d6',
		                cancelButtonColor: '#d33',
		                cancelButtonText: '取消',
		                confirmButtonText: '加入購物車!'
		            }).then((result) => {
		                if (result.isConfirmed) {
		                    Swal.fire(
		                    	'success',
		                        '成功加入購物車',
		                        'success'
		                    )
		                    shoppingCart.addItemToCart(name, price, 1,id);
		                	displayCart();
		                }
		            })
					
				});
		

      
            </script>
</body>

</html>