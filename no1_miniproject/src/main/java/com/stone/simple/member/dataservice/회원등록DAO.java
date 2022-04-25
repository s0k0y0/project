package com.stone.simple.member.dataservice;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.stone.simple.member.common.Member;



@Repository
public class 회원등록DAO implements 회원등록DAO_인 {
    
	@Autowired
	I회원Mapper 회원Mapper;
	
	@Override
	public void 등록하다(Member 새회원) {
		회원Mapper.등록하다(새회원);

	}

	@Override
	public boolean 아이디찾다(String id) {

		return 회원Mapper.아이디찾다(id);
	}
	
	@Override
	public Member 찾다ByNo(int 회원번호) {
		return 회원Mapper.찾다ByNo(회원번호);
	}

	@Override
	public Member 로그인회원조회(String id, String password) {
		
		return 회원Mapper.로그인회원(id,password);
	}
	
	@Override
	public Member 회원정보찾기(int 회원번호) {
		
		return 회원Mapper.회원정보찾아오기(회원번호);
	}
	
	@Override
	public void 회원정보수정(Member 수정정보,int 회원번호) {
		
		회원Mapper.회원정보수정하기(수정정보, 회원번호);
	}

	
	public void 회원정보삭제(int 회원번호) {
		
		회원Mapper.회원삭제하기(회원번호);
	}
}
