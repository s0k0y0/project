package com.stone.simple.board.dataservice;

import java.util.List;


import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.apache.ibatis.annotations.One;
import org.apache.ibatis.annotations.Param;


import com.stone.simple.board.common.Board;

@Mapper
public interface I게시물Mapper {

	@Insert("insert into board(writerName,title,contents,member_no) values(#{writerName},#{title},#{contents},#{writer.no})")
	void 등록하다(Board 게시물);
	
	
	
	@Select("select*from board order by no desc limit #{a}, #{b}")
	@Results(value= {
			@Result(property="no", column="no"),
			@Result(property="writerName", column="writerName"),
			@Result(property="title", column="title"),
			@Result(property="contents", column="contents"),
			@Result(property="writer", column="member_no",one=@One(select="com.stone.simple.member.dataservice.I회원Mapper.찾다ByNo")),
			@Result(property="regdate", column="regdate")	})
    List<Board> 목록보다(@Param("a") int 처음게시물일련번호,@Param("b") int 페이지당게시물수);
	
	@Select("select count(*) from board")
	int 게시물갯수();
	
	@Select("select*from board where no=#{no}")
	@Results(value= {
			@Result(property="no", column="no"),
			@Result(property="title", column="title"),
			@Result(property="contents", column="contents"),
			@Result(property="writer", column="member_no",one=@One(select="com.stone.simple.member.dataservice.I회원Mapper.찾다ByNo")),
			@Result(property="regdate", column="regdate")	})
	Board 찾는다By번호(@Param("no") int 번호);
	
	
	
	@Update("update board set title=#{board.title}, contents=#{board.contents} where no=#{no}")
	void 수정하다(@Param("board") Board 변경될게시물,@Param("no") int 게시물번호);
	
	
	
	@Delete("delete from board where no=#{no}")
	void 삭제하다(@Param("no") int 게시물번호);
}
