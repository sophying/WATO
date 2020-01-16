package com.king.myapp.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.king.myapp.domain.ApprovalVO;
import com.king.myapp.domain.StdVO;
import com.king.myapp.domain.TeachVO;
import com.king.myapp.persistence.AdminDAO;

@Service
public class AdminServiceImpl implements AdminService {

	@Inject
	private AdminDAO dao; 
	
	// 관리자의 강사 승인 페이지
	@Override
	public List<ApprovalVO> teachlist() throws Exception {
		return dao.teachlist();
	}
	
	// 강사 비밀번호 찬기
	@Override
	public TeachVO findT_pwd(TeachVO tvo) throws Exception {
		return dao.findT_pwd(tvo);
	}
	
	// 강사 비밀번호 변경
	@Override
	public int changeT_pwd(TeachVO tvo) throws Exception {
		return dao.changeT_pwd(tvo);
	}

	// 학생 비밀번호 찾기
	@Override
	public StdVO findS_pwd(StdVO svo) throws Exception {
		return dao.findS_pwd(svo);
	}

	// 학생 비밀번호 변경
	@Override
	public int changeS_pwd(StdVO svo) throws Exception {
		return dao.changeS_pwd(svo);
	}
 
}
