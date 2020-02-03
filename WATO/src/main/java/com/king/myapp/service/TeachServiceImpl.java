package com.king.myapp.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.king.myapp.domain.ApprovalVO;
import com.king.myapp.domain.StdVO;
import com.king.myapp.domain.TeachVO;
import com.king.myapp.persistence.TeachDAO;

@Service
public class TeachServiceImpl implements TeachService {
	
	@Inject
	private TeachDAO dao;

	// 회원 가입
	@Override
	public void teach_join(ApprovalVO vo) throws Exception {
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
	
	// 이메일 중복 체크
	@Override
	public int emailChk(TeachVO vo) throws Exception {
		int result = dao.emailChk(vo);
		return result;
	}

	// 로그인
	@Override
	public TeachVO login(TeachVO vo) throws Exception {
		return dao.login(vo);
	}

	// 회원가입2(관리자가 강사 승인버튼을 클릭했을 때)
	@Override
	public void teach_join2(TeachVO vo) throws Exception {
		dao.teach_join2(vo);	
	}

	// 강사 회원 가입3
	@Override
	public void teach_join3(TeachVO vo) throws Exception {
		dao.teach_join3(vo);
	}

	// 강사 승인 후 정보 삭제
	@Override
	public void app_delete(ApprovalVO avo) throws Exception {
		dao.app_delete(avo);
	}

	// 강사 승인 후 Num 의 값 변경
	@Override
	public void teach_appUpdate(ApprovalVO avo) throws Exception {
		dao.teach_appUpdate(avo);
	}
	
	// 강사 정보 회원관리에 추가1
	@Override
	public void admin_mng1(ApprovalVO vo) throws Exception {
		dao.admin_mng1(vo);
	}

	// 강사 정보 회원관리에 추가2
	@Override
	public void admin_mng2(TeachVO vo) throws Exception {
		dao.admin_mng2(vo);
	}

}
