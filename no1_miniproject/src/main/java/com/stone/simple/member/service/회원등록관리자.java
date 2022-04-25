package com.stone.simple.member.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.stone.simple.member.common.Member;
import com.stone.simple.member.dataservice.회원등록DAO;

@Service
public class 회원등록관리자 implements 회원등록관리자_인 {

	@Autowired
	회원등록DAO 회원등록DAO;
	
	@Override
	public void 회원등록하다(Member 새회원) {
		회원등록DAO.등록하다(새회원);
		System.out.println(새회원.getProfile2());
	}

	@Override
	public boolean 아이디중복검사하다(String id) {
		System.out.println(회원등록DAO.아이디찾다(id));
		return 회원등록DAO.아이디찾다(id);
		
	}

	@Override
	public Member 로그인회원조회하다(String id, String password) {
		
		return 회원등록DAO.로그인회원조회(id,password);
	}

	@Override
	public Member 회원정보가져오다(int 회원번호) {
		
		return 회원등록DAO.회원정보찾기(회원번호);
	}
	
	@Override
	public void 회원정보수정하다(Member 수정정보, int 회원번호) {
		
		회원등록DAO.회원정보수정(수정정보, 회원번호);
	}
	
	@Override
	public void 회원정보삭제하다(int 회원번호) {
		
		회원등록DAO.회원정보삭제(회원번호);
	}
}
