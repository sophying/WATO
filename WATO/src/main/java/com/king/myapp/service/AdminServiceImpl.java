package com.king.myapp.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.king.myapp.domain.ApprovalVO;
import com.king.myapp.domain.TeachVO;
import com.king.myapp.persistence.AdminDAO;

@Service
public class AdminServiceImpl implements AdminService {

	@Inject
	private AdminDAO dao; 
	
	@Override
	public List<ApprovalVO> teachlist() throws Exception {
		return dao.teachlist();
	}
	
	@Override
	public TeachVO findidpwd(TeachVO tvo) throws Exception {
		return dao.findidpwd(tvo);
	}
	
	@Override
	public int changepwd(TeachVO tvo) throws Exception {
		return dao.changepwd(tvo);
	}
 
}
