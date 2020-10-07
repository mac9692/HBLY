<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
	<head>
		
		<title>HBLY</title>
		
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
		<!-- 구글 -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		
		<!-- 합쳐지고 최소화된 최신 CSS -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	
		<!-- 부가적인 테마 -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
		
		<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
				
		<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
	type="text/css">
	<link rel="stylesheet"
		href="https://static.pingendo.com/bootstrap/bootstrap-4.3.1.css">

	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous" style=""></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"
		integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut"
		crossorigin="anonymous" style=""></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous" style=""></script>

		
		
		<style>
		 body { font-family:'맑은 고딕', verdana; padding:0; margin:0; }
		 ul { padding:0; margin:0; list-style:none;  }
		
		 div#root { width:90%; margin:0 auto; }
		 
		 header#header { font-size:60px; padding:20px 0; }
		 header#header h1 a { color:#000; font-weight:bold; }
		 
		 nav#nav { padding:10px; text-align:right; }
		 nav#nav ul li { display:inline-block; margin-left:10px; }
		
		   section#container { padding:20px 0; border-top:2px solid #eee; border-bottom:2px solid #eee; }
		 section#container::after { content:""; display:block; clear:both; }
		 aside { float:left; width:200px; }
		 div#container_box { float:right; width:calc(100% - 200px - 20px); }
		 
		 aside ul li { text-align:center; margin-bottom:10px; }
		 
		 aside ul li a { display:block; width:100%; padding:10px 0;}
		 aside ul li a:hover { background:#eee; }
		 
		 footer#footer { background:#f9f9f9; padding:20px; }
		 footer#footer ul li { display:inline-block; margin-right:10px; }
		</style>		
		
		
		<style>

		 body { margin:0; padding:0; font-family:'맑은 고딕', verdana; }
		 a { color:#05f; text-decoration:none; }
		 a:hover { text-decoration:underline; }
		 
		 h1, h2, h3, h4, h5, h6 { margin:0; padding:0; }
		 ul, lo, li { margin:0; padding:0; list-style:none; }
		
		 /* ---------- */
		 
		 div#root { width:900px; margin:0 auto; }
		 header#header { }
		 nav#nav { }
		 section#container { }
		  section#content { float:right; width:700px; }
		  aside#aside { float:left; width:180px; }
		  section#container::after { content:""; display:block; clear:both; } 
		 footer#footer { background:#eee; padding:20px; }
		 
		 /* ---------- */
		 
		 header#header div#header_box { text-align:center; padding:30px 0; }
		 header#header div#header_box h1 { font-size:50px; }
		 header#header div#header_box h1 a { color:#000; }
		 
		 nav#nav div#nav_box { font-size:14px; padding:10px; text-align:right; }
		 nav#nav div#nav_box li { display:inline-block; margin:0 10px; }
		 nav#nav div#nav_box li a { color:#333; }
		 
		 section#container { }
		 
		 aside#aside h3 { font-size:22px; margin-bottom:20px; text-align:center; }
		 aside#aside li { font-size:16px; text-align:center; }
		 aside#aside li a { color:#000; display:block; padding:10px 0; }
		 aside#aside li a:hover { text-decoration:none; background:#eee; }
		 
		 aside#aside li { position:relative; }
		 aside#aside li:hover { background:#eee; }   
		 aside#aside li > ul.low { display:none; position:absolute; top:0; left:180px;  }
		 aside#aside li:hover > ul.low { display:block; }
		 aside#aside li:hover > ul.low li a { background:#eee; border:1px solid #eee; }
		 aside#aside li:hover > ul.low li a:hover { background:#fff;}
		 aside#aside li > ul.low li { width:180px; }
		 
		 
		 
		 
		 footer#footer { margin-top:100px; border-radius:50px 50px 0 0; }
		 footer#footer div#footer_box { padding:0 20px; }
		 
		</style>
		
	</head>
	<body>
		<div id="root">
			<header id="header">
				<div id="header_box">
					<%@ include file= "../include/header.jsp" %>
				</div>
			</header>
			
			<nav id="nav">
				<div id="nav_box">
					<%@ include file= "../include/nav.jsp" %>
				</div>
			</nav>
			
			<section id="container">
				<div id="container_box">
					<div class="content-header">
						<h3 class="policy-title">
							<strong>약관 및 정책</strong>
						</h3>
						<p>
							<a href="/">홈</a>
							>
							<a href="/">고객센터</a>
							>
							<a href="/policy/terms">약관 및 정책</a>
						</p>
					</div>
					
					
					<div class="policy-menu">
						<a href="/policy/terms">HBLY 이용 약관</a>
						<a href="/policy/privacy">개인정보 처리방침</a>
						<a href="/policy/commercial">HBLY 광고 정책</a>
						<a href="/policy/youth">청소년 보호정책</a>
					</div>
					
					
					<div class="policy terms" style="display: block;">
						<h1 style="text-align: center;">
							<strong>[HBLY 광고 정책]</strong>
						</h1>
						
						<p>
						<br>
						<br>
						</p>
						
						<p>
							<b>1. 광고 집행 기준</b>
						</p>
						<p>
							1) HBLY는 C0, C1, C2 브랜드관, 이벤트 띠배너 구좌를 제외하고 광고주가 직접 광고 소재를 제작할 수 있도록 허용합니다.
						</p>
						<p>
							2) 광고주가 제작한 광고 소재의 경우 HBLY 광고 정책 및 소재 제작 가이드 준수 여부를 심의하며, 이를 통과한 광고 소재만 게재 가능합니다.
						</p>
						<p>
							3) 모든 광고 소재는 원활한 광고 집행을 위해 영업일 기준 광고 집행 7일전까지 전달되어야 합니다.
						</p>
						<p>
							4) 만약, 기한 내 소재 전달이 완료되지 않은 경우 광고 취소 혹은 일정 조율이 불가피할 수 있으니 유의하시기 바랍니다.
						</p>
						<p>
							5) 집행 중인 광고의 소재 교체는 주 1회를 원칙으로 하며, 2회 이상일 경우는 사전 협의를 통해서 집행이 가능합니다.
						</p>
						<p>
							6) 광고 소재 교체는 영업일 10~18시 내에만 가능합니다.
						</p>
						
						<div>
						<br>
						</div>
						
						<p>
							<b>2. 법적 요건 준수 및 유의 사항</b>
						</p>
						<p>
							1) 하기의 공통 심의 기준 및 업종별 심의 기준은 모든 법규나 규제를 포함하거나 대표하지 않습니다. 광고주는 관련 법과 규정을 이해하고 준수할 책임이 있으며, 이를 준수하지 못할 경우 광고 게재 취소, 광고 집행 지연 등의 조치가 적용될 수 있습니다.
						</p>
						<p>
							2) 하기의 업종별 심의 기준은 모든 규제 대상 산업 군을 포함하고 있지는 않으며, 아래에 명시되지 않았지만 법적인 규제 대상이 되는 업종과 광고주의 광고물이 게재 가능 한지 여부는 반드시 HBLY 광고 운영팀에 확인받아야 합니다.
						</p>
						<p>
							3) 정부기관 및 이에 준하는 협회/단체의 주요 권고사항에 의거하여 특정 광고를 제한할 수 있습니다.
						</p>
						<p>
							4) HBLY는 HBLY와 고객 간의 관계에 부정적인 영향을 주거나 HBLY의 가치, HBLY의 매체 이미지, 이해관계에 반하는 콘텐츠를 홍보하는 모든 광고를 어떠한 이유로든 거부할 수 있습니다.
						</p>
						<p>
							5) 해당 광고가 사회적인 이슈가 될 가능성이 있거나, 광고 게재 이후라도 고객 항의 등의 이슈가 발생되거나 심의 기준에 부합하지 않음이 확인될 경우에는 광고게재가 제한될 수 있습니다.
						</p>
						<p>
							6) 광고가 아닌 HBLY 서비스의 내용으로 오인될 수 있거나, 디자인 모방을 한 광고는 집행할 수 없습니다. 
						</p>
						<p>
							7) 광고 소재 내의 HBLY 로고 및 로켓 배지 등의 사용은 HBLY의 승인 후 가능합니다. 그 외 HBLY의 브랜드 용어 또는 이와 유사한 문구의 사용은 명시적인 HBLY의 승인 없이는 광고 소재 내에 사용이 불가합니다.
						</p>
						<p>
							8) 본 정책은 언제든 예고 없이 변경될 수 있습니다.
						</p>
						
						<div>
						<br>
						</div>
						
						<p>
							<b>3. 공통 심의 기준</b>
						</p>
						<p>
							1) 선정적/음란성 여부 및 청소년 보호 여부
							<br>
							-과도한 신체의 노출이나 음란/선정적/외설적 표현으로 광고할 수 없습니다.
							<br>
							-청소년 유해 매체물의 심의 기준은 아래와 같으며, 아래의 내용은 광고할 수 없습니다.
						</p>
						<p>
							2) 폭력/혐오/공포/비속 여부
							<br>
							-구체적인 폭력, 지나친 공포스러운 표현을 통해 불안감을 조성할 수 있는 내용은 광고할 수 없습니다.
							<br>
							-자세한 묘사로 혐오감을 불러일으킬 수 있는 내용은 광고할 수 없습니다.
							<br>
							-욕설, 비속어 및 언어폭력 등으로 굴욕감 내지는 불쾌감을 불러일으키는 내용은 광고할 수 없습니다.
						</p>
						<p>
							3) 타인 권리 침해 여부
							<br>
							-타인 혹은 타 집단의 명예를 훼손해서는 안되며, 정당한 권한 없이 초상권을 사용하거나 상표/저작권 등 지적재산권을 침해하면 안 됩니다.
						</p>
						<p>
							4) 허위/과장/기만/비방 여부
							<br>
							-허위의 내용을 사실인 것처럼 표현하는 내용은 광고할 수 없습니다.
							<br>
							-중요한 사실이나 정보를 은폐, 축소하는 등의 방법으로 이용자를 현혹하거나 오인하게 할 수 있는 내용은 광고할 수 없습니다.
							<br>
							-타사의 서비스나 상품에 대해 객관적인 근거가 없는 내용이나, 불리한 사실만을 비교/비방하는 내용은 광고할 수 없습니다.
							<br>
							-자극적인 문구, 과대 및 과장 문구 사용을 금지합니다.
						</p>
						<p>
							5) 보편적 사회정서 침해 여부
							<br>
							-성별/인종/종교/장애/질병/연령/지역/직업/성적 정체성 등을 차별하거나 차별을 조장하는 내용은 광고할 수 없습니다.
							<br>
							-논란의 여지가 있는 개인적 신념의 주장이나 정치적 또는 사회적으로 민감한 주제는 광고할 수 없습니다.
							<br>
							-자살/범죄 등을 미화하거나 조장하는 내용은 광고할 수 없습니다.
							<br>
							-기타 보편적 사회정서를 침해하거나 사회적 혼란을 야기할 우려가 있는 내용은 광고할 수 없습니다.
						</p>
						
						
						<div>
						<br>
						</div>
						
						<p>
							<b>4. 업종별 심의 기준</b>
						</p>
						<p>
							1) 식품 광고
							<br>
							-질병의 치료에 효능이 있다는 내용이 포함된 경우 광고할 수 없습니다.
							<br>
							-소비자들로 하여금 일반식품을 건강기능식품 혹은 의약품으로 오인하도록 하는 내용 또는 광고 후기 및 체험사례 등 이와 유사한 내용을 표현하는 경우 광고할 수 없습니다.
							<br>
							-판매 상품 외 판매 사례품이나 경품을 제공하는 내용이 포함된 경우 광고할 수 없습니다.
							<br>
							-원산지 또는 종류를 허위로 표시하거나 기타 내용을 허위로 기재하는 경우 광고할 수 없습니다.
						</p>
						<p>
							2) 건강기능식품 광고
							<br>
							-건강기능식품의 광고 시 한국건강기능식품협회의 사전심의를 받아야 하며, 사전심의 통과 증빙자료를 제출해야 합니다. 단, 식품 표시광고 사전심의가 자율심의로 전환됨에 따라(2019.03.14 시행) 심의를 받은 상품은 심의자료를 확인해야 하며, 자율심의로 콘텐츠 등록한 상품은 식품 등의 표시/광고에 관한 법률을 준수해야 합니다.
						</p>
						<p>
							3) 화장품 광고
							<br>
							-기능성 및 유기농 화장품이 아닌 일반 화장품을 기능성 및 유기농 화장품으로 잘못 인식할 우려가 있는 내용은 광고할 수 없습니다.
							<br>
							-기능성 화장품의 안전성 및 유효성에 관한 심사를 벗어나거나 심사 결과와 다른 내용은 광고할 수 없습니다.
							<br>
							-의약품으로 오인시킬 우려가 있는 내용은 광고할 수 없습니다.
							<br>
							-의사, 치과의사, 한의사, 약사가 이를 지정, 공인, 추천, 사용하고 있다는 내용은 광고할 수 없습니다.
							<br>
							-외국 제품을 국내 제품으로 또는 국내 제품을 외국 제품으로 오인할 우려가 있는 내용은 광고할 수 없습니다.
						</p>
						<p>
							4) 의료기기 및 건강 보조 기구 광고
							<br>
							-의료기기 광고는 한국의료기기산업협회의 사전심의를 받아야 합니다.
							<br>
							-의사, 치과의사, 한의사, 약사가 이를 지정, 공인, 추천, 사용하고 있다는 내용은 광고할 수 없습니다.
							<br>
							-건강 보조 기구를 의료기기로 오인하게 하거나, 효능/효과 및 안전성을 보장하거나 과장하는 내용은 광고할 수 없습니다.
						</p>
						<p>
							5) 기타 집행 불가 광고
							<br>
							-술(주세법 제8조), 담배, 마약
							<br>
							-심의 및 등급 분류 없는 영상물(비디오, DVD), 소프트웨어 (영상물등급위원회 홈페이지 참고)
							<br>
							-불법복제 음반, 비디오, 게임 CD (소프트웨어나 저작권자로부터 복제 허가를 받지 않고 복제된 모든 상품)
							<br>
							-의약품 (약사법 위반)
							<br>
							-콘택트렌즈, 도수 있는 안경이나 선글라스, 혈액 및 헌혈증 (의료 기사 등에 관한 법률 위반)
							<br>
							-지적 재산권 침해 상품
							<br>
							-기타 불법물
							<br>
							-기타 대한민국 법령을 위반 상품이나 관리자가 판단하기에 판매를 중지시킬 사유가 있다고 판단하는 경우
							<br>
							-호신용품(분사기/전자충격기)
						</p>
						
						
					</div>
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				<aside id="aside">
					 <%@ include file="../include/aside.jsp" %>
				</aside>
				</div>
			</section>
			
			<footer id="foorter">
				<div id="footer_box">
					<%@ include file= "../include/footer.jsp" %>
				</div>
			</footer>
		</div>
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
			<!-- 챗봇 -->
			<div id="frogue-container" class="position-right-bottom"
			      data-chatbot="6de51246-5130-49fc-abbd-cb9c4dde9ddb"
			      data-user="사용자ID"
			      data-init-key="value">
			</div>
			<!-- data-init-식별키=값 으로 셋팅하면 챗플로우에 파라미터와 연동가능. 식별키는 소문자만 가능 -->
			<script>
			(function(d, s, id){
			    var js, fjs = d.getElementsByTagName(s)[0];
			    if (d.getElementById(id)) {return;}
			    js = d.createElement(s); js.id = id;
			    js.src = "https:\/\/danbee.ai/js/plugins/frogue-embed/frogue-embed.min.js";
			    fjs.parentNode.insertBefore(js, fjs);
			}(document, 'script', 'frogue-embed'));
			</script>
			
			<script>
			if (document.addEventListener) {
			// Mozilla, Opera, Webkit
			document.addEventListener("DOMContentLoaded", function () {
			document.removeEventListener("DOMContentLoaded", arguments.callee, false);
			htmlReady();
			}, false);
			} else if (document.attachEvent) {
			// Internet Explorer
			document.attachEvent("onreadystatechange", function () {
			if (document.readyState === "complete") {
			document.detachEvent("onreadystatechange", arguments.callee);
			htmlReady();
			}
			});
			}
			var htmlReadyTimer = null;
			//DOM이 모두 로드 되었을 때
			function htmlReady () {
			htmlReadyTimer = setTimeout(function() {
			if (frogueReadyFlag) {
			froguePushEvent('landingEvent', {event_name: '', event_value1: '', event_value2: ''});
			htmlReadyTimer = null;
			} else {
			htmlReady();
			}
			}, 500);
			}
			</script> 
					
	</body>
</html>
