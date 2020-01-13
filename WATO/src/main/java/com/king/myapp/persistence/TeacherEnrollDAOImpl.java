package com.king.myapp.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.king.myapp.domain.TeacherEnrollVO;

@Repository
public class TeacherEnrollDAOImpl implements TeacherEnrollDAO {

	@Inject
	SqlSession sql;
	
	
	@Override
	public void addClass(TeacherEnrollVO teacherVO) throws Exception{
		sql.insert("study.t_enroll",teacherVO);
	}


	// 2. listAll
	@Override
	public List<TeacherEnrollVO> listAll() {
		return sql.selectList("study.t_class_list");
	}
	
	// viewCnt 조회수 
	@Override
	public void viewCnt(int t_no) throws Exception {
		sql.update("study.viewCnt", t_no);
	}

	// 3. detail List 상세보기 
	@Override
	public TeacherEnrollVO detailRead(int t_no) throws Exception {
		return sql.selectOne("study.t_class_detail",t_no);
	}

	// 수정글 등록 
	@Override
	public void update(TeacherEnrollVO teacherVO) throws Exception {
		sql.update("study.t_modify",teacherVO);
	}




}