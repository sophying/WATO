package com.king.myapp.service;

import java.util.List;

import com.king.myapp.domain.ApprovalVO;
import com.king.myapp.domain.TeachVO;

public interface AdminService {

	// 강사 이력서 승인페이지
	public List<ApprovalVO> teachlist() throws Exception;

	// 비밀번호 찾기
	public TeachVO findidpwd(TeachVO tvo) throws Exception;

	// 비밀번호 변경
	public int changepwd(TeachVO tvo) throws Exception;
 
}
