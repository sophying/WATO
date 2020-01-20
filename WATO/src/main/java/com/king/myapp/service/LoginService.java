package com.king.myapp.service;

import com.king.myapp.domain.MemberVO;

public interface LoginService {

	void joinInsert(MemberVO joinVO) throws Exception;

	// 로그인 
	public MemberVO login(MemberVO joinVO) throws Exception;

}
