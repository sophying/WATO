package com.king.myapp.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.king.myapp.domain.AdminVO;
import com.king.myapp.domain.ApprovalVO;
import com.king.myapp.domain.StdVO;
import com.king.myapp.domain.TeachVO;

@Service
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

	// 회원관리
	@Override
	public List<AdminVO> manageList() throws Exception {
		return sql.selectList(namespace + ".management");
	}

}
