package edu.bit.hbly;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;

import org.springframework.stereotype.Controller;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.GetMapping;

import org.springframework.web.client.RestTemplate;

import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.gson.Gson;


import edu.bit.hbly.security.CustomUserDetailsService;
import edu.bit.hbly.service.MemberService;
import edu.bit.hbly.vo.KakaoProfile;
import edu.bit.hbly.vo.MemberVO;
import edu.bit.hbly.vo.OAuthToken;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@AllArgsConstructor
public class UserController {
	
	@Autowired
	private MemberService service;
	@Autowired
	private CustomUserDetailsService customUserDetailService;
	
	
	
	@GetMapping("/auth/kakao/callback")
	public String kakaoCallback(String code, HttpServletRequest request) throws Exception {
		
		Gson gson = new Gson();
		
		RestTemplate rt = new RestTemplate();
		
		HttpHeaders headers = new HttpHeaders();
		headers.add("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
		
		//HttpBody 오브젝트 생성
		MultiValueMap<String, String> params = new LinkedMultiValueMap<>();
		params.add("grant_type", "authorization_code");
		params.add("client_id", "5bde6ae9c71bf5f382a97fe4ea87eb67");
		params.add("redirect_uri", "http://192.168.6.53:8282/auth/kakao/callback");
		params.add("code", code);
		
		
		//HttpHeader와 HttpBody를 하나의 오브젝트에 담기
		HttpEntity<MultiValueMap<String, String>> kakaoTokenRequest =
				new HttpEntity<>(params, headers);
		
		//Http 요청하기-post방식으로- 그리고 response변수의 응답 받음
		ResponseEntity<String> response = rt.exchange(
				"https://kauth.kakao.com/oauth/token",
				HttpMethod.POST,
				kakaoTokenRequest,
				String.class
		);
		
		ObjectMapper objectMapper = new ObjectMapper();
		OAuthToken oauthToken = null;
		try {
			oauthToken = objectMapper.readValue(response.getBody(), OAuthToken.class);
		} catch (JsonParseException e) {
			
			e.printStackTrace();
		} catch (JsonMappingException e) {
			
			e.printStackTrace();
		} catch (IOException e) {
		
			e.printStackTrace();
		}
		
		System.out.println("카카오 엑세스 토큰:" + oauthToken.getAccess_token());
		
		RestTemplate rt2 = new RestTemplate();
		//HttpHeader 오브젝트 생성
		HttpHeaders headers2 = new HttpHeaders();
		headers2.add("Authorization", "Bearer "+oauthToken.getAccess_token());
		headers2.add("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
		
		//HttpHeader와 HttpBody를 하나의 오브젝트에 담기
		HttpEntity<MultiValueMap<String, String>> kakaoProfileRequest2 =
				new HttpEntity<>(headers2);
		
		//Http 요청하기-post방식으로- 그리고 response변수의 응답 받음
		ResponseEntity<String> response2 = rt2.exchange(
				"https://kapi.kakao.com/v2/user/me",
				HttpMethod.POST,
				kakaoProfileRequest2,
				String.class
				);
		
		
		System.out.println(response2.getBody());
		
		ObjectMapper objectMapper2 = new ObjectMapper();	    	
    	KakaoProfile kakaoProfile = null;    	
    	try {
    		// 카카오 로그인 정보 받은 곳
    		kakaoProfile = objectMapper2.readValue(response2.getBody(), KakaoProfile.class);
    		
		} catch (JsonParseException e) {			
			e.printStackTrace();
		} catch (JsonMappingException e) {		
			e.printStackTrace();
		} catch (IOException e) {	
			e.printStackTrace();
		}
    	
    	// 카카오톡 고유 아이디값
    	String socialUserId = kakaoProfile.getId().toString();
    	// 우리서비스 회원가입 여부 판단
    	// 이제 로그인 타입까지 추가로 비교를 해야해 (카카오만의 아이디 검증을 해야하니(
    	MemberVO loginUserInfo = service.getUserByIdAndLoginType(socialUserId,"kakao");
    	
    	log.info("테스트");
    	log.info(loginUserInfo);
    	
    	if(loginUserInfo == null) {
    		// 여기도 카카오 로그인 타입을 추가해야지
    		MemberVO socialRegisterUser = MemberVO.builder()
	    			.userId(socialUserId)
	    			.userPassword(kakaoProfile.getId() + "kakao")
	    			.userName(kakaoProfile.getProperties().getNickname())
	    			.userBirth(" ")
	    			.userGender(" ")
	    			.userNickname(kakaoProfile.getProperties().getNickname())
	    			.userPhoneNumber(" ")
	    			.userAddress1(" ")
	    			.userAddress2(" ")
	    			.userAddress3(" ")
	    			.verify(0)
	    			.login_Type("kakao")
	    			.build();
    		System.out.println(socialRegisterUser.getLogin_Type());
    		log.info("  여기까지 왔낭  	;" +gson.toJson(socialRegisterUser));
    		System.out.println(socialUserId);
    		System.out.println(kakaoProfile.getId() + "kakao");
    		
    		service.signUp(socialRegisterUser);
    	}
    	
    	// 시큐리티 제공하는 유저 정보 조회 서비스를 통한 유저 정보 조회
    	UserDetails user= customUserDetailService.loadUserByUsername(socialUserId);
    	
    	log.info(" 로그인처리 직전 	;" +gson.toJson(loginUserInfo));
    	// 여기서 로그인 처리
    
    	// 유저정보 + 비밀번호(2번쨰 파라미터) 를 통한 로그인 권한정보 생성
        Authentication authentication = new UsernamePasswordAuthenticationToken(user, socialUserId + "kakao", user.getAuthorities());
		// 로그인 정보를 스프링 시큐리티 컨텍스트에 넣기 위해 컨텍스트 정보 가져오기
        SecurityContext securityContext = SecurityContextHolder.getContext();
        // 스프링 시큐리티 권한정보에 위에서 만든 권한정보를 넣어준다.
        securityContext.setAuthentication(authentication);
        HttpSession session = request.getSession();
        // 시큐리티 로그인 세션을 생성
        
        session.setAttribute("SPRING_SECURITY_CONTEXT", securityContext);
    	
        

        return "redirect:/";  // 여기서 홈으로 리다리엑트 하면 됨
    }
	
	
}
