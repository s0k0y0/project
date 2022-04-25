package com.stone.simple.board.presentation;

import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;

import com.stone.simple.board.common.Board;


public interface 게시물컨트롤러_인 {

	public String 게시물등록을준비하다();
	public ModelAndView 게시물등록을하다(Board 게시물,HttpSession session);
	public ModelAndView 게시물목록을보다(int 현재페이지번호);
	public ModelAndView 상세내용을출력하다(int no);
	public ModelAndView 게시물수정을준비하다(int no);
	public ModelAndView 게시물을수정하다(Board 변경될게시물, int 게시물번호);
	public ModelAndView 게시글을삭제하다(int no);
	
	
	
}
