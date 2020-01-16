package com.king.myapp.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.king.myapp.domain.ApprovalVO;

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
	// 매퍼

}
