package com.king.myapp.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.king.myapp.domain.StudentParticipationVO;

@Repository
public class StudentParticipationDAOImpl implements StudentParticipationDAO  {

	@Inject
	SqlSession sql;

	// 참여자 정보 등록 
	@Override
	public void partiInsert(StudentParticipationVO partiVO) throws Exception {
		sql.insert("parti.s_participation",partiVO);
	}

	// userid Check
	@Override
	public List<StudentParticipationVO> userCheck(int s_no) throws Exception {
		return sql.selectList("parti.s_userCheck",s_no);
	}
}
