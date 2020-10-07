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
							<strong>[HBLY 이용약관]</strong>
						</h1>
						
						<p>
						<br>
						<br>
						</p>
						
						<h2 style="text-align: center;">
							<strong>제1장 총칙</strong>
						</h2>
						<div>
							<br>
						</div>
						
						<p>
						<br>
						<br>
						</p>
						
						<p>
							<b>제 1 조  목적 </b>
						</p>
						<p>
							이 약관은 HBLY 주식회사(이하 "회사")가 운영하는 사이버몰에서 제공하는 서비스와 이를 이용하는 회원의 권리와 의무 및 책임 사항을 규정함을 목적으로 합니다.
						</p>
						
						<p>
						<br>
						<br>
						</p>
						
						
						<p>
							<b>제 2 조  용어의 정의</b>
						</p>
						<p>
							이 약관에서 사용하는 용어의 정의는 다음과 같습니다. 그리고 여기에서 정의되지 않은 이 약관상의 용어의 의미는 일반적인 거래관행에 따릅니다.
						</p>
						<p>
							1. "사이버몰"이란 회사가 상품 또는 용역 등 (일정한 시설을 이용하거나 용역을 제공받을 수 있는 권리를 포함하며, 이하 "상품 등") 을 회원에게 제공하기 위하여 컴퓨터 등 정보통신설비를 이용하여 상품 등을 거래할 수 있도록 설정한 가상의 영업장 등 회사가 운영하는 웹사이트 및 모바일 웹, 앱 등을 의미합니다.
						</p>
						<p>
							2. “회원”이라 함은 사이버몰에 회원등록을 한 자로서, 계속적으로 사이버몰에서 제공하는 서비스를 이용할 수 있는 자를 말합니다.
						</p>
						<p>
							3. “아이디(ID)”라 함은 회원의 식별과 서비스 이용을 위하여 회원이 설정하고 회사가 승인하여 등록된 전자우편주소를 말합니다.
						</p>
						<p>
							4. “비밀번호(Password)”라 함은 회원의 동일성 확인과 회원의 권익 및 비밀보호를 위하여 회원 스스로가 설정하여 사이버몰에 등록한 문자와 숫자 등의 조합을 말합니다.
						</p>
						<p>
							5. “마켓플레이스 서비스(MarketPlace Service)”라 함은 회사가 사이버몰을 통하여 제공하는 통신판매중개 서비스 및 관련 부가서비스 일체를 말합니다.
						</p>
						<p>
							6. “판매자”라 함은 “HBLY 서비스 이용 약관-사업자용”을 승인하고 회사와 마켓플레이스 서비스(MarketPlace Service) 이용계약을 체결한 자 또는 마켓플레이스 서비스(MarketPlace Service)를 이용하여 실제로 상품을 판매하는 자를 말합니다.
						</p>
						<p>
							7. “할인쿠폰”이라 함은 상품 등을 구매할 때나 사이버몰이 제공하는 서비스를 이용할 때 표시된 금액 또는 비율만큼 할인 받을 수 있는 쿠폰을 말합니다.
						</p>
						<p>
							8. “제휴사”란 회사와 계약을 체결하여 회원에게 상품 등을 거래하거나 각종 정보 및 혜택 등을 제공하거나 회원이 캐시 등을 사용, 교환할 수 있는 온라인 및 오프라인 업체를 의미합니다. 제휴사는 쿠팡 및 회사가 제공하는 개별 서비스 홈페이지에 고지되어 있으며, 회사 및 제휴사의 사정에 따라 해지 또는 추가될 수 있습니다.
						</p>
						
						<p>
						<br>
						<br>
						</p>
						
						
						<p>
							<b>제 3 조 약관의 명시와 설명 및 개정</b>
						</p>
						<p>
							1. 회사는 이 약관의 내용과 상호 및 대표자 성명, 영업소 소재지 주소(소비자의 불만을 처리할 수 있는 주소를 포함), 전화번호, 모사전송번호, 전자우편주소, 사업자등록번호, 통신판매업신고번호, 개인정보관리책임자 등을 회원이 쉽게 확인할 수 있도록 사이버몰의 초기 서비스 화면에 게시합니다. 다만, 약관의 구체적 내용은 회원이 연결화면을 통하여 볼 수 있도록 할 수 있습니다.
						</p>
						<p>
							2. 회사는 『전자상거래 등에서의 소비자보호에 관한 법률』, 『약관의 규제에 관한 법률』, 『전자문서 및 전자거래기본법』, 『전자금융거래법』, 『전자서명법』, 『정보통신망 이용촉진 및 정보보호 등에 관한 법률』, 『소비자기본법』 등 관련 법령을 위배하지 않는 범위에서 이 약관을 개정할 수 있습니다.
						</p>
						<p>
							3. 회사가 약관을 개정할 경우에는 적용일자 및 개정사유를 명시하여 현행 약관과 함께 사이버몰의 화면에 그 적용일자 7일(다만, 회원에게 불리한 내용으로 변경하는 경우에는 30일) 이전부터 적용일자 전일까지 공지합니다.
						</p>
						<p>
							4. 제3항에 의해 변경된 약관은 관련 법령에 특별한 규정 기타 부득이한 사유가 없는 한 그 적용일자 이전으로 소급하여 적용되지 아니합니다.
						</p>
						<p>
							5. 제3항에 따라 공지된 적용일자 이후에 회원이 명시적으로 거부의사를 표명하지 않을 경우에는 개정된 약관에 동의하는 것으로 간주하며, 변경된 약관에 동의하지 않는 회원은 회원 탈퇴를 요청할 수 있습니다. 제3항의 조치에도 불구하고 약관의 개정 사실을 알지 못함으로써 발생하는 회원의 피해에 대하여 회사는 책임을 지지 않습니다.
						</p>
						<p>
							6. 회사는 제공하는 서비스 내의 개별 서비스에 대한 별도의 약관 또는 이용조건을 둘 수 있으며 개별 서비스에서 별도로 적용되는 약관에 대한 동의는 회원이 개별 서비스를 최초로 이용할 경우 별도의 동의절차를 거치게 됩니다. 이 경우 개별 서비스에 대한 이용약관 등이 이 약관에 우선합니다.
						</p>
						<p>
							7. 이 약관에서 정하지 아니한 사항과 이 약관의 해석에 관하여는 『전자상거래 등에서의 소비자보호에 관한 법률』, 『약관의 규제에 관한 법률』, 공정거래위원회가 정하는 『전자상거래 등에서의 소비자 보호지침』 등 관련 법령 및 상관례에 따릅니다.
						</p>
						<p>
							8. 이 약관의 규정이 대한민국의 강행법규와 상충되는 경우에는 그 강행법규에 따릅니다. 이 경우 다른 조항의 효력에는 영향을 미치지 아니합니다.
						</p>
						
						
						
						<p>
						<br>
						<br>
						</p>
						
						
						<p>
							<b>제 4 조 서비스의 제공 및 변경</b>
						</p>
						<p>
							1. 회사는 전자상거래 서비스(통신판매중개서비스 포함) 및 이에 수반되는 기타 서비스 및 회사가 정하는 서비스 또는 업무를 제공합니다.
						</p>
						<p>
							2. 회사는 상품 등의 품절 또는 기술적 사양의 변경 등의 경우에는 장차 체결되는 계약에 의해 제공할 상품 등의 내용을 변경할 수 있습니다. 이 경우에는 변경된 상품 등의 내용을 명시하여 현재의 상품 등의 내용을 게시한 곳에 즉시 공지합니다.
						</p>
						<p>
							3. 회사가 제공하기로 회원과 계약을 체결한 서비스의 내용을 상품 등의 품절 또는 기술적 사양의 변경 등의 사유로 변경할 경우에는 그 사유를 회원에게 통지 가능한 주소로 즉시 통지합니다.
						</p>
						
						<p>
						<br>
						<br>
						</p>
						
						
						<p>
							<b>제 5 조 서비스의 중단</b>
						</p>
						<p>
							1. 회사는 천재지변 또는 이에 준하는 불가항력, 컴퓨터 등 정보통신설비의 보수점검·교체, 고장, 통신의 두절 등의 사유가 발생한 경우에는 서비스의 제공을 일시적으로 중단할 수 있습니다. 
						</p>
						<p>
							2. 회사는 제1항의 사유로 서비스의 제공이 일시적으로 중단됨으로 인하여 회원이 입은 손해에 대하여 배상합니다. 단, 회사가 고의 또는 과실이 없음을 입증하는 경우에는 그러하지 아니합니다.
						</p>
						<p>
							3. 사업 종목의 전환, 사업의 종료 또는 포기, 회사의 폐업, 합병, 분할, 영업양도 등의 이유로 서비스를 제공할 수 없게 되는 경우에는 회사는 제8조에 정한 방법으로 회원에게 통지하고 당초 회사에서 제시한 조건에 따라 회원에게 보상합니다. 
						</p>
						
						
						<p>
						<br>
						<br>
						</p>
						
						<p>
							<b>제 6 조 회원가입 등</b>
						</p>
						<p>
							1. 회원 가입을 희망하는 자는 회사가 정한 가입양식에 따라 회원정보를 기입한 후 이 약관에 동의한다는 의사표시를 함으로써 회원가입을 신청합니다.
						</p>
						<p>
							2. 회사는 제1항과 같이 회원으로 가입할 것을 신청한 자 중 다음 각 호에 해당하지 않는 한 회원으로 등록합니다. 만약 회사가 회원가입신청의 승인을 거부하거나 유보하는 경우, 회사는 이를 제8조에 따라 회원에게 통지합니다.
						</p>
						<p>
							3. 회원가입계약의 성립시기는 회사의 승낙이 가입신청자에게 도달한 시점으로 합니다.
						</p>
						<p>
							4. 회원은 회원정보에 변경이 있는 경우, 회원정보 수정 등의 방법으로 그 변경사항을 반영하여야 합니다. 회원정보 수정을 하지 않음으로써 발생하는 회원의 손해에 대하여 회사는 아무런 책임을 지지 않습니다.
						</p>
						<p>
							5. 회사는 『영화 및 비디오물의 진흥에 관한 법률』 및 『청소년 보호법』 및 『화학물질 관리법』등 관련 법령에 따른 등급 및 연령제한 준수를 위하여 회원의 서비스 이용 또는 상품 등 구매를 제한하거나, 회원에게 나이 및 본인확인 등의 절차를 요구할 수 있습니다.
						</p>
						
						<p>
						<br>
						<br>
						</p>
						
						
						<p>
							<b>제 7조 회원 탈퇴 및 자격 상실 등</b>
						</p>
						<p>
							1. 회원은 회사에 언제든지 탈퇴를 요청할 수 있으며, 회사는 회원의 회원탈퇴 요청 즉시 회원탈퇴를 처리합니다. 회원탈퇴 시 회원자격이 상실되며, 회사가 제공하는 각종 할인쿠폰, 이벤트 혜택 등이 소멸됩니다. 단, 회원탈퇴 시 소진되지 않은 쿠팡캐시 등이 있는 경우에 이에 대한 권리를 포기한 것으로 간주하여, 탈퇴와 동시에 전부 소멸됩니다. 다만, 회사의 상품대금 후불결제 서비스 이용요금을 결제하지 않은 경우, 탈퇴가 제한됩니다.
						</p>
						<p>
							2. 회사가 회원 자격을 제한 시킨 후 동일한 행위가 2회 이상 반복되거나 30일 이내에 그 사유가 시정되지 아니하는 경우 회사는 회원 자격을 상실시킬 수 있습니다.
						</p>
						<p>
							3. 회사가 회원 자격을 상실시키는 경우에는 회원 등록을 말소하며, 이때 회사는 거래 안전을 위하여 해당 회원의 소유로 확인되는 아이디의 회원 등록을 일괄 말소할 수 있습니다. 이 경우 회사는 이를 제8조에 따라 회원에게 통지하고, 회원 등록 말소 전 최소한 30일 이상의 기간을 정하여 소명할 기회를 부여합니다.
						</p>
						
						<p>
						<br>
						<br>
						</p>
						
						
						<p>
							<b>제 8 조 회원에 대한 통지</b>
						</p>
						<p>
							1. 회사가 회원에 대한 통지를 하는 경우, 회원이 회사와 미리 약정하여 지정한 방법에 따라 전자우편, SMS, 전화, 팩스 등으로 할 수 있습니다.
						</p>
						<p>
							2. 회사는 불특정다수 회원에 대한 통지의 경우 7일 이상 사이버몰의 공지사항(고객센터)에 게시함으로써 개별 통지에 갈음할 수 있습니다. 다만, 회원 본인의 거래에 관련하여 중대한 영향을 미치는 사항에 대하여는 개별 통지합니다.
						</p>
						
						
						<p>
						<br>
						<br>
						</p>
						
						<p>
							<b>제 9 조 정보의 제공 및 광고의 게재</b>
						</p>
						<p>
							1.  회사는 회원이 서비스 이용 중 필요하다고 인정되는 다양한 정보를 게시판에 공지하거나 전자우편이나 SMS, 전화, 앱푸쉬 등의 방법으로 회원에게 제공할 수 있습니다. 그리고 회원은 법령에 따라 회사에게 부과된 의무이행을 위한 절차안내, 고객문의 등에 대한 답변, 기타 거래관련정보 등을 제외하고는 언제든지 전자우편 등에 대해서 수신 거절을 할 수 있습니다.
						</p>
						<p>
							2. 회사는 서비스의 운영과 관련하여 서비스 화면, 전자우편 등에 광고를 게재할 수 있습니다. 광고가 포함된 전자우편 등을 수신한 회원은 수신거절을 할 수 있으며, 회사는 수신거절을 위한 방법을 회원에게 제공합니다.
						</p>
						
						<p>
						<br>
						<br>
						</p>
						
						<p>
							<b>제 10 조 회사의 의무</b>
						</p>
						<p>
							1. 회사는 이 약관이 금지하거나 관련 법령 기타 공서양속에 반하는 행위를 하지 않으며 이 약관이 정하는 바에 따라 지속적이고, 안정적으로 서비스를 제공하는 데 최선을 다합니다.
						</p>
						<p>
							2. 회사는 회원이 안전하게 서비스를 이용할 수 있도록 회원의 개인정보(신용정보 포함)보호를 위한 보안시스템을 갖추어야 하며, 개인정보처리방침을 공시하고 준수합니다.
						</p>
						<p>
							3. 회사는 회원이 동의하지 않는 영리목적의 광고성 전자우편, 앱푸쉬 등을 발송하지 않습니다.
						</p>
						<p>
							4. 회사는 회원으로부터 제기되는 의견이나 불만이 객관적으로 정당하다고 인정될 경우에는 회원의 불만을 해결하기 위해 노력합니다.
						</p>
						
						
						<p>
						<br>
						<br>
						</p>
						
						
						
						<p>
							<b>제 11 조 회원의 아이디 및 비밀번호에 대한 의무</b>
						</p>
						<p>
							1. 아이디와 비밀번호에 관한 관리책임은 회원 본인에게 있습니다.
						</p>
						<p>
							2. 회원은 자신의 아이디 및 비밀번호를 제3자에게 제공, 공개하거나 제3자가 이용하도록 해서는 안 됩니다.
						</p>
						<p>
							3. 회원이 자신의 아이디 및 비밀번호의 유출 또는 제3자 사용에 대해 인지하고도 비밀번호를 변경하지 않은 경우 또는 이와 같은 사정을 회사에 통지 하지 않거나 회사의 조치에 응하지 않은 경우 등 회원이 본 조의 의무를 준수하지 않아 발생하는 모든 손실이나 손해 등 불이익에 대한 책임은 회원에게 있습니다.
						</p>
						
						
						<p>
						<br>
						<br>
						</p>
						
						
						<p>
							<b>제 12 조 회원의 의무</b>
						</p>
						<p>
							1. 회원은 이 약관의 규정, 회사의 이용정책, 이용안내 사항 및 관련 법령 등을 준수하여야 하며, 기타 회사 업무에 방해되는 행위를 하여서는 안 됩니다.
						</p>
						<p>
							2. 회사는 제2항을 위반한 회원에 대하여 계약 해제, 할인쿠폰의 환수, 회원 자격의 제한, 현금 환불 보류 등의 조치 및 민∙형사 상의 법적 조치 등을 취할 수 있습니다.
						</p>
						<p>
							3. 본 조 제2항, 제3항의 구체적인 내용은 “HBLY 서비스 이용 정책”에서 정합니다.
						</p>

						<p>
						<br>
						<br>
						</p>
						
						<h1 style="text-align: center;">
							<strong>제2장 전자상거래 서비스</strong>
						</h1>
						
				
				
				
				
				
				
				
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
