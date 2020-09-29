package edu.bit.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import edu.bit.hbly.vo.MemberVO;


public interface MemberMapper {
	
	@Insert("insert into tbl_member(userId, userPassword, userName, userNickname, userPhoneNumber, userAddress1, userAddress2, userAddress3, userRegidate, verify) values(#{userId}, #{userPassword}, #{userName}, #{userNickname}, #{userPhoneNumber}, '', '', '', '', '')")
	public int insertUser(MemberVO memberVO);
	   
	@Insert("insert into tbl_AUTHORITIES (userId,AUTHORITY) values(#{userId},'ROLE_USER')")
	public void insertAuthorities(MemberVO memberVO);
	
	@Select("select * from tbl_member where userId = #{userId}")
	public MemberVO readUser(String userId);

}
