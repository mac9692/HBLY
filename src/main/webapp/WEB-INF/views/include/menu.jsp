<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>


<nav class="navbar navbar-expand-md navbar-dark bg-primary">
			<div class="container justify-content-center">
				<button class="navbar-toggler navbar-toggler-right border-0"
					type="button" data-toggle="collapse" data-target="#navbar15"
					aria-expanded="true">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div
					class="navbar-collapse collapse show"
					id="navbar15" style="">
					<ul class="navbar-nav">
						<li class="nav-item mx-2"><a
							class="nav-link navbar-brand mr-0 text-white" href="/board/list"><i
								class="fa fa-comments-o" aria-hidden="true"></i> <b>커뮤니티</b></a></li>
						<li class="nav-item mx-2"><a
							class="nav-link navbar-brand mr-0 text-white" href="/shop/listtest"><i
								class="fa fa-shopping-basket" aria-hidden="true"></i> <b>마켓</b></a>
						</li>
						<li class="nav-item mx-2"><a
							class="nav-link navbar-brand mr-0 text-white" href="#"><i
								class="fa fa-handshake-o" aria-hidden="true"></i> <b>중고거래</b></a></li>
					</ul>
				</div>
			</div>
		</nav>