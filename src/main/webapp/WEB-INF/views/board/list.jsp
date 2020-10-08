<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
	<head>
	 	<title>게시판</title>
	 	<!-- 구글 -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	</head>
	
	<body>
		<c:set var="categoryCode" value="${pageMaker.cri.categoryCode}" />
		
		<div class="container">
		
			<header id="header">
				<div id="header_box">
					<%@ include file= "../include/header.jsp" %>
				</div>
			</header>
			
			<hr />		 
				<div>
					<a href="/board/list?categoryCode=0">공지사항</a>
					<a href="/board/list?categoryCode=1">자유게시판</a>
					<a href="/board/list?categoryCode=2">문의게시판</a>
					<a href="/board/list?categoryCode=3">리뷰게시판</a>
				</div>

			 	
			<section id="container">
				<form role="form" method="get" >
					<table>
						<tr><th>글 번호</th>
							<th>제목</th>
							<th>작성자</th>
							<th>등록일</th>
							<th>조회수</th>
						</tr>
						
						<c:forEach items="${list}" var = "list">
							<tr>
								<td><c:out value="${list.boardNumber}" /></td>
								<td>
								<a href="/board/readView?boardNumber=${list.boardNumber}&
																		page=${scri.page}&
																		perPageNum=${scri.perPageNum}&
																		searchType=${scri.searchType}&
																		keyword=${scri.keyword}"><c:out value="${list.boardTitle}" /></a>
								</td>
								<td><c:out value="${list.userId}" /></td>
								<td><fmt:formatDate value="${list.boardRegidate}" pattern="yyyy-MM-dd"/></td>
								<td><c:out value="${list.boardHit }"/></td>
							</tr>
						</c:forEach>											
					</table>
					
					<div class="search">
					    <select name="searchType">
					      <option value="t"<c:out value="${scri.searchType eq 't' ? 'selected' : ''}"/>>제목</option>
					      <option value="c"<c:out value="${scri.searchType eq 'c' ? 'selected' : ''}"/>>내용</option>
					      <option value="w"<c:out value="${scri.searchType eq 'w' ? 'selected' : ''}"/>>작성자</option>
					      <option value="tc"<c:out value="${scri.searchType eq 'tc' ? 'selected' : ''}"/>>제목+내용</option>
					    </select>				
				    <input type="text" name="keyword" id="keywordInput" value="${scri.keyword}" />		
				    <button id="searchBtn" type="button">검색</button>			   				    											    
				    <script>
				      $(function(){
				        $('#searchBtn').click(function() {
				          location.replace("/board/list?page=1&categoryCode=${categoryCode}& searchType=" + $("select option:selected").val() + "&keyword=" + encodeURIComponent($('#keywordInput').val()));
				        })
				      });   
				    </script>				    				  			
				  </div>
				  
				  <input type="button" value="글쓰기" onclick="location.href='/board/writeView'">	
			
				  	
				<div>
				  <ul>
				    <c:if test="${pageMaker.prev}">
				    	<li><a href="list${pageMaker.makeSearch(pageMaker.startPage - 1, categoryCode)}">이전</a></li>
				    </c:if> 
				
				    <c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
				    	<li><a href="list${pageMaker.makeSearch(idx, categoryCode)}">${idx}</a></li>
				    </c:forEach>
				
				    <c:if test="${pageMaker.next && pageMaker.endPage > 0}">
				    	<li><a href="list${pageMaker.makeSearch(pageMaker.endPage + 1, categoryCode)}">다음</a></li>
				    </c:if> 
				  </ul>
				</div>
					
				</form>								
			</section>
		</div>
		
	</body>
</html>