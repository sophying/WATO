package com.king.myapp.persistence;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.king.myapp.domain.StdVO;
import com.king.myapp.domain.StudentParticipationVO;
import com.king.myapp.domain.StudyEnrollVO;
import com.king.myapp.domain.TeachVO;
import com.king.myapp.domain.TeacherEnrollVO;
import com.king.myapp.domain.TeacherParticipationVO;

@Repository
public class StudentParticipationDAOImpl implements StudentParticipationDAO  {

	@Inject
	SqlSession sql;

	// 참여자 정보 등록 
	@Override
	public void partiInsert(StudentParticipationVO partiVO) throws Exception {
		sql.insert("parti.s_participation",partiVO);
	}

	// 번호로 조회 
	@Override
	public List<StudentParticipationVO> userCheck(int s_no) throws Exception {
		return sql.selectList("parti.s_numCheck",s_no);
	}

	// 참여신청시 참여자 카운트 
	@Override
	public void partiCnt(int s_no) throws Exception {
		sql.update("study.s_partiCnt",s_no);
	}
	// 현재 학생 유저의 참여정보 확인 
	@Override
	public StudentParticipationVO partiCheck(Map<String, Object> map) throws Exception {
		return sql.selectOne("parti.s_partiCheck",map); 
	}
	
	// 학생 참여신청 취소 
	@Override
	public void partidelete(Map<String, Object> map) throws Exception {
		sql.delete("parti.s_partiCancle",map);
	}
	
	// 학생 참여신청 카운트 -
	@Override
	public void partiCntMinus(int s_no) throws Exception {
		sql.update("study.s_partiCntMinus",s_no);
	}
	
	// 학생 스터디 참여 리스트 
	@Override
	public List<StudyEnrollVO> s_getStudyPartiList(StdVO std) throws Exception {
		return sql.selectList("parti.s_getStudyPartiList",std);
	}
	
	// 별점 평가 유저 값 부여 
	@Override
	public void checkStarParti(Map<String, Object> map) throws Exception {
		sql.update("parti.s_checkStarParti",map);
	}	
	
	// 별점 평가  유저 확인 
	@Override
	public StudentParticipationVO getCheckStarParti(Map<String, Object> checkUser) throws Exception {
		return sql.selectOne("parti.s_getCheckStarParti",checkUser);
	}
	
	// 참여 리스트 & 별점 참여 유저 불러오기
	@Override
	public List<StudentParticipationVO> getStarPartiUser(StdVO std) throws Exception {
		return sql.selectList("parti.s_getStarPartiUser",std);
	}

	// 학생 강의 참여 리스트 
	@Override
	public List<TeacherEnrollVO> getClassPartiList(StdVO std) throws Exception {
		return sql.selectList("parti.t_getStudyPartiList",std);
	}




	
	
	
/* -----------  강의   ---------------------*/	
	// 강의 참여등록시 참여자 카운트 
	@Override
	public void t_partiCnt(int t_no) throws Exception {
		sql.update("study.t_partiCnt",t_no);		
	}

	// 강의 참여정보 등록 
	@Override
	public void t_partiInsert(TeacherParticipationVO partiVO) throws Exception {
		sql.insert("parti.t_participation",partiVO);
	}

	// 강의 참여자 체크 
	@Override
	public List<TeacherParticipationVO> t_userCheck(int t_no) throws Exception {
		return sql.selectList("parti.t_numCheck",t_no);
	}
	
	// 현재 유저의 강의 참여 여부 확인 
	@Override
	public TeacherParticipationVO t_partiCheck(Map<String, Object> map) throws Exception {
		return sql.selectOne("parti.t_partiCheck",map); 
	}

	//
	@Override
	public void t_partidelete(Map<String, Object> map) throws Exception {
		sql.delete("parti.t_partiCancle",map);
	}

	//
	@Override
	public void t_partiCntMinus(int t_no) throws Exception {
		sql.update("study.t_partiCntMinus",t_no);
	}


	// 학생 강의 참여 리스트 
	@Override
	public List<TeacherEnrollVO> t_getTeachPartiList(TeachVO teach) throws Exception {
		return sql.selectList("parti.t_getTeachPartiList",teach);
	}



	
}
