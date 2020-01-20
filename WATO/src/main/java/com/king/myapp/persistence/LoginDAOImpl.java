package com.king.myapp.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.king.myapp.domain.MemberVO;

@Repository
public class LoginDAOImpl implements LoginDAO{

	@Inject
	SqlSession sql;
	
	
	@Override
	public void joinInsert(MemberVO joinVO) throws Exception {
		sql.insert("join.insert",joinVO);
	}


	// 로그인 
	@Override
	public MemberVO login(MemberVO joinVO) throws Exception {
		return sql.selectOne("join.login",joinVO);
	
	
	}
	
	

}
