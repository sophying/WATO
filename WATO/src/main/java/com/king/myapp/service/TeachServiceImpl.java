package com.king.myapp.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.king.myapp.domain.TeachVO;
import com.king.myapp.persistence.TeachDAO;

@Service
public class TeachServiceImpl implements TeachService {
	
	@Inject
	private TeachDAO dao;

	// 회원 가입
	@Override
	public void teach_join(TeachVO vo) throws Exception {
		dao.teach_join(vo);		
	}

	// 회원정보수정
	@Override
	public void info_modify(TeachVO vo) throws Exception {
		dao.info_modify(vo);
	}
	
	// 아이디 중복 체크
	@Override
	public int idChk(TeachVO vo) throws Exception {
		int result = dao.idChk(vo);
		return result;
	}

	// 로그인
	@Override
	public TeachVO login(TeachVO vo) throws Exception {
		return dao.login(vo);
	}

}
