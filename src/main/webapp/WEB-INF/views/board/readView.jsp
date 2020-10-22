<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<html>

	
	<script type="text/javascript">
		$(document).ready(function(){
			
			var formObj = $("form[name='readForm']");
			
			// 수정 
			$(".update_btn").on("click", function(){
				
				var boardNum = $(this).attr("data-boardNumber");
				
				$.ajax({
					type : 'POST',
					dataType : 'json',
					url : "/board/updateCheck",
					data : {boardNumber : boardNum},
					success : function(result){
						if(result == 0){
							alert("작성자 본인만 수정할 수 있습니다.");
							location.href = "/board/list";
						}
						
						if(result == 1) {
							location.href = "/board/updateView?boardNumber="+boardNum;
						}
					},
					error : function(){
						alert('로그인이 필요합니다')
						location.href="/member/signin";
					}
				});				
			})			
							
			
			// 삭제
			$(".delete_btn").on("click", function(){
				var deleteYN = confirm("정말로 삭제하시겠습니까?");				
				
				if(deleteYN == true ){
					var boardNum = $(this).attr("data-boardNumber");
					var userId = $(this).attr("data-userId");
					console.log(boardNum);
					console.log(userId);
					
					$.ajax({
						type : 'POST',
						dataType : 'json',
						url : "/board/delete",
						data : {boardNumber : boardNum, userId : userId},
						success : function(result){
							if(result == 0){
								alert("작성자 본인만 삭제할 수 있습니다.")						
							}
							
							if(result == 1) {
								alert("삭제되었습니다.")
								location.href = "/board/list";
							}
						},
						error : function(){
							alert('로그인이 필요합니다')
							location.href="/member/signin";
						}
					});					
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
				  formObj.attr("${principal.member.userId}");				 
				  formObj.attr("action", "/board/replyWrite");
				  formObj.submit();
			}); 
			
			//	"&userId=${principal.member.userId}"

/* 			//댓글 쓰기
			$(".replyWriteBtn").on("click", function(){
				
				var boardNum = $(this).attr("data-boardNumber");
				var userId = $(this).attr("data-userId");
				
				console.log(boardNum) ;
				console.log(userId);
				
				  $.ajax({
					  type : 'POST',
					  dataType : 'json',
					  url : "/board/replyWrite",
					  data : {"boardNumber" : boardNum,
						  	  "userId" : userId},
					  success : function(data){
					  	location.href = "/board/replyWrite";
					  },
					  error : function(error){
						  alert(error);
					  }
				  })
			});
			 */
					
		/* 	//댓글 삭제 View
			$(".replyDeleteBtn").on("click", function(){
				location.href = "/board/replyDeleteView?boardNumber=${read.boardNumber}"
					+ "&page=${scri.page}"
					+ "&perPageNum=${scri.perPageNum}"
					+ "&searchType=${scri.searchType}"
					+ "&keyword=${scri.keyword}"
					+ "&boardReplyNumber="+$(this).attr("data-boardReplyNumber");
			});
			 */
			 
			// 댓글삭제
			$(".replyDeleteBtn").on("click", function(){
				var deleteYN = confirm("정말로 삭제하시겠습니까?");				
				
				if(deleteYN == true ){
					var data = {boardReplyNumber : $(this).attr("data-boardReplyNumber")};
					
					$.ajax({
						type : 'POST',
						dataType : 'json',
						url : "/board/replyDelete",
						data : data,
						success : function(result){
							if(result == 0){
								alert("작성자 본인만 삭제할 수 있습니다.")						
							}
							
							if(result == 1) {
								alert("삭제되었습니다.")
								location.href = "/board/list";
							}
						},
						error : function() {
							alert('로그인이 필요합니다')
							location.href="/member/signin";	
						}
					});					
				}				
			})			
			
			//댓글 수정 View
			$(".replyUpdateBtn").on("click", function(){
				
				var bn = $(this).attr("data-boardReplyNumber");
				var rbn = {boardReplyNumber : bn};
				
				$.ajax({
					type : 'POST',
					dataType : 'json',
					url : "/board/replyUpdateCheck",
					data : rbn,
					success : function(result){
						if(result == 0){
							alert("작성자 본인만 수정할 수 있습니다")
						}
						if(result==1){							
							location.href="/board/replyUpdateView?boardReplyNumber="+bn;
						}
					},
					error : function(){
						alert('로그인이 필요합니다')
						location.href="/member/signin";	
					}
					
				})
		
			});
			 
			
			 						
			 
	/* 		//댓글 수정 View
			$(".replyUpdateBtn").on("click", function(){
				location.href = "/board/replyUpdateView?boardNumber=${read.boardNumber}"
								+ "&page=${scri.page}"
								+ "&perPageNum=${scri.perPageNum}"
								+ "&searchType=${scri.searchType}"
								+ "&keyword=${scri.keyword}"
								+ "&boardReplyNumber="+$(this).attr("data-boardReplyNumber");
			});
				 */		
			
		})
	
	</script>
	
	<body>		
		<sec:authentication var="principal" property="principal" />
		<div class="container">							
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
					<sec:authorize access="isAnonymous()">
						<c:url value="/member/signin" var="signinForm" />
						<a class="login-a" href="${signinForm}">로그인</a>										
					</sec:authorize>
				
					<sec:authorize access="isAuthenticated()"> 
					<button type="button"class="update_btn" data-boardNumber="${read.boardNumber}">수정</button>
					<!-- <button type="submit" class="update_btn">수정</button> -->							
					<button type="button"class="delete_btn" data-boardNumber="${read.boardNumber}">삭제</button>									
					<!-- <button type="submit" class="delete_btn">삭제</button>-->	
					</sec:authorize>														
																	
					<button type="submit" class="list_btn">목록</button>	
				</div>

		<!-- 댓글 -->
		<div id="reply">
			<ol class="replyList">
				<c:forEach items="${replyList}" var="replyList">
					 <li>
					    <p>
					       작성 내용 : ${replyList.boardReplyContent}</p>
						작성자 : ${replyList.userId}<br />
						작성 날짜 : <fmt:formatDate value="${replyList.boardReplyRegidate}" pattern="yyyy-MM-dd" />				
				<div>
					<sec:authorize access="isAuthenticated()"> 
					<button type="button" class="replyUpdateBtn" data-boardReplyNumber="${replyList.boardReplyNumber}">수정</button>
					<button type="button" class="replyDeleteBtn" data-boardReplyNumber="${replyList.boardReplyNumber}">삭제</button>
					</sec:authorize>	
				</div>
					</li>
				</c:forEach>   
			 </ol>
		</div>			
			<form name="replyForm" method="post">
				
						
				<div>							
					<sec:authorize access="isAuthenticated()"> 
						<sec:authentication var="principal" property="principal"/>
						
						<input type="hidden" id="boardNumber" name="boardNumber" value="${read.boardNumber}" />
						<input type="hidden" id="userId" name="userId" value="${principal.member.userId}" />
						<input type="hidden" id="page" name="page" value="${scri.page}"> 
						<input type="hidden" id="perPageNum" name="perPageNum" value="${scri.perPageNum}"> 
						<input type="hidden" id="searchType" name="searchType" value="${scri.searchType}"> 
						<input type="hidden" id="keyword" name="keyword" value="${scri.keyword}"> 
						
						<label for="boardReplyContent">댓글 내용</label>
					    <input type="text" id="boardReplyContent" name="boardReplyContent" />	
					   
						<label for="userId">댓글 작성자</label>			
		                <a class="mypage-a">${principal.member.userId}</a>
		                
		                <button class="replyWriteBtn"  type="submit"  >작성 </button>                
	           		</sec:authorize>			
				</div>			
			</form>
		
		</section>
		<hr />
		</div>
		
		
	</body>
</html>