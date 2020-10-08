<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
	<head>
		<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	 	<title>게시판</title>
	</head>
	
	<script type="text/javascript">
		$(document).ready(function(){
			var formObj = $("form[name='readForm']");
			
			// 수정 
			$(".update_btn").on("click", function(){
				formObj.attr("action", "/board/updateView");
				formObj.attr("method", "get");
				formObj.submit();				
			})
			
			// 삭제
			$(".delete_btn").on("click", function(){
				var deleteYN = confirm("삭제하시겠습니까?");
				
				if(deleteYN == true){
					
				formObj.attr("action", "/board/delete");
				formObj.attr("method", "post");
				formObj.submit();
				}
			})
			
			// 목록
			$(".list_btn").on("click", function(){
			
			location.href = "/board/list?page=${scri.page}"
										+"&perPageNum=${scri.perPageNum}"
										+"&searchType=${scri.searchType}&keyword=${scri.keyword}";
			})
			
			//댓글 쓰기
			$(".replyWriteBtn").on("click", function(){
				  var formObj = $("form[name='replyForm']");
				  formObj.attr("action", "/board/replyWrite");
				  formObj.submit();
				});
			
			//댓글 수정 View
			$(".replyUpdateBtn").on("click", function(){
				location.href = "/board/replyUpdateView?boardNumber=${read.boardNumber}"
								+ "&page=${scri.page}"
								+ "&perPageNum=${scri.perPageNum}"
								+ "&searchType=${scri.searchType}"
								+ "&keyword=${scri.keyword}"
								+ "&boardReplyNumber="+$(this).attr("data-boardReplyNumber");
			});
					
			//댓글 삭제 View
			$(".replyDeleteBtn").on("click", function(){
				location.href = "/board/replyDeleteView?boardNumber=${read.boardNumber}"
					+ "&page=${scri.page}"
					+ "&perPageNum=${scri.perPageNum}"
					+ "&searchType=${scri.searchType}"
					+ "&keyword=${scri.keyword}"
					+ "&boardReplyNumber="+$(this).attr("data-boardReplyNumber");
			});
		})
	</script>
	
	<body>	
		<div class="container">
			<header id="header">
				<div id="header_box">
					<%@ include file= "../include/header.jsp" %>
				</div>
			</header>
						
			<hr />
			
			<section id="container">
				<form name="readForm" role="form" method="post">
				  <input type="hidden" id="boardNumber" name="boardNumber" value="${read.boardNumber}" />
				  <input type="hidden" id="page" name="page" value="${scri.page}"> 
				  <input type="hidden" id="perPageNum" name="perPageNum" value="${scri.perPageNum}"> 
				  <input type="hidden" id="searchType" name="searchType" value="${scri.searchType}"> 
				  <input type="hidden" id="keyword" name="keyword" value="${scri.keyword}"> 
				</form>
					<table>
						<tbody>	
							<tr>
								<td>
									<label for="boardTitle">제목</label>
									<input type="text" id="boardTitle" name="boardTitle" value="${read.boardTitle}" readonly="readonly"/>
								</td>
							</tr>	
							<tr>
								<td>
									<label for="boardContent">내용</label>
									<textarea id="boardContent" name="boardContent" readonly="readonly"><c:out value="${read.boardContent}" /></textarea>
								</td>
							</tr>
							<tr>
								<td>
									<label for="userId">작성자</label>
									<input type="text" id="userId" name="userId" value="${read.userId}" readonly="readonly" />
								</td>
							</tr>
							<tr>
								<td>
									<label for="boardRegidate">작성 날짜</label>
									<fmt:formatDate value="${read.boardRegidate}" pattern="yyyy-MM-dd"/>					
								</td>
							</tr>		
						</tbody>			
					</table>
					<div>
						<button type="submit" class="update_btn">수정</button>
						<button type="submit" class="delete_btn">삭제</button>
						<button type="submit" class="list_btn">목록</button>	
					</div>
					
		<!-- 댓글 -->
		<div id="reply">
			<ol class="replyList">
				<c:forEach items="${replyList}" var="replyList">
					 <li>
					    <p>
						작성자 : ${replyList.userId}<br />
						작성 날짜 : <fmt:formatDate value="${replyList.boardReplyRegidate}" pattern="yyyy-MM-dd" />
					    </p>
					
					   <p>${replyList.boardReplyContent}</p>
				<div>
					<button type="button" class="replyUpdateBtn" data-boardReplyNumber="${replyList.boardReplyNumber}">수정</button>
					<button type="button" class="replyDeleteBtn" data-boardReplyNumber="${replyList.boardReplyNumber}">삭제</button>
				</div>
					</li>
				</c:forEach>   
			 </ol>
		</div>
					
		<form name="replyForm" method="post">
			<input type="hidden" id="boardNumber" name="boardNumber" value="${read.boardNumber}" />
			<input type="hidden" id="page" name="page" value="${scri.page}"> 
			<input type="hidden" id="perPageNum" name="perPageNum" value="${scri.perPageNum}"> 
			<input type="hidden" id="searchType" name="searchType" value="${scri.searchType}"> 
			<input type="hidden" id="keyword" name="keyword" value="${scri.keyword}"> 
					
			<div>
				<label for="boardReplyContent">댓글 내용</label><input type="text" id="boardReplyContent" name="boardReplyContent" />
				<label for="userId">댓글 작성자</label><input type="text" id="userId" name="userId" />
				<button type="button" class="replyWriteBtn">작성</button>
			</div>
		</form>
		
		</section>
		<hr />
		</div>
	</body>
</html>