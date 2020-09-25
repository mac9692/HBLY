<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
	<head>
	 	<title>게시판</title>
	</head>
	
	<body>
		<div id="root">
			<header>
				<h1> 게시판</h1>
			</header>
			<hr />
			 
			<nav id="nav">
				<div id="nav_box">
					<%@ include file= "../include/nav.jsp" %>
				</div>
			</nav>
			
			<section id="container">
				<form role="form" method="get" >
					<table>
						<tr><th>글 번호</th>
							<th>제목</th>
							<th>작성자</th>
							<th>작성날짜</th>
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
				
				    <input type="text" name="keyword" id="keywordInput" value="${scri.keyword}"/>
				
				    <button id="searchBtn" type="button">검색</button>
				    
				    <script>
				      $(function(){
				        $('#searchBtn').click(function() {
				          self.location = "list" + '${pageMaker.makeQuery(1)}' + "&searchType=" + $("select option:selected").val() + "&keyword=" + encodeURIComponent($('#keywordInput').val());
				        });
				      });   
				    </script>
				  </div>
				  
					<div>
					  <ul>
					    <c:if test="${pageMaker.prev}">
					    	<li><a href="list${pageMaker.makeSearch(pageMaker.startPage - 1)}">이전</a></li>
					    </c:if> 
					
					    <c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
					    	<li><a href="list${pageMaker.makeSearch(idx)}">${idx}</a></li>
					    </c:forEach>
					
					    <c:if test="${pageMaker.next && pageMaker.endPage > 0}">
					    	<li><a href="list${pageMaker.makeSearch(pageMaker.endPage + 1)}">다음</a></li>
					    </c:if> 
					  </ul>
					</div>
					
				</form>
			</section>
		</div>
	</body>
</html>