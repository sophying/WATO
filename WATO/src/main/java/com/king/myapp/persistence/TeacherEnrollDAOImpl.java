package com.king.myapp.persistence;

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

}
