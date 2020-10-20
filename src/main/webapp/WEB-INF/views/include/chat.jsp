<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


		<!-- 챗봇 -->
		<div id="frogue-container" class="position-right-bottom"
		      data-chatbot="6de51246-5130-49fc-abbd-cb9c4dde9ddb"
		      data-user="사용자ID"
		      data-init-key="value"
		      >
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