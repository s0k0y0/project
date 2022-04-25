package com.stone.simple.member.presentation;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.stone.simple.member.common.Member;
import com.stone.simple.member.service.회원등록관리자;

@Controller
public class 회원등록컨트롤러 implements 회원등록컨트롤러_인 {

	@Autowired
	회원등록관리자 회원등록관리자;

	@Override
	@GetMapping("/join")
	public ModelAndView 회원등록을준비하다() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("회원등록창");
		return mv;
	}

	@Override
	@PostMapping("/join")
	public ModelAndView 회원등록을하다(Member 새회원) {
		ModelAndView mv = new ModelAndView();
		if (새회원 != null) {
			회원등록관리자.회원등록하다(새회원);
			mv.addObject("name", 새회원);
			mv.setViewName("회원등록성공창");
		} else {
			mv.setViewName("회원등록창");
		}

		return mv;
	}

	@Override
	@GetMapping("/id")
	public String 아이디중복검사를준비하다() {
		return "중복검사창";
	}

	@Override
	@PostMapping("/id")
	public ModelAndView 아이디중복검사를하다(String id) {
		ModelAndView mv = new ModelAndView();
		boolean 아이디중복 = 회원등록관리자.아이디중복검사하다(id);
		mv.addObject("아이디중복", 아이디중복);
		if(아이디중복==false) {
			mv.addObject("id", id);
		} 
		mv.setViewName("중복검사창");
		return mv;
	}
	
	@Override
	@GetMapping("/member/{회원번호}")
	public ModelAndView 회원정보를가져오다(@PathVariable int 회원번호) {
		
		Member 회원정보=회원등록관리자.회원정보가져오다(회원번호);
		
		ModelAndView mv= new ModelAndView();
		mv.addObject("profileData", 회원정보.getProfile2());
		mv.addObject("회원정보", 회원정보);
		mv.setViewName("회원정보창");
		return mv;
	}
	
	@Override
	@GetMapping("/profile/{회원번호}")
	public ModelAndView 프로필사진을주다(@PathVariable int 회원번호) {
		
		Member 회원정보 =회원등록관리자.회원정보가져오다(회원번호);
		ModelAndView mv =new ModelAndView();
		mv.addObject("profileData", 회원정보.getProfile2());
		mv.setViewName("Profile");
	    return mv;	
	}
	
	@Override
	@PostMapping("/updateMember/{회원번호}")
	public ModelAndView 회원정보를수정하다(Member 수정정보,@PathVariable int 회원번호) {
		
		ModelAndView mv=new ModelAndView();
		회원등록관리자.회원정보수정하다(수정정보, 회원번호);
		mv.setViewName("회원수정완료창");
		return mv;
	}
	
	@Override
	@GetMapping("/deleteMember/{회원번호}")
	public ModelAndView 회원정보를삭제하다(@PathVariable int 회원번호) {
		
		ModelAndView mv=new ModelAndView();
		회원등록관리자.회원정보삭제하다(회원번호);
		mv.setViewName("회원탈퇴성공창");
		return mv;
	}
}
