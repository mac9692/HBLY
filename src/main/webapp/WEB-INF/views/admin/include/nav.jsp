<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <ul>
    <c:if test="${member != null}">
    	<li>
    		<a href="${pageContext.request.contextPath}">일반 화면</a>
    	</li>
    	<li>
    		<a href="${pageContext.request.contextPath}/member/signout">로그아웃</a>
    	</li>
    </c:if>
    </ul>