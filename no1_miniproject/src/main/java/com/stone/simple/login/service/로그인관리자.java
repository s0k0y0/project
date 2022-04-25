package com.stone.simple.login.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.stone.simple.member.common.Member;
import com.stone.simple.member.service.회원등록관리자_인;

@Service
public class 로그인관리자 implements 로그인관리자_인 {

	@Autowired
	회원등록관리자_인 회원등록관리자;
	
	@Override
	public Member 로그인회원정보조회하다(String id, String password) {
		return 회원등록관리자.로그인회원조회하다(id, password);
	}


	

}
