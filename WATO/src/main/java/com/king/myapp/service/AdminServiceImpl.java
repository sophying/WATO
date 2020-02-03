package com.king.myapp.service;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.king.myapp.domain.ManagementVO;
import com.king.myapp.domain.QnaBoardVO;
import com.king.myapp.domain.ApprovalVO;
import com.king.myapp.domain.StdVO;
import com.king.myapp.domain.StudyEnrollVO;
import com.king.myapp.domain.TeachVO;
import com.king.myapp.domain.TeacherEnrollVO;
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

	// 학생 로그인
	@Override
	public StdVO login1(StdVO svo) throws Exception {
		return dao.login1(svo);
	}

	// 강사 로그인
	@Override
	public TeachVO login2(TeachVO tvo) throws Exception {
		return dao.login2(tvo);
	}
	
	// 학생 아이디 찾기
	@Override
	public StdVO findS_id(StdVO svo) throws Exception {
		return dao.findS_id(svo);
	}
	
	// 강사 아이디 찾기
	@Override
	public TeachVO findT_id(TeachVO tvo) throws Exception {
		return dao.findT_id(tvo);
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

	// 강사 비밀번호 찾기
	@Override
	public TeachVO findT_pwd(TeachVO tvo) throws Exception {
		return dao.findT_pwd(tvo);
	}

	// 강사 비밀번호 변경
	@Override
	public int changeT_pwd(TeachVO tvo) throws Exception {
		return dao.changeT_pwd(tvo);
	}

	// 전체 리스트 조회(학생)
/*	@Override
	public List<ManagementVO> studentList() throws Exception {
		return dao.studentList();
	}*/
	
	// 전체 리스트 조회(강사)
/*	@Override
	public List<ManagementVO> teachList() throws Exception {
		return dao.teachList();
	}*/

	// 학생 리스트 조회
	@Override
	public List<StdVO> studentList2() throws Exception {
		return dao.studentList2();
	}

	// 강사 리스트 조회
	@Override
	public List<TeachVO> teachList2() throws Exception {
		return dao.teachList2();
	}

	// 학생 회원정보 삭제
	@Override
	public void StdDelete(StdVO svo) throws Exception {
		dao.StdDelete(svo);
		
	}

	// 강사 회원정보 삭제
	@Override
	public void TeachDelete(TeachVO tvo) throws Exception {
		dao.TeachDelete(tvo);
	}

	// 회원관리
	/*@Override
	public List<ManagementVO> manageList() throws Exception {
		return dao.manageList();
	}*/
	
	//학생 회원 수 카운트
	@Override
	public int count_std(StdVO svo) throws Exception {
		int StdCountResult = dao.count_std(svo);
		return StdCountResult;
	}
	
	//강사 회원 수 카운트
	@Override
	public int count_tech(TeachVO tvo) throws Exception {
		
		int TechCountResult = dao.count_tech(tvo);
		return TechCountResult;
	}
	
	//학생 스터디 글 카운트
	@Override
	public int count_s_enroll(StdVO svo) throws Exception{
		
		int StdEnroll_CountResult = dao.count_s_enroll(svo);
		return StdEnroll_CountResult;
	}
	
	//강사 스터디 글 카운트
	@Override
	public int count_t_enroll(TeachVO tvo) throws Exception{
		int TechEnroll_CountResult = dao.count_t_enroll(tvo);
		return TechEnroll_CountResult;
	}
	
	//문의내역 카운트
	@Override
	public int qna_count(StdVO svo) throws Exception {
		int Qna_CountResult = dao.count_qna(svo);
		return Qna_CountResult;
	}

	//최근 30일 문의내역 카운트
	@Override
	public int board_this_month_Count(QnaBoardVO qvo) throws Exception {
		int board_this_month_Count = dao.board_this_month_Count(qvo);
		return board_this_month_Count;
	}

	@Override
	public List<Map<String, Object>> t_apply_month() throws Exception {
		return dao.t_apply_month();
	}

	@Override
	public List<Map<String, Object>> s_apply_month() throws Exception {
		return dao.s_apply_month();
	}
	
}
