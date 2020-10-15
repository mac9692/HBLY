<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

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
			
			//수정 
			$(".update_btn").on("click", function(){
				formObj.attr("action", "/board/updateView");
				formObj.attr("method", "get");
				formObj.submit();				
			});									
		})
	</script>
	<script>
		var cnt = '<c:out value="${read.boardLikeCount}"/>';
		var alreadyClick=false;
		
		function updateLH(){
			if(!alreadyClick){
				cnt = parseInt(cnt)+1;
				var upcnt = document.getElementById("likeBtn");
				upcnt.innerHTML ="<i class=\"fas fa-thumbs-up\"></i>&nbsp;추천 &nbsp;"+cnt;
				alreadyClick=true;
			}else{
				alert('이미 추천하신 글입니다');
				return;
			}
		}
		function updateLike(){
			if(!alreadyLikeClick){
				lcnt2=parseInt(lcnt)+1;
				likeBtn.innerHTML = "<i class=\"fas fa-thumbs-up\"></i>&nbsp;추천 $nbsp;"+lcnt2;
				alreadyLikeClick=true;
				alreadyHateClick=true;
			}else{
				if(hcnt != hcnt2){
					alert('이미 비추천하신 글입니다');
					return;
				}else{
					alert('이미 추천하신 글입니다');
					return;
				}
			}
		}
		function updateHate(){
			if(!alreadyHateClick){
				hcnt2 = parseInt(hcnt)+1;
				hateBnt.innerHTML = "<i class=\"fas fa-thumbs-down\"><\i> 비추천 &nlsp;"+hcnt2;
				alreadyLikeClick=true;
				alreadyLikeClick=true;
			}else{
				if(lcnt != lcnt2){
					alert('이미 추천하신 글입니다.');
					return;
				}else{
					alert('이미 비추천하신 글입니다');
					return;
				}
			}
		}
	</script>
	
	<body>				
		<div class="container">
			<header id="header">
				<div id="header_box">
					<%@ include file= "../include/header.jsp" %>
				</div>
			</header>						
			<hr />
			
			<div class = "form-group row">
			<div class="col-sm-5"></div>
			<div class="col-sm-2">
				<div class="btn-group mx-auto my-2" role="group" aria-label="Basic example">
					<button type="button" id="likeBtn" class="btn btn-info" onclick="updateLH()">&nbsp;
						<i class="fas fa-thumbs-up"></i>&nbsp;추천 &nbsp;<c:out value="${read.boardLikeCount}"/>
					</button>
					<button type="button" id="hateBtn" class="btn btn-secondary" onclick="">
						<i class="fas fa-thumbs-down"></i>비추천 <c:out value="${read.boardHateCount}"/>
					</button>
				</div>
				</div>
				<div class="col-sm-5"></div>
			</div>

			<section id="container">
				<form:form name="readForm" role="form" method="post">
				  <input type="hidden" id="boardNumber" name="boardNumber" value="${read.boardNumber}" />
				  <input type="hidden" id="page" name="page" value="${scri.page}"> 
				  <input type="hidden" id="perPageNum" name="perPageNum" value="${scri.perPageNum}"> 
				  <input type="hidden" id="searchType" name="searchType" value="${scri.searchType}"> 
				  <input type="hidden" id="keyword" name="keyword" value="${scri.keyword}"> 
				 
				</form:form>
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
					
		<form:form name="replyForm" method="post">
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
		</form:form>
		
		</section>
		<hr />
		</div>
		
		
	</body>
</html>