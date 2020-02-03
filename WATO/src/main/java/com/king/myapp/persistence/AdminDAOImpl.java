package com.king.myapp.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.king.myapp.domain.ManagementVO;
import com.king.myapp.domain.QnaBoardVO;
import com.king.myapp.domain.ApprovalVO;
import com.king.myapp.domain.StdVO;
import com.king.myapp.domain.StudyEnrollVO;
import com.king.myapp.domain.TeachVO;
import com.king.myapp.domain.TeacherEnrollVO;

@Repository
public class AdminDAOImpl implements AdminDAO {

	//마이바티스
	@Autowired
	private SqlSession sql;	
	
	private static String namespace = "com.king.myapp.mappers.adminMapper"; // namespace 를 id 앞에 써줄 거면 안 써도 됨
	
	// admin 페이지에서 승인안 된 강사 목록 불러오기
	@Override
	public List<ApprovalVO> teachlist() throws Exception {
		return sql.selectList(namespace + ".adminmanage");
	}	

	// 학생 로그인
	@Override 
	public StdVO login1(StdVO svo) throws Exception { 
		return sql.selectOne(namespace + ".login1", svo);
	}

	// 강사 로그인
	@Override
	public TeachVO login2(TeachVO tvo) throws Exception {
		return sql.selectOne(namespace + ".login2", tvo);
	}
	
	// 학생 비밀번호 찾기
	@Override
	public StdVO findS_pwd(StdVO svo) throws Exception {
		return sql.selectOne(namespace + ".findS_pwd", svo);
	}
	
	// 학생 비밀번호 변경
	@Override
	public int changeS_pwd(StdVO svo) throws Exception {
		return sql.update(namespace + ".changeS_pwd", svo);
	}
	 
	// 강사 비밀번호 찾기
	@Override
	public TeachVO findT_pwd(TeachVO tvo) throws Exception {
		return sql.selectOne(namespace + ".findT_pwd", tvo); 
	}

	// 강사 비밀번호 변경
	@Override
	public int changeT_pwd(TeachVO tvo) throws Exception {
		return sql.update(namespace + ".changeT_pwd", tvo);
	}

	// 학생 아이디 찾기
	@Override
	public StdVO findS_id(StdVO svo) throws Exception {
		return sql.selectOne(namespace + ".findS_id", svo);
	}

	// 강사 아이디 찾기
	@Override
	public TeachVO findT_id(TeachVO tvo) throws Exception {
		return sql.selectOne(namespace + ".findT_id", tvo);
	}

	// 전체 리스트 조회(학생)
/*	@Override
	public List<ManagementVO> studentList() throws Exception {
		return sql.selectList(namespace + ".studentList");
	}*/

	// 전체 리스트 조회(강사)
/*	@Override
	public List<ManagementVO> teachList() throws Exception {
		return sql.selectList(namespace + ".teachList");
	}*/

	// 학생 리스트 조회
	@Override
	public List<StdVO> studentList2() throws Exception {
		return sql.selectList(namespace + ".studentList2");
	}

	// 강사 리스트 조회
	@Override
	public List<TeachVO> teachList2() throws Exception {
		return sql.selectList(namespace + ".teachList2");
	}

	// 학생 회원정보 삭제
	@Override
	public void StdDelete(StdVO svo) throws Exception {
		sql.delete(namespace + ".StdDelete", svo);
	}

	// 강사 회원정보 삭제
	@Override
	public void TeachDelete(TeachVO tvo) throws Exception {
		sql.delete(namespace + ".TeachDelete", tvo);
	}

	// 회원관리
	/*@Override
	public List<ManagementVO> manageList() throws Exception {
		return sql.selectList(namespace + ".management");
	}*/
	

	// 학생 회원 수 카운트
	@Override
	public int count_std(StdVO svo) throws Exception {
		int StdCountResult = sql.selectOne(namespace+".count_std");
		return StdCountResult;
	}
	
	// 강사 회원 수 카운트
	@Override
	public int count_tech(TeachVO tvo) throws Exception {
		int TechCountResult = sql.selectOne(namespace+".count_tech");
		return TechCountResult;
	}
	//학생 스터디 글 카운트
	@Override
	public int count_s_enroll(StdVO svo) throws Exception {
		int StdEnroll_CountResult = sql.selectOne(namespace+".count_std_enroll");
		return StdEnroll_CountResult;
	}
	//강사 스터디 글 카운트
	@Override
	public int count_t_enroll(TeachVO tvo) throws Exception {
		int TechEnroll_CountResult = sql.selectOne(namespace+".count_tech_enroll");
		return TechEnroll_CountResult;
	}
	// 문의내역 카운트
	@Override
	public int count_qna(StdVO svo) throws Exception {
		int Qna_CountResult = sql.selectOne(namespace+".count_qna");
		return Qna_CountResult;
	}

	@Override
	public int board_this_month_Count(QnaBoardVO qvo) throws Exception {
		int board_this_month_Count = sql.selectOne(namespace+".board_this_month_Count");
		return board_this_month_Count;
	}

	@Override
	public Object t_apply_month(TeacherEnrollVO tevo) throws Exception {
		Object t_apply_month = sql.selectList(namespace+".t_apply_month");
		return t_apply_month;
	}

	@Override
	public Object s_apply_month(StudyEnrollVO sevo) throws Exception {
		Object s_apply_month = sql.selectList(namespace+".s_apply_month");
		return s_apply_month;
	}


}
