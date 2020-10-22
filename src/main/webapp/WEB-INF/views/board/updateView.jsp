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
				event.preventDefault();
				location.href = "/board/readView?boardNumber=${update.boardNumber}"
														   + "&page=${scri.page}"
														   + "&perPageNum=${scri.perPageNum}"
														   + "&searchType=${scri.searchType}"
														   + "&keyword=${scri.keyword}";
			})
			
			$(".update_btn").on("click", function(){
				if(fn_valiChk()){
					return false;
				}
				
				formObj.attr("action", "/board/update");
				formObj.attr("method", "post");
				formObj.submit();
			})
		})
	
	</script>
	
	<body>
			
			<section id="container">
				<form name="updateForm" role="form" method="post" action="/board/update">
					<input type="hidden" name="boardNumber" value="${update.boardNumber}" readonly="readonly"/>
					<table>
						<tbody>
							<tr>
								<td>
									<label for="boardTitle">제목</label><input type="text" id="boardTitle" name="boardTitle" value="${update.boardTitle}" class="chk" title="제목을 입력하세요"/>
								</td>
							</tr>	
							<tr>
								<td>
									<label for="boardContent">내용</label><textarea id="boardContent" name="boardContent" class="chk" title="내용을 입력하세요"><c:out value="${update.boardContent}" /></textarea>
								</td>
							</tr>
							<tr>
								<td>
									<label for="userId">작성자</label><input type="text" id="userId" name="userId" value="${update.userId}" readonly="readonly"/>
								</td>
							</tr>
							<tr>
								<td>
									<label for="boardRegidate">작성날짜</label>
									<fmt:formatDate value="${update.boardRegidate}" pattern="yyyy-MM-dd"/>					
								</td>
							</tr>		
						</tbody>			
					</table>
					<div>
						<button type="submit" class="update_btn">저장</button>
						<button type="submit" class="cancel_btn">취소</button>
					</div>
				</form>
			</section>
			<hr />
		</div>
	</body>
</html>