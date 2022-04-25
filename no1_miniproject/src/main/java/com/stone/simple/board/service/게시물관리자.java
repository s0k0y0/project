package com.stone.simple.board.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.stone.simple.board.common.Board;
import com.stone.simple.board.dataservice.게시물DAO;

@Service
public class 게시물관리자 implements 게시물관리자_인 {

	@Autowired
	게시물DAO 게시물DAO;

	@Override
	public void 게시물등록하다(Board 게시물) {

		게시물DAO.등록하다(게시물);
	}

	@Override
	public List<Board> 게시물목록보다(int 처음게시물일련번호, int 페이지당게시물수) {
		
		return 게시물DAO.목록보다(처음게시물일련번호,페이지당게시물수);
	}
	
	@Override
	public int 게시물갯수확인하다() {
		
		return 게시물DAO.게시물갯수확인();
	}

	@Override
	public Board 게시물을조회하다(int 게시물번호) {

		return 게시물DAO.찾는다By번호(게시물번호);
	}

	@Override
	public void 게시물수정하다(Board board, int 게시물번호) {

		게시물DAO.수정하다(board,게시물번호);
	}

	@Override
	public void 게시물삭제하다(int 게시물번호) {

		게시물DAO.삭제하다(게시물번호);
	}

}
