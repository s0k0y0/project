package com.stone.simple.board.dataservice;


import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.stone.simple.board.common.Board;



@Repository
public class 게시물DAO implements 게시물DAO_인 {

	@Autowired
	I게시물Mapper 게시물Mapper;
	
	@Override
	public void 등록하다(Board 게시물) {
		게시물Mapper.등록하다(게시물);
		
	}

	@Override
	public List<Board> 목록보다(int 처음게시물일련번호, int 페이지당게시물수) {
		
		int 게시물일련번호=처음게시물일련번호-1;
		
		return 게시물Mapper.목록보다(게시물일련번호,페이지당게시물수);
	}
	
	@Override
	public int 게시물갯수확인() {
		
		return 게시물Mapper.게시물갯수();
	}
	
	@Override
	public Board 찾는다By번호(int 번호) {

		return 게시물Mapper.찾는다By번호(번호);

	}
	@Override
	public void 수정하다(Board board, int 게시물번호) {
		게시물Mapper.수정하다(board, 게시물번호);

	}
	@Override
	public void 삭제하다(int 게시물번호) {
		게시물Mapper.삭제하다(게시물번호);
	}

}
