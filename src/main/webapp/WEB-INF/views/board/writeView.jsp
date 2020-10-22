<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html>
<html>
	<head>
		<title>게시판</title>
	</head>
	<script type="text/javascript">
		$(document).ready(function(){
			var formObj = $("form[name='writeForm']");
			
			$(".write_btn").on("click", function(){
				formObj.attr("action", "/board/write");
				formObj.attr("method", "post");
				formObj.submit();
			});
		})
		
	</script>
	
	<body>	
	<sec:authentication var="principal" property="principal" />
	
	<div class="container">		
			<section id="container">
				<form role="writeForm" method="post" action="/board/write">
					<table>
						<tbody>
							<tr>
								<td>
									<label>게시판 카테고리</label>
																		
									<select class = "category" name="categoryCode">
										<c:if test="${principal.member.verify == 9}">
										<option value = "0" ${categoryCode=="0" ? "selected" : ""}>공지사항</option>	
										</c:if>																											
										<option value = "1" ${categoryCode=="1" ? "selected" : ""}>자유게시판</option>
										<option value = "2" ${categoryCode=="2" ? "selected" : ""}>문의게시판</option>
										<option value = "3" ${categoryCode=="3" ? "selected" : ""}>리뷰게시판</option>
									</select>
																				
								</td>
							</tr>	
							<tr>
								<td>
									<label for="boardTitle">제목</label>
									<input type="text" id="boardTitle" name="boardTitle" required="required"/>
								</td>
							</tr>	
							<tr>
								<td>
									<label for="boardContent">내용</label>
									<textarea id="boardContent" name="boardContent" required="required"></textarea>
								</td>
							</tr>						
							<tr>
								<td>
									<label for="userId">작성자</label>
									<input type="text" id="userId" name="userId" value="${principal.member.userId}"/>
									
								</td>
							<tr>							
								<td>						
									<button class="write_btn" type="submit">작성</button>	
								</td>
							</tr>			
						</tbody>			
					</table>
				</form>
			</section>
			<hr />
		</div>
	</body>
</html>