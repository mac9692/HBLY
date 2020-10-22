<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>   
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
 
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>HBLY | Admin</title>
        <link href="/resources/sb/css/styles.css" rel="stylesheet" />
        <link href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css" rel="stylesheet" crossorigin="anonymous" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/js/all.min.js" crossorigin="anonymous"></script>
        
        <script src="/resources/ckeditor/ckeditor.js"></script>
        <script src="http://code.jquery.com/jquery-latest.min.js"></script>

	</head>
	
	
	<body class="sb-nav-fixed">
	<nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <a class="navbar-brand" href="/index">HBLY Admin</a> | <a class="navbar-brand" href="/">HBLY Main</a>
            <button class="btn btn-link btn-sm order-1 order-lg-0" id="sidebarToggle" href="#"><i class="fas fa-bars"></i></button>
            <!-- Navbar Search-->
            <form class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
                <div class="input-group">
                    <input class="form-control" type="text" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2" />
                    <div class="input-group-append">
                        <button class="btn btn-primary" type="button"><i class="fas fa-search"></i></button>
                    </div>
                </div>
            </form>
            <!-- Navbar-->
            <ul class="navbar-nav ml-auto ml-md-0">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="userDropdown" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
                        <a class="dropdown-item" href="#">Settings</a>
                        <a class="dropdown-item" href="#">Activity Log</a>
                        <div class="dropdown-divider"></div>
                        <sec:authorize access="isAuthenticated()">
						<form action="/logout" method="POST">
                        <a class="dropdown-item" href="login.html">Logout</a>
                         </form>
    					</sec:authorize> 
                    </div>
                </li>
            </ul>
        </nav>
        <div id="layoutSidenav">
        
		<%@ include file= "../include/layoutSidenav.jsp"%>
		
        <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">
                        <h1 class="mt-4">상품 등록</h1>

                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table mr-1"></i>
                                                        상품 등록
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                <form role="form" method="post" autocomplete="off" enctype="multipart/form-data">
                                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                        <tbody>
											<tr>
												<td>
													<label>1차 분류</label>
												</td>
												<td>
													<select class="category1 form-control">
													  <option value="">전체</option>
													</select>
												</td>
												<td>
												<label>2차 분류</label>
												</td>
												<td>
												<select class="category2 form-control" name="categoryCode">
												  <option value="">전체</option>
												 </select>
												</td>
												
											</tr>
											<tr>
												<td>
												<label for="goodsName">상품명</label>
												</td>
												<td colspan="3">
												<input class="form-control" type="text" id="goodsName" name="goodsName" />
												</td>
											</tr>
											<tr>
												<td>
												<label for="goodsPrice">상품가격</label>
												</td>
												<td colspan="3">
												 <input class="form-control" type="text" id="goodsPrice" name="goodsPrice" />
												</td>
											</tr>
											<tr>
												<td>
												<label for="goodsStock">상품수량</label>
												</td>
												<td colspan="3">
												<input class="form-control" type="text" id="goodsStock" name="goodsStock" />
												</td>
											</tr>
											<tr>
												<td>
												<label for="goodsDescribe">상품소개</label>
												</td>
												<td colspan="3">
												<textarea class="form-control" rows="5" cols="50" id="goodsDescribe" name="goodsDescribe"></textarea>
												 <script>
													 var ckeditor_config = {
														   resize_enaleb : false,
														   enterMode : CKEDITOR.ENTER_BR,
														   shiftEnterMode : CKEDITOR.ENTER_P,
														   filebrowserUploadUrl : "/admin/goods/ckUpload"
													 };
													 
													 CKEDITOR.replace("goodsDescribe", ckeditor_config);
												  </script>
												</td>
											</tr>
											<tr>
												<td rowspan="2">
												<label for="goodsImage">이미지</label>
												</td>
												<td colspan="3">
												<input class="form-control-file border" type="file" id="goodsImage" name="file" />
												</td>
											</tr>
											<tr>
												<td colspan="3">
												<div class="select_img"><img src="" /></div>
												<!-- 등록 화면에서 이미지 선택하면 화면에 띄우는 스크립트  -->		 
												<script>
												$("#goodsImage").change(function(){
													if(this.files && this.files[0]) {
													var reader = new FileReader;
													reader.onload = function(data) {
													$(".select_img img").attr("src", data.target.result).width(500);        
														}
													reader.readAsDataURL(this.files[0]);
													}
												});
												
												</script>
												</td>
											</tr>
											<tr>
												<td colspan="4">
												<%= request.getRealPath("/") %>
												</td>
											</tr>
                                        </tbody>
                                    </table>
                                    <div class="float-right">
                                     <button type="submit" id="register_Btn" class="btn btn-primary">등록</button>
                                     </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
			<%@ include file="../include/footer.jsp" %>
            </div>
		
					
					

		</div>		
        		
				<%-- <div id="container_box">
					<h2>상품 등록</h2>
					<form role="form" method="post" autocomplete="off" enctype="multipart/form-data">
 
						 <label>1차 분류</label>
						 <select class="category1">
						  <option value="">전체</option>
						 </select>
						 
						 <label>2차 분류</label>
						 <select class="category2" name="categoryCode">
						  <option value="">전체</option>
						 </select>
						 
						 
						 
						<div class="inputArea">
						 <label for="goodsName">상품명</label>
						 <input type="text" id="goodsName" name="goodsName" />
						</div>
						
						<div class="inputArea">
						 <label for="goodsPrice">상품가격</label>
						 <input type="text" id="goodsPrice" name="goodsPrice" />
						</div>
						
						<div class="inputArea">
						 <label for="goodsStock">상품수량</label>
						 <input type="text" id="goodsStock" name="goodsStock" />
						</div>
						
						<div class="inputArea">
						 <label for="goodsDescribe">상품소개</label>
						 <textarea rows="5" cols="50" id="goodsDescribe" name="goodsDescribe"></textarea>
						 
						 <script>
							 var ckeditor_config = {
								   resize_enaleb : false,
								   enterMode : CKEDITOR.ENTER_BR,
								   shiftEnterMode : CKEDITOR.ENTER_P,
								   filebrowserUploadUrl : "/admin/goods/ckUpload"
							 };
							 
							 CKEDITOR.replace("goodsDescribe", ckeditor_config);
						  </script>
						 
						 
						</div>
						
						<div class="inputArea">
						<label for="goodsImage">이미지</label>
						<input type="file" id="goodsImage" name="file" />
						<div class="select_img"><img src="" /></div>
						
						<!-- 등록 화면에서 이미지 선택하면 화면에 띄우는 스크립트  -->		 
						<script>
						$("#goodsImage").change(function(){
							if(this.files && this.files[0]) {
							var reader = new FileReader;
							reader.onload = function(data) {
							$(".select_img img").attr("src", data.target.result).width(500);        
								}
							reader.readAsDataURL(this.files[0]);
							}
						});
						
						</script>
						<%= request.getRealPath("/") %>
						
						</div>
						
				
						
						<div class="inputArea">
						 <button type="submit" id="register_Btn" class="btn btn-primary">등록</button>
						</div>
						
						
						
					</form>
				</div> --%>
		
			
			
			
			
			
			
			
			
			
		
		
		<script>
			// 컨트롤러에서 데이터 받기
			var jsonData = JSON.parse('${category}');
			console.log(jsonData);
			
			var cate1Arr = new Array();
			var cate1Obj = new Object();
			
			// 1차 분류 셀렉트 박스에 삽입할 데이터 준비
			for(var i = 0; i < jsonData.length; i++) {
			 
			 if(jsonData[i].level == "1") {
			  cate1Obj = new Object();  //초기화
			  cate1Obj.categoryCode = jsonData[i].categoryCode;
			  cate1Obj.categoryName = jsonData[i].categoryName;
			  cate1Arr.push(cate1Obj);
			 }
			}
			
			// 1차 분류 셀렉트 박스에 데이터 삽입
			var cate1Select = $("select.category1")
			
			for(var i = 0; i < cate1Arr.length; i++) {
			 cate1Select.append("<option value='" + cate1Arr[i].categoryCode + "'>"
			      + cate1Arr[i].categoryName + "</option>"); 
			}
			
			
			
			
			
			//2차 분류
			$(document).on("change", "select.category1", function(){

				 var cate2Arr = new Array();
				 var cate2Obj = new Object();
				 
				 // 2차 분류 셀렉트 박스에 삽입할 데이터 준비
				 for(var i = 0; i < jsonData.length; i++) {
				  
				  if(jsonData[i].level == "2") {
				   cate2Obj = new Object();  //초기화
				   cate2Obj.categoryCode = jsonData[i].categoryCode;
				   cate2Obj.categoryName = jsonData[i].categoryName;
				   cate2Obj.categoryCodeRef = jsonData[i].categoryCodeRef;
				   
				   cate2Arr.push(cate2Obj);
				  }
				 }
				 
				 var cate2Select = $("select.category2");
				 
				 /*
				 for(var i = 0; i < cate2Arr.length; i++) {
				   cate2Select.append("<option value='" + cate2Arr[i].cateCode + "'>"
				        + cate2Arr[i].cateName + "</option>");
				 }
				 */
				 
				 cate2Select.children().remove();

				 $("option:selected", this).each(function(){
				  
				  var selectVal = $(this).val(); 
				  
				  cate2Select.append("<option value='" + selectVal + "'>전체</option>");
				  
				  for(var i = 0; i < cate2Arr.length; i++) {
				   if(selectVal == cate2Arr[i].categoryCodeRef) {
				    cate2Select.append("<option value='" + cate2Arr[i].categoryCode + "'>"
				         + cate2Arr[i].categoryName + "</option>");
				   }
				  }
				  
				 });
				 
				});
			
		</script>
		<script>
		var regExp = /[^0-9]/gi;
		
		$("#goodsPrice").keyup(function(){ numCheck($(this)); });
		$("#goodsStock").keyup(function(){ numCheck($(this)); });
		
		function numCheck(selector) {
		 var tempVal = selector.val();
		 selector.val(tempVal.replace(regExp, ""));
		}
		</script>
		
		
		<script src="https://code.jquery.com/jquery-3.5.1.min.js" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="/resources/sb/js/scripts.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script src="/resources/sb/assets/demo/chart-area-demo.js"></script>
        <script src="/resources/sb/assets/demo/chart-bar-demo.js"></script>
        <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js" crossorigin="anonymous"></script>
        <script src="/resources/sb/assets/demo/datatables-demo.js"></script>	
	</body>
</html>