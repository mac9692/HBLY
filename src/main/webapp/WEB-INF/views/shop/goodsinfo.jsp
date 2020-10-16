  <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> 
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %> 
  
  
  <!--product info-->
  <div class="mb-5 mt-3" style="">
    <div class="container">
    
      <!-- category-->
      <div class="row">
        <div class="col-md-12 mb-1">
          <a class="navbar-brand text-dark" href="#">
            <i class="fa d-inline fa fa-home"></i>
            <b class="ml-1">홈</b>
          </a><i class="fa fa-angle-right mr-2 fa-lg" aria-hidden="true"></i><a class="categoryName navbar-brand text-dark" href="#">
            <b>${view.categoryName}</b>
          </a><i class="fa fa-angle-right mr-2 fa-lg" aria-hidden="true"></i>
          <a class="navbar-brand text-dark" href="#">
            <b>중분류</b>
          </a><i class="fa fa-angle-right mr-2 fa-lg" aria-hidden="true"></i>
          <a class="navbar-brand text-dark" href="#">
            <b>소분류</b>
          </a>
        </div>
      </div>
      
      <!--info-->
      <div class="row goods">
      
      <form:form role="form" method="post">
		<input type="hidden" name="goodsNumber" value="${view.goodsNumber}" />
	  </form:form>
	  
        <div class="col-lg-6 order-2 order-lg-1 p-0">
          <div class="py-3 goodsImage">
            <img class="img-fluid d-block" src="${view.goodsImage}">
          </div>
          <div class="container">
            <div class="row text-center border">
              <div class="col-md-4 border-right"><a class="btn pi-draggable" href="#">찜 <i class="fa fa-heart-o fa-fw fa-1x py-1"></i><i class="fa fa-heart fa-fw fa-1x py-1"></i> 40</a></div>
              <div class="col-md-4 border-right"><a class="btn pi-draggable" href="#">공유 <i class="fa fa-share-alt fa-fw fa-1x py-1"></i></a></div>
              <div class="col-md-4"><a class="btn pi-draggable" href="#">신고 <i class="fa fa-meh-o fa-fw fa-1x py-1"></i></a></div>
            </div>
          </div>
        </div>
        <div class="goodsInfo col-lg-6 d-flex flex-column align-items-start justify-content-center order-1 order-lg-2 p-3">
          <!--info 1-->
          <div class="w-100">
            <h2 class="text-body goodsName"><b>상품명</b>  ${view.goodsName} </h2>
            <div class="d-flex justify-content-between align-items-center">
              <div>
                <i class="fa d-inline-block fa-star text-warning"></i>
                <i class="fa d-inline-block fa-star text-warning"></i>
                <i class="fa d-inline-block fa-star text-warning"></i>
                <i class="fa d-inline-block fa-star text-info"></i>
                <i class="fa d-inline-block fa-star text-info"></i>
                <p class="d-inline-block text-info"> | 100개 구매 </p>
              </div>
              <div class= "goodsPrice"><h4><b><fmt:formatNumber pattern="###,###,###" value="${view.goodsPrice}" />원</b>
              </h4>
              </div>
              
            </div>
            <hr>
          </div>
          <!--info 2 option/총 상품금액-->
          <div class="col p-0">
            <div class="w-100">
              <h5><b>옵션선택</b></h5>
              <div class="btn-group w-100 border">
                <button class="btn dropdown-toggle text-left" data-toggle="dropdown" aria-expanded="false">상품명</button>
                <div class="dropdown-menu w-100" x-placement="bottom-start" style="position: absolute; transform: translate3d(0px, 38px, 0px); top: 0px; left: 0px; will-change: transform;"> <a class="dropdown-item" href="#">01.${view.goodsName} | <fmt:formatNumber pattern="###,###,###"
									value="${view.goodsPrice}" />원 | <fmt:formatNumber pattern="###,###,###"
									value="${view.goodsStock}" />개 남음</a>
                  <div class="dropdown-divider"></div>
                  <a class="dropdown-item" href="#">02.상품명 | 1,000원 | 100개 남음</a>
                  <div class="dropdown-divider"></div>
                  <a class="dropdown-item" href="#">03.상품명 | 1,000원 | 100개 남음</a>
                </div>
              </div>
              <!--옵션 선택됨-->
              <div class="py-2">
                <div class="card bg-light">
                  <div class="card-body">
                    <div class="row">
                      <div class="col-md-8">
                        <h6 class="card-title">01.${view.goodsName} | <fmt:formatNumber pattern="###,###,###"
									value="${view.goodsPrice}" />원 | <fmt:formatNumber pattern="###,###,###"
									value="${view.goodsStock}" />개 남음</h6>
                      </div>
                      <div class="col-md-4 text-right"><a class="btn btn-primary btn-sm" href="#"><i class="fa fa-times fa-fw fa-1x py-1"></i></a></div>
                    </div>
                    
                    <c:if test="${view.goodsStock != 0}">
                    <div class="row pi-draggable" draggable="true">
                      <div class="col-md-8">
                      <div class="btn-group cartStock"> 
                        <button type="button" class="btn btn-primary minus">-</button> 
                        <input type="number" class="btn numBox" min="1" max="${view.goodsStock}" value="1" readonly="readonly"/>
                        <button type="button" class="btn btn-outline-primary plus">+</button> 
                        </div>
                      </div>
                      <div class="col-md-4 text-right">
                        <h4><b>2,000원</b>
                        </h4>
                      </div>
                    </div>
                    </c:if>
                  </div>
                </div>
              </div>
            </div>
            <!-- 총 상품금액 -->
            <div class="row pi-draggable pt-2" draggable="true">
              <div class="col-md-8">
                <h6><b>총 상품금액</b></h6>
              </div>
              <div class="col-md-4 text-right">
                <h3><b>2,000원</b> </h3>
              </div>
            </div>
            <hr>
          </div>
          
          <!-- info 3 button -->
          <div class="container" >
            <div class="row text-center">
              <div class="col-md-6 addToCart" ><button type="button" class="btn btn-outline-primary btn-block addCart_btn">카트에 담기</button></div>
              <div class="col-md-6"><a class="btn btn-primary btn-block" href="#">구매하기</a></div>
            </div>
          </div>
          
        </div>
      </div>
      
      
      
    </div>
  </div>