package com.king.myapp.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.king.myapp.domain.ApprovalVO;
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
	 
	// 비밀번호 찾기
	@Override
	public TeachVO findidpwd(TeachVO tvo) throws Exception {
		return sql.selectOne("admin.findidpwd", tvo); 
	}

	// 임시비밀번호 발급
	@Override
	public int changepwd(TeachVO tvo) throws Exception {
		return sql.update("admin.changepwd", tvo);
	}

}
