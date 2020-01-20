package com.king.myapp.persistence;

import com.king.myapp.domain.MemberVO;

public interface LoginDAO {

	void joinInsert(MemberVO joinVO) throws Exception;

	public MemberVO login(MemberVO joinVO)throws Exception;

}
