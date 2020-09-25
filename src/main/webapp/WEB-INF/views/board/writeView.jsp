<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
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
	
	<div id="root">
		 
			<nav id="nav">
				<div id="nav_box">
					<%@ include file= "../include/nav.jsp" %>
				</div>
			</nav>
			
			<section id="container">
				<form role="writeForm" method="post" action="/board/write">
					<table>
						<tbody>
							<tr>
								<td>
									<label for="boardTitle">제목</label><input type="text" id="boardTitle" name="boardTitle" required="required"/>
								</td>
							</tr>	
							<tr>
								<td>
									<label for="boardContent">내용</label><textarea id="boardContent" name="boardContent" required="required"></textarea>
								</td>
							</tr>
							<tr>
								<td>
									<label for="userId">작성자</label><input type="text" id="userId" name="userId" required="required" />
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