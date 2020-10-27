<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>HBLY | Admin</title>
<link href="/resources/sb/css/styles.css" rel="stylesheet" />
<link
	href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css"
	rel="stylesheet" crossorigin="anonymous" />
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/js/all.min.js"
	crossorigin="anonymous"></script>
</head>


<body class="sb-nav-fixed">
	<nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
		<a class="navbar-brand" href="/admin/goods/list">HBLY Admin</a> | <a
			class="navbar-brand" href="/">HBLY Main</a>
		<button class="btn btn-link btn-sm order-1 order-lg-0"
			id="sidebarToggle" href="#">
			<i class="fas fa-bars"></i>
		</button>
	</nav>
	<div id="layoutSidenav">

		<%@ include file="../include/layoutSidenav.jsp"%>

		<div id="layoutSidenav_content">
			<main>
				<div class="container-fluid">
					<h1 class="mt-4">상품소감</h1>


					<div class="card mb-4">
						<div class="card-header">
							<i class="fas fa-table mr-1"></i>상품소감
						</div>
						<div class="card-body">



							<c:forEach items="${goodsReply}" var="goodsReply">
								<div class="row">
									<div class="col-xl-12 col-md-12 replyInfo">
										<div class="card bg-light mb-4">
											<div class="card-body">${goodsReply.userNickname}(${goodsReply.userId})
												<div class="replyContent">
													${goodsReply.goodsReplyContent}</div>
											</div>
											<div
												class="card-footer d-flex align-items-center justify-content-between">
												<span>작성된 상품 <a class=" stretched-link"
													href="/shop/view?n=${goodsReply.goodsNumber}"> 바로가기</a></span>
												<div>
													<svg class="svg-inline--fa fa-angle-right fa-w-8"
														aria-hidden="true" focusable="false" data-prefix="fas"
														data-icon="angle-right" role="img"
														xmlns="http://www.w3.org/2000/svg" viewBox="0 0 256 512"
														data-fa-i2svg="">
														<path fill="currentColor"
															d="M224.3 273l-136 136c-9.4 9.4-24.6 9.4-33.9 0l-22.6-22.6c-9.4-9.4-9.4-24.6 0-33.9l96.4-96.4-96.4-96.4c-9.4-9.4-9.4-24.6 0-33.9L54.3 103c9.4-9.4 24.6-9.4 33.9 0l136 136c9.5 9.4 9.5 24.6.1 34z"></path></svg>
													<!-- <i class="fas fa-angle-right"></i> -->
												</div>
											</div>


										</div>
										<div class="replyDelete float-right mb-4">
											<form role="form" method="post">
												<input type="hidden" name="goodsReplyNumber"
													value="${goodsReply.goodsReplyNumber}" />
												<button type="submit"
													class="delete_${goodsReply.goodsReplyNumber}_btn btn btn-primary">삭제</button>
											</form>

										</div>
									</div>
								</div>
								<hr />
							</c:forEach>

						</div>
					</div>
				</div>
			</main>
			<%@ include file="../include/footer.jsp"%>
		</div>

	</div>


	<script src="https://code.jquery.com/jquery-3.5.1.min.js"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.bundle.min.js"
		crossorigin="anonymous"></script>
	<script src="/resources/sb/js/scripts.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"
		crossorigin="anonymous"></script>
	<script src="/resources/sb/assets/demo/chart-area-demo.js"></script>
	<script src="/resources/sb/assets/demo/chart-bar-demo.js"></script>
	<script
		src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js"
		crossorigin="anonymous"></script>
	<script src="/resources/sb/assets/demo/datatables-demo.js"></script>
</body>
</html>