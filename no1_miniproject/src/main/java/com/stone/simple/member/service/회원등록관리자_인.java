package com.stone.simple.member.service;



import com.stone.simple.member.common.Member;


public interface 회원등록관리자_인 {

	public void 회원등록하다(Member 새회원);
	public boolean 아이디중복검사하다(String id);
	public Member 로그인회원조회하다(String id, String password);
	public Member 회원정보가져오다(int 회원번호);
	public void 회원정보수정하다(Member 수정정보, int 회원번호);
	public void 회원정보삭제하다(int 회원번호);
	
	
}
