package com.king.myapp.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.king.myapp.domain.StudyEnrollVO;

@Repository
public class StudyEnrollDAOImpl implements StudyEnrollDAO {

	@Inject
	SqlSession sql;
	
	// 1. 일반 스터디 모집글 등록 
	@Override
	public void enroll(StudyEnrollVO studyVO) throws Exception {
		sql.insert("study.s_enroll",studyVO);
	}

	// 2. 일반 스터디 모집글 수정
	@Override
	public StudyEnrollVO modify(int s_no) throws Exception {
		
		return sql.selectOne("study.s_modify",s_no);
		
	}

	// 3. 일반 스터디 모집글 수정글 등록
	@Override
	public void modifyUpdate(StudyEnrollVO studyVO) throws Exception {
		sql.update("study.s_modfyUpdate",studyVO);
	}

}
