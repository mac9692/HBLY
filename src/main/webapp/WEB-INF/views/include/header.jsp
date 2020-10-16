<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>



<nav class="navbar navbar-expand-lg navbar-light">
	<div class="container">
		<div class="collapse navbar-collapse" id="navbar8">
			<a class="navbar-brand text-primary" href="/"> <b class="">HBLY</b>
			</a>
			<div class="collapse navbar-collapse px-5" id="navbar5" style="">
				<div class="input-group">
					<input type="text" class="form-control" id="inlineFormInputGroup"
						placeholder="Search">
					<div class="input-group-append">
						<button class="btn btn-primary" type="button">
							<i class="fa fa-search"></i>
						</button>
					</div>
				</div>
			</div>
			<ul class="navbar-nav mr-3">
				<li class="nav-item ml-2"><a class="nav-link"
					href="/member/mypage"> <i class="fa fa-user-circle fa-3x"
						aria-hidden="true"></i>
				</a></li>
				<li class="nav-item ml-2"><a class="nav-link"
					href="/shop/cartList"> <i class="fa fa-shopping-cart fa-3x"></i>
				</a></li>
				<li class="nav-item ml-2"><a class="nav-link" href="#"> <i
						class="fa fa-bell fa-3x"></i>
				</a></li>
			</ul>
		</div>
	</div>
</nav>