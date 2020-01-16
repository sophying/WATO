package com.king.myapp.persistence;

import java.util.List;

import com.king.myapp.domain.ApprovalVO;

public interface AdminDAO {
	
	// 학생 목록
	public List<ApprovalVO> teachlist() throws Exception;

}
