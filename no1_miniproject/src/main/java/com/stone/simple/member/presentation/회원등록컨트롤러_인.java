package com.stone.simple.member.presentation;


import org.springframework.web.servlet.ModelAndView;

import com.stone.simple.member.common.Member;


public interface 회원등록컨트롤러_인 {

	ModelAndView 회원등록을준비하다();
	ModelAndView 회원등록을하다(Member 새회원);
	String 아이디중복검사를준비하다();
	ModelAndView 아이디중복검사를하다(String id);
	ModelAndView 회원정보를가져오다(int 회원번호);
	ModelAndView 프로필사진을주다(int 회원번호);
	ModelAndView 회원정보를수정하다(Member 수정정보, int 회원번호);
	ModelAndView 회원정보를삭제하다(int 회원번호);
	
}
