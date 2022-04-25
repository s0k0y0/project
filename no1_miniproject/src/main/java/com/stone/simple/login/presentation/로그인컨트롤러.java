package com.stone.simple.login.presentation;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;
import com.stone.simple.board.service.게시물관리자;
import com.stone.simple.login.service.로그인관리자;
import com.stone.simple.member.common.Member;

@Controller
public class 로그인컨트롤러 implements 로그인컨트롤러_인 {

	@Autowired
	로그인관리자 로그인관리자;
	
	@Autowired
	게시물관리자 게시물관리자;
	
	
	@Override
	@GetMapping("/login")
	public String 로그인을준비하다() {
		
		return "로그인창";
	}

	@Override
	@PostMapping("/login")
	public ModelAndView 로그인을하다(String id, String password,HttpSession session) {
		
		ModelAndView mv=new ModelAndView();
		Member 회원정보=로그인관리자.로그인회원정보조회하다(id, password);
		
		if(회원정보!=null) {
			session.setAttribute("writerNo", 회원정보.getNo());
			session.setAttribute("id", 회원정보.getId());
			session.setAttribute("name", 회원정보.getName());
			mv.addObject("회원정보", 회원정보);
			
			mv.setViewName("로그인성공창");
			
		} else {
			mv.setViewName("로그인실패창");
		}
		
		return mv;
	}
	
	@Override
	@GetMapping("/logout")
	public String 로그아웃을하다(HttpSession session) {
		
		//만약 로그인되어 있었다면  세션 객체를 무효화 시킴
		if(session!=null && session.getAttribute("id")!=null) {
			
			session.invalidate();
		}
		return "로그아웃완료창";
	}

}
