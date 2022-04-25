package com.stone.simple.board.dataservice;

import java.util.List;


import com.stone.simple.board.common.Board;


public interface 게시물DAO_인 {

	
	void 등록하다(Board 게시물);
    List<Board> 목록보다(int 처음게시물일련번호, int 게시물수);
	Board 찾는다By번호(int 번호);
	void 수정하다(Board 변경될게시물, int no);
	void 삭제하다(int 게시물번호);
	int 게시물갯수확인();
	
}
