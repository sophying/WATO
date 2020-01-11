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

	// 3. detail List 상세보기 
	@Override
	public TeacherEnrollVO detailRead(int t_no) throws Exception {
		return sql.selectOne("study.t_class_detail",t_no);
	}



}
