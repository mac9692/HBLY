package edu.bit.hbly.service;

import java.sql.Timestamp;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import javax.inject.Inject;

import org.apache.commons.codec.binary.Base64;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import edu.bit.hbly.dao.MemberDAO;
import edu.bit.hbly.vo.MemberVO;


@Service
public class MemberServiceImpl implements MemberService{
	
	@Inject
	private MemberDAO dao;

	@Override
	public void signUp(MemberVO vo) throws Exception{
		
		dao.signup(vo);
	}

	@Override
	public MemberVO signin(String userPassword) throws Exception {
		
		return dao.signin(userPassword);
	}

	
	@Override 
	public void modify(MemberVO vo) throws Exception {
	 
		dao.modify(vo); 
	
	}

	@Override
	public void withdrawal(MemberVO vo) throws Exception {
		
		dao.withdrawal(vo);
	}

	@Override
	public MemberVO getUserByIdAndLoginType(String userId, String login_Type) {
		
		return dao.getUserByIdAndLoginType(userId, login_Type);
	
	}

	
	
	
	//member sign up - id(email) check
	@Override
	public int checkId(String userId) throws Exception {
		return dao.checkId(userId);
	}

	//member sign up - nickname check
	@Override
	public int checkNickname(String userNickname) throws Exception {
		return dao.checkNickname(userNickname);
	}
	
	//member sign up - phonenumber check / certification cellphone -- 1
	@Override
	public ResponseEntity<String> certificationCellphone(String jsonData) throws Exception {
		Map<String,String> signature = makeSignature();
		
		//�슂泥� URL HTTP : POST https://sens.apigw.ntruss.com/sms/v2/services/{serviceId}/messages
		//{serviceId} : �봽濡쒖젥�듃 �벑濡� �떆 諛쒓툒諛쏆� �꽌鍮꾩뒪 �븘�씠�뵒 : ncp:sms:kr:260797945287:hbly_sms
		String url = "https://sens.apigw.ntruss.com/sms/v2/services/ncp:sms:kr:260797945287:hbly_sms/messages";

		HttpHeaders headers = new HttpHeaders();
		headers.set("Content-Type", "application/json; charset=UTF-8");
		headers.set("x-ncp-apigw-timestamp", signature.get("timestamp"));
		headers.set("x-ncp-iam-access-key", signature.get("accessKey"));
		headers.set("x-ncp-apigw-signature-v2", signature.get("signature"));
		
		HttpEntity<String> request = new HttpEntity<String>(jsonData,headers);
		
		RestTemplate rt = new RestTemplate();
		return rt.postForEntity(url, request, String.class);
	}
	
	//member sign up - phonenumber check / certification cellphone -- 2 making signature	
	public Map<String,String> makeSignature() throws Exception {
		String space = " ";						// one space
		String newLine = "\n";					// new line
		String method = "POST";					// method
		String url = "/sms/v2/services/ncp:sms:kr:260797945287:hbly_sms/messages";	// url (include query string)
		String timestamp = System.currentTimeMillis()+"";							// current timestamp (epoch)
		String accessKey = "JdlX8LeIrOsfM2oDZyZb";									// access key id (from portal or Sub Account)
		String secretKey = "E98bFDlrbeEmvUuyupDQr8jKZvhZh8CXj5lSMTNA";
		
		String message = new StringBuilder()
			.append(method)
			.append(space)
			.append(url)
			.append(newLine)
			.append(timestamp)
			.append(newLine)
			.append(accessKey)
			.toString();

		SecretKeySpec signingKey = new SecretKeySpec(secretKey.getBytes("UTF-8"), "HmacSHA256");
		Mac mac = Mac.getInstance("HmacSHA256");
		mac.init(signingKey);

		byte[] rawHmac = mac.doFinal(message.getBytes("UTF-8"));
		String encodeBase64String = Base64.encodeBase64String(rawHmac);
		
		Map<String,String> map = new HashMap<String,String>();
		map.put("signature", encodeBase64String);
		map.put("accessKey", accessKey);
		map.put("timestamp", timestamp);

	  return map;
	}
	
	//member idInqury - Name&PhoneNumber check(Ajax) 
	@Override
	public List<MemberVO> checkNamePhoneNumber(MemberVO memberVO) {
		
		
		return dao.checkNamePhoneNumber(memberVO);
	}
	
	@Override
	public void pwInqurySuccess(MemberVO memberVO) {
		int num = dao.pwInqurySuccess(memberVO);
		if(num==1) {
			System.out.println("pwInqury Success");
		}else if(num==0) {
			System.out.println("pwInqury fail");
		}
		
	}
	

	
}

