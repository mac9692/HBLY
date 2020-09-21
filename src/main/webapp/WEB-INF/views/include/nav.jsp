<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>



<ul>
<c:if test="${member == null}">
 <li>
  <a href="${pageContext.request.contextPath}/member/signin">로그인</a>
 </li>
 <li>
  <a href="${pageContext.request.contextPath}/member/signup">회원가입</a>
 </li>
</c:if>



<c:if test="${member != null}">
	
	
	<c:if test="${member.verify == 9}">
	<li>
	 <a href="${pageContext.request.contextPath}/admin/index">관리자 화면</a> 
	</li> 
	</c:if>

	 <li>
	  ${member.userName}님 환영합니다.</br>
	  ${member.userId}님 환영합니다.</br>
	  ${member.userPassword}</br>
	  ${member.userPhoneNumber}</br>
	  ${member.verify}
	 </li>
	 <li>
	  <a href="${pageContext.request.contextPath}/member/signout">로그아웃</a>
	 </li>
</c:if>
</ul>