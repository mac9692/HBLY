package edu.bit.hbly.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import edu.bit.hbly.vo.MemberVO;

@Mapper
public interface UserMapper {
	//kakao social
		@Select("select * from tbl_member where userId = #{userId}")
		public MemberVO readUser(String id);
		@Select("select * from tbl_member where login_Type = #{login_Type}")
		public MemberVO readUserLoginType(String login_Type);
	
		@Select("select * from tbl_member where userId = #{userId} and login_Type = #{login_Type}")
		public MemberVO readUserByIdAndLoginType(@Param("userId")String userId,@Param("login_Type")String login_Type);
}
