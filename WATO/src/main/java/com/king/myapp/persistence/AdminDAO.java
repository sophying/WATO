package com.king.myapp.persistence;

import java.util.List;

import com.king.myapp.domain.ApprovalVO;
import com.king.myapp.domain.TeachVO;

public interface AdminDAO {
	
	// 학생 목록
	public List<ApprovalVO> teachlist() throws Exception;

	public TeachVO findidpwd(TeachVO tvo) throws Exception;

	public int changepwd(TeachVO tvo) throws Exception;

}
