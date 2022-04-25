package com.stone.simple.member.dataservice;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Result;

import com.stone.simple.member.common.Member;

@Mapper
public interface I회원Mapper {

	@Insert("insert into member(name,profile,post,address,detailAddress,email,id,password) values(#{name},#{profile2},#{post},#{address},#{detailAddress},#{email},#{id},#{password})")
	public void 등록하다(Member 새회원);

	
	
	
	
	@Select("select * from member where no=#{no}")
	@Results(value= {
			@Result(property="no", column="no"),
			@Result(property="name", column="name"),
			@Result(property="profile2", column="profile"),
			@Result(property="post", column="post"),
			@Result(property="address", column="address"),
			@Result(property="detailAddress", column="detailAddress"),
			@Result(property="email", column="email"),
			@Result(property="id", column="id"),
			@Result(property="password", column="password"),
			@Result(property="rdate", column="rdate"),
					
	})
	public Member 찾다ByNo(@Param("no") int 회원번호);
	
	
	
	
	@Select("select if(count(*)=1,1,0) from member where id=#{id}")	
	public boolean 아이디찾다(String id);




	@Select("select * from member where id=#{id} and password=#{password}")
	@Results(value= {
			@Result(property="no", column="no"),
			@Result(property="name", column="name"),
			@Result(property="profile2", column="profile"),
			@Result(property="post", column="post"),
			@Result(property="address", column="address"),
			@Result(property="detailAddress", column="detailAddress"),
			@Result(property="email", column="email"),
			@Result(property="id", column="id"),
			@Result(property="password", column="password"),
			@Result(property="rdate", column="rdate"),
					
	})
	public Member 로그인회원(@Param("id")String id,@Param("password") String password);




	@Select("select * from member where no=#{no}")
	@Results(value= {
			@Result(property = "no",column = "no"),
			@Result(property = "name",column = "name"),
			@Result(property = "profile2",column = "profile"),
			@Result(property = "post",column = "post"),
			@Result(property = "address",column = "address"),
			@Result(property = "detailAddress",column = "detailAddress"),
			@Result(property = "email",column = "email"),
			@Result(property = "id",column = "id"),
			@Result(property = "password",column = "password"),
			@Result(property = "rdate",column = "rdate")
	})
	public Member 회원정보찾아오기(@Param("no") int 회원번호);

	@Update("update member set name=#{member.name},profile=#{member.profile2},post=#{member.post},address=#{member.address},detailAddress=#{member.detailAddress},email=#{member.email},password=#{member.password} where no=#{no}")
	public void 회원정보수정하기(@Param("member") Member 수정정보,@Param("no") int 회원번호);

	@Delete("delete from member where no=#{no}")
	public void 회원삭제하기(@Param("no") int 회원번호);
	
}
