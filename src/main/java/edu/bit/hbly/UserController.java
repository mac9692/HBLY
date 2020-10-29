package edu.bit.hbly;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
		
		//HttpBody ������Ʈ ����
		MultiValueMap<String, String> params = new LinkedMultiValueMap<>();
		params.add("grant_type", "authorization_code");
		params.add("client_id", "5bde6ae9c71bf5f382a97fe4ea87eb67");
		params.add("redirect_uri", "http://192.168.6.53:8282/auth/kakao/callback");
		params.add("code", code);
		
		
		//HttpHeader�� HttpBody�� �ϳ��� ������Ʈ�� ���
		HttpEntity<MultiValueMap<String, String>> kakaoTokenRequest =
				new HttpEntity<>(params, headers);
		
		//Http ��û�ϱ�-post�������- �׸��� response������ ���� ����
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
		
		System.out.println("īī�� ������ ��ū:" + oauthToken.getAccess_token());
		
		RestTemplate rt2 = new RestTemplate();
		//HttpHeader ������Ʈ ����
		HttpHeaders headers2 = new HttpHeaders();
		headers2.add("Authorization", "Bearer "+oauthToken.getAccess_token());
		headers2.add("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
		
		//HttpHeader�� HttpBody�� �ϳ��� ������Ʈ�� ���
		HttpEntity<MultiValueMap<String, String>> kakaoProfileRequest2 =
				new HttpEntity<>(headers2);
		
		//Http ��û�ϱ�-post�������- �׸��� response������ ���� ����
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
    		// īī�� �α��� ���� ���� ��
    		kakaoProfile = objectMapper2.readValue(response2.getBody(), KakaoProfile.class);
    		
		} catch (JsonParseException e) {			
			e.printStackTrace();
		} catch (JsonMappingException e) {		
			e.printStackTrace();
		} catch (IOException e) {	
			e.printStackTrace();
		}
    	
    	// īī���� ���� ���̵�
    	String socialUserId = kakaoProfile.getId().toString();
    	// �츮���� ȸ������ ���� �Ǵ�
    	// ���� �α��� Ÿ�Ա��� �߰��� �񱳸� �ؾ��� (īī������ ���̵� ������ �ؾ��ϴ�(
    	MemberVO loginUserInfo = service.getUserByIdAndLoginType(socialUserId,"kakao");
    	
    	log.info("�׽�Ʈ");
    	log.info(loginUserInfo);
    	
    	if(loginUserInfo == null) {
    		// ���⵵ īī�� �α��� Ÿ���� �߰��ؾ���
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
    		log.info("  ������� �Գ�  	;" +gson.toJson(socialRegisterUser));
    		System.out.println(socialUserId);
    		System.out.println(kakaoProfile.getId() + "kakao");
    		
    		service.signUp(socialRegisterUser);
    	}
    	
    	// ��ť��Ƽ �����ϴ� ���� ���� ��ȸ ���񽺸� ���� ���� ���� ��ȸ
    	UserDetails user= customUserDetailService.loadUserByUsername(socialUserId);
    	
    	log.info(" �α���ó�� ���� 	;" +gson.toJson(loginUserInfo));
    	// ���⼭ �α��� ó��
    
    	// �������� + ��й�ȣ(2���� �Ķ����) �� ���� �α��� �������� ����
        Authentication authentication = new UsernamePasswordAuthenticationToken(user, socialUserId + "kakao", user.getAuthorities());
		// �α��� ������ ������ ��ť��Ƽ ���ؽ�Ʈ�� �ֱ� ���� ���ؽ�Ʈ ���� ��������
        SecurityContext securityContext = SecurityContextHolder.getContext();
        // ������ ��ť��Ƽ ���������� ������ ���� ���������� �־��ش�.
        securityContext.setAuthentication(authentication);
        HttpSession session = request.getSession();
        // ��ť��Ƽ �α��� ������ ����
        
        session.setAttribute("SPRING_SECURITY_CONTEXT", securityContext);
    	
        

        return "redirect:/";  // ���⼭ Ȩ���� ���ٸ���Ʈ �ϸ� ��
    }
}
