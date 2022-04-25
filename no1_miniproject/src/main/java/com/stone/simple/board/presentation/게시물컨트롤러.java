package com.stone.simple.board.presentation;

import java.util.List;


import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import com.stone.simple.board.common.Board;
import com.stone.simple.board.service.게시물관리자;
import com.stone.simple.member.common.Member;

@Controller
public class 게시물컨트롤러 implements 게시물컨트롤러_인{

	@Autowired
	게시물관리자 게시물관리자;
	
	@Override
	@GetMapping("/preparewrite")
	public String 게시물등록을준비하다() {
		
		return "게시물작성창";
	}

	@Override
	@PostMapping("/write")
	public ModelAndView 게시물등록을하다(Board 게시물,HttpSession session) {
	
		ModelAndView mv=new ModelAndView();
		int writerNo=(int) session.getAttribute("writerNo");
		String writerName=(String)session.getAttribute("name");
		Member member=new Member();
		member.setNo(writerNo);
		게시물.setWriter(member);
		게시물관리자.게시물등록하다(게시물);
		mv.setViewName("게시물확인창");
		mv.addObject("게시물내용", 게시물);
		
		return mv;
	}

	@Override
	@GetMapping("/board")
	public ModelAndView 게시물목록을보다(@RequestParam(value="pageno",required=false,defaultValue="1") int 현재페이지번호) {
		
		ModelAndView mv=new ModelAndView();
		
		int 페이지당게시물수=10;
		int 전체게시물수=게시물관리자.게시물갯수확인하다();
		
		int 마지막게시물일련번호=페이지당게시물수*현재페이지번호;
		int 처음게시물일련번호=마지막게시물일련번호-(페이지당게시물수-1);
		int 끝페이지번호=(int)(전체게시물수/페이지당게시물수)+((전체게시물수%페이지당게시물수>0)?1:0);
		
		List<Board> 게시물들=게시물관리자.게시물목록보다(처음게시물일련번호,페이지당게시물수);
		mv.setViewName("게시판창");
		mv.addObject("게시물들", 게시물들);
		mv.addObject("현재페이지번호",현재페이지번호);
		mv.addObject("끝페이지번호", 끝페이지번호);
		
		return mv;
	}


	@Override
	@GetMapping("/detail")
	public ModelAndView 상세내용을출력하다(int no) {
		Board 찾은게시물=게시물관리자.게시물을조회하다(no);
		
		ModelAndView mv=new ModelAndView();
		mv.setViewName("게시물상세창");
		mv.addObject("board",찾은게시물);//게시물상세창에 데이터를 전달하는 변수
		
		return mv;
	}
	
	@Override
	@GetMapping("/prepareUpdate")
	public ModelAndView 게시물수정을준비하다(int no ) {//DB에서 데이터를 조회하는 메소드
		Board 찾은게시물=게시물관리자.게시물을조회하다(no);
		
		ModelAndView mv=new ModelAndView();
		mv.setViewName("게시물수정창");
		mv.addObject("board",찾은게시물);//게시물상세창에 데이터를 전달하는 변수
		
		return mv;
	}
	
	@Override
	@PostMapping("/update")
	public ModelAndView 게시물을수정하다(Board board, int no) {//변경된 데이터를 DB에 보내는 메소드
		
		게시물관리자.게시물수정하다(board,no);
		
		ModelAndView mv=new ModelAndView();
		mv.setViewName("게시물수정완료창");
		
		return mv;
	}
	
	@Override
	@RequestMapping("/delete")
	public ModelAndView 게시글을삭제하다(int no) {
		게시물관리자.게시물삭제하다(no);
		
		ModelAndView mv=new ModelAndView();
		mv.setViewName("게시물삭제완료창");
		
		return mv;
	}
	
	
}
