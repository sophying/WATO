package com.king.myapp.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.king.myapp.domain.MemberVO;
import com.king.myapp.persistence.LoginDAO;

@Service
public class LoginServiceImpl  implements LoginService{

	@Inject
	LoginDAO loginDAO;
	
	// join
	@Override
	public void joinInsert(MemberVO joinVO) throws Exception {
		loginDAO.joinInsert(joinVO);
	}

	// login 
	@Override
	public MemberVO login(MemberVO joinVO) throws Exception {
		
		return loginDAO.login(joinVO);
	}

}
