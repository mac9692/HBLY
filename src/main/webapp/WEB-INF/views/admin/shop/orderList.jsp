<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>   
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>     

<!DOCTYPE html>
<html>
	<head>

		<meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>HBLY | Admin</title>
        <link href="../../resources/sb/css/styles.css" rel="stylesheet" />
        <link href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css" rel="stylesheet" crossorigin="anonymous" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/js/all.min.js" crossorigin="anonymous"></script>
        <!-- jQuery -->
		<script src="http://code.jquery.com/jquery-latest.min.js"></script>
			<style type="text/css">
	.dauntable{
	width:100%;
	min-width: 1500px;
	}
	</style>
	</head>
	
	
<body class="sb-nav-fixed">
	<nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <a class="navbar-brand" href="/admin/goods/list">HBLY Admin</a> | <a class="navbar-brand" href="/">HBLY Main</a>
            <button class="btn btn-link btn-sm order-1 order-lg-0" id="sidebarToggle" href="#"><i class="fas fa-bars"></i></button>
           
        </nav>
			
		        <div id="layoutSidenav">
        
		<%@ include file= "../include/layoutSidenav.jsp"%>
		
	
			
        <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">
                        <h1 class="mt-4">주문 목록</h1>

                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table mr-1"></i>
                                                        주문 목록
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered table-striped dauntable" id="dataTable" width="100%" cellspacing="0">
                                        <thead class="thead-dark">
                                            <tr>
                                                <th>주문번호</th>
                                                <th>주문자</th>
                                                <th>수령인</th>
                                                <th>주소</th>
                                                <th>가격</th>
                                                <th>상태</th>
                                            </tr>
                                        </thead>
                                        <tfoot class="thead-dark">
                                            <tr>
                                                <th>주문번호</th>
                                                <th>주문자</th>
                                                <th>수령인</th>
                                                <th>주소</th>
                                                <th>가격</th>
                                                <th>상태</th>
                                            </tr>
                                        </tfoot>
                                        <tbody>
                                            <c:forEach items="${orderList}" var="orderList">
											<tr>
												<td>
													<a href="/admin/shop/orderView?n=${orderList.orderId}">${orderList.orderId}</a>
												</td>
												<td>
													${orderList.userId}
												</td>
												<td>
													${orderList.orderRec}
												</td>
												<td>
													(${orderList.userAddress1}) ${orderList.userAddress2} ${orderList.userAddress3}
												</td>
												<td>
												<fmt:formatNumber pattern="###,###,###" value="${orderList.amount}" /> 원
												</td>
												<td>
												${orderList.delivery}
												</td>
											</tr>
											</c:forEach>	
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
			<%@ include file="../include/footer.jsp" %>
            </div>
		
					
					

		</div>		
					
		

		
		
	 	<script src="https://code.jquery.com/jquery-3.5.1.min.js" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="../../resources/sb/js/scripts.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script src="../../resources/sb/assets/demo/chart-area-demo.js"></script>
        <script src="../../resources/sb/assets/demo/chart-bar-demo.js"></script>
        <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js" crossorigin="anonymous"></script>
        <script src="../../resources/sb/assets/demo/datatables-demo.js"></script>	
			
	<%-- 
			<section id="container">
				<aside>
					<%@ include file="../include/aside.jsp" %>
				</aside>
				<div id="container_box">
					<section id ="content">
						<ul class="orderList">
						 <c:forEach items="${orderList}" var="orderList">
						 <li>
						 <div>
						  <p><span>주문번호</span><a href="/admin/shop/orderView?n=${orderList.orderId}">${orderList.orderId}</a></p>
						  <p><span>주문자</span>${orderList.userId}</p>
						  <p><span>수령인</span>${orderList.orderRec}</p>
						  <p><span>주소</span>(${orderList.userAddress1}) ${orderList.userAddress2} ${orderList.userAddress3}</p>
						  <p><span>가격</span><fmt:formatNumber pattern="###,###,###" value="${orderList.amount}" /> 원</p> 
						  <p><span>상태</span>${orderList.delivery}</p>
						 </div>
						 </li>
						 </c:forEach>
						</ul>
					</section>
				</div>
			</section> --%>
		
		
		
		
	</body>
</html>