package com.stone.simple.member.dataservice;



import com.stone.simple.member.common.Member;


public interface 회원등록DAO_인 {

	public void 등록하다(Member 새회원);
	public boolean 아이디찾다(String id);
	Member 찾다ByNo(int 회원번호);
	Member 로그인회원조회(String id, String password);
	Member 회원정보찾기(int 회원번호);
	void 회원정보수정(Member 수정정보, int 회원번호);
	
	
	
	
}
