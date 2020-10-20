<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %> 
    
    <ul>
    <c:if test="${pageContext.request.userPrincipal.name != null}">
    	<sec:authentication var="principal" property="principal" />
    	<li>
    		<a href="">일반 화면</a>
    	</li>
    	<li>
	<sec:authorize access="isAuthenticated()">
	<form action="/logout" method="POST">
	 <input type="submit" class="btn navbar-btn ml-md-2 btn-ligh" value="Logout">
    </form>
    </sec:authorize> 
	</li>
    	<!-- <li>
    		<a href="/member/signout">로그아웃</a>
    	</li> -->
    </c:if>
    </ul>