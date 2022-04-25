package com.stone.simple.board.service;

import java.util.List;


import com.stone.simple.board.common.Board;

public interface 게시물관리자_인 {

	public void 게시물등록하다(Board 게시물);
	public List<Board> 게시물목록보다(int 처음게시물일련번호, int 게시물수);
	public Board 게시물을조회하다(int 게시물번호);
	public void 게시물수정하다(Board 변경될게시물, int 게시물번호);
	public void 게시물삭제하다(int 게시물번호);
	int 게시물갯수확인하다();
	
	
}
