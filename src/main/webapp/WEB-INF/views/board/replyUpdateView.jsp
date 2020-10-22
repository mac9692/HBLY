<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<html>
	<head>
	 	<title>게시판</title>
	</head>
	<script type="text/javascript">
		$(document).ready(function(){
			var formObj = $("form[name='updateForm']");
			
			$(".cancel_btn").on("click", function(){
				location.href = "/board/readView?boardNumber=${replyUpdate.boardNumber}"
					   + "&page=${scri.page}"
					   + "&perPageNum=${scri.perPageNum}"
					   + "&searchType=${scri.searchType}"
					   + "&keyword=${scri.keyword}";
			});
			
			$(".update_btn").on("click", function() {
				var formObj = $("form[name='updateForm']");
				  formObj.attr("action", "/board/replyUpdate");
				  formObj.submit();
			});
			
		})
		
	</script>
	<body>
	<sec:authentication var="principal" property="principal"/>
		<div id="root">

			<section id="container">
				<form name="updateForm" role="form" method="post">
					<input type="hidden" name="boardNumber" value="${update.boardNumber}" readonly="readonly"/>
					<input type="hidden" id="boardReplyNumber" name="boardReplyNumber" value="${update.boardReplyNumber}" />
					<input type="hidden" id="page" name="page" value="${scri.page}"> 
					<input type="hidden" id="perPageNum" name="perPageNum" value="${scri.perPageNum}"> 
					<input type="hidden" id="searchType" name="searchType" value="${scri.searchType}"> 
					<input type="hidden" id="keyword" name="keyword" value="${scri.keyword}"> 
					<table>
						<tbody>
							<tr>
								<td>
									<label for="boardReplyContent">댓글 내용</label>
									<input type="text" id="boardReplyContent" name="boardReplyContent" value="${update.boardReplyContent}"/>
									
									<label for="boardReplyUserId">댓글 작성자</label>
									<input type="text" id="boardReplyUserId" name="userId" value="${principal.member.userId}"/>
								</td>
							</tr>	
							
						</tbody>			
					</table>
					<div>
						<button type="submit" class="update_btn">저장</button>
						<button type="button" class="cancel_btn">취소</button>
					</div>
				</form>
			</section>
			<hr />
		</div>
	</body>
</html>