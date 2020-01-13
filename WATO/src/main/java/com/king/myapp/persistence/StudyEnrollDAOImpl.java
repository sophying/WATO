package com.king.myapp.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.king.myapp.domain.StudyEnrollVO;
import com.king.myapp.domain.TeacherEnrollVO;

@Repository
public class StudyEnrollDAOImpl implements StudyEnrollDAO {

	@Inject
	SqlSession sql;
	
	// 1. 일반 스터디 모집글 등록 
	@Override
	public void enroll(StudyEnrollVO studyVO) throws Exception {
		sql.insert("study.s_enroll",studyVO);
	}

	// 2.list
	@Override
	public List<StudyEnrollVO> listAll() throws Exception {
		return sql.selectList("study.s_list");
	}

	// 조회수 
	@Override
	public void viewCnt(int s_no) throws Exception {
		sql.update("study.s_viewCnt", s_no);
	}
	
	// 3. detail List 상세보기 
	@Override
	public StudyEnrollVO detailRead(int s_no) throws Exception {
		return sql.selectOne("study.s_detail", s_no);
	}
	
	// 수정글 등록 
	@Override
	public void update(StudyEnrollVO studyVO) throws Exception {
		sql.update("study.s_modify", studyVO);
	}




}
