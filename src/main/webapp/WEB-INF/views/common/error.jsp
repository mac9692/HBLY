<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Error Page</title>
        <link href="/resources/sb/css/styles.css" rel="stylesheet" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/js/all.min.js" crossorigin="anonymous"></script>
        
        <style>
        	#layoutError h1{
        	font-size:25px;
        	}
        </style>
        
</head>
<body> 
	
	<div id="layoutError">
            <div id="layoutError_content">
                <main>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-6">
                                <div class="text-center mt-4">
                                 <c:if test="${requestScope['javax.servlet.error.status_code'] == 400}">
        							<h1 class="display-1">잘못된 요청입니다.</h1>
    							 </c:if>
    							  <c:if test="${requestScope['javax.servlet.error.status_code'] == 403}">
        							<h1 class="display-1">접근이 금지되었습니다.</h1>
    							 </c:if>
    							  <c:if test="${requestScope['javax.servlet.error.status_code'] == 404}">
        							<h1 class="display-1">요청하신 페이지는 존재하지 않습니다.</h1>
    							 </c:if>
    							  <c:if test="${requestScope['javax.servlet.error.status_code'] == 405}">
        							<h1 class="display-1">요청된 메소드가 허용되지 않습니다.</h1>
    							 </c:if>
    							  <c:if test="${requestScope['javax.servlet.error.status_code'] == 500}">
        							<h1 class="display-1">서버에 오류가 발생하였습니다.</h1>
    							 </c:if>
    							  <c:if test="${requestScope['javax.servlet.error.status_code'] == 503}">
        							<h1 class="display-1">서비스를 사용할 수 없습니다.</h1>
        						</c:if>
    							  <c:if test="${requestScope['javax.servlet.error.status_code'] == throwable}">
        							<h1 class="display-1">예외가 발생했습니다.</h1>
    							 </c:if>
    							  <c:if test="${requestScope['javax.servlet.error.status_code'] == exception}">
        							<h1 class="display-1">예외가 발생했습니다.</h1>
    							 </c:if>
                                    <p class="lead">Unauthorized</p>
                                    <p>Access to this resource is denied.</p>
                                    <a href="#" OnClick="javascript:history.back(-1)">
                                        <i class="fas fa-arrow-left mr-1" ></i>
                                        	돌아가기
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
            </div>
            <div id="layoutError_footer">
                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted">Copyright &copy; Your Website 2020</div>
                            <div>
                                <a href="#">Privacy Policy</a>
                                &middot;
                                <a href="#">Terms &amp; Conditions</a>
                            </div>
                        </div>
                    </div>
                </footer>
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.5.1.min.js" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="/resources/sb/js/scripts.js"></script>
</body>
</html>