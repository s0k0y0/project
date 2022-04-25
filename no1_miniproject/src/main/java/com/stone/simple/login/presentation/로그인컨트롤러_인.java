package com.stone.simple.login.presentation;

import javax.servlet.http.HttpSession;
import org.springframework.web.servlet.ModelAndView;


public interface 로그인컨트롤러_인 {

	String 로그인을준비하다();
	ModelAndView 로그인을하다(String id, String password,HttpSession session);
	String 로그아웃을하다(HttpSession session);
	
}
