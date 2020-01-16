package com.king.myapp.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.king.myapp.domain.ApprovalVO;
import com.king.myapp.domain.StdVO;
import com.king.myapp.domain.TeachVO;

@Service
public class AdminDAOImpl implements AdminDAO {

	//마이바티스
	@Autowired
	private SqlSession sql;	
	
	/* private static String namespace = "com.king.myapp.mappers.adminMapper"; namespace 를 id 앞에 써줄 거면 안 써도 됨*/
	
	@Override
	public List<ApprovalVO> teachlist() throws Exception {
		return sql.selectList("admin.adminmanage");
	}
	 
	// 강사 비밀번호 찾기
	@Override
	public TeachVO findT_pwd(TeachVO tvo) throws Exception {
		return sql.selectOne("admin.findT_pwd", tvo); 
	}

	// 강사 비밀번호 변경
	@Override
	public int changeT_pwd(TeachVO tvo) throws Exception {
		return sql.update("admin.changeT_pwd", tvo);
	}

	// 학생 비밀번호 찾기
	@Override
	public StdVO findS_pwd(StdVO svo) throws Exception {
		return sql.selectOne("admin.findS_pwd", svo);
	}

	// 학생 비밀번호 변경
	@Override
	public int changeS_pwd(StdVO svo) throws Exception {
		return sql.update("admin.changeS_pwd", svo);
	}

}
