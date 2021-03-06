package com.king.myapp.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;

import com.king.myapp.domain.StdVO;

@Service
public class StdDAOImpl implements StdDAO {
	
	// 마이바디트
	@Inject
	private SqlSession sql;
	
	// 매퍼
	private static String namespace = "com.king.myapp.mappers.StdMapper";

	// 회원가입
	@Override
	public void std_join(StdVO vo) throws Exception {
		sql.insert(namespace + ".std_join", vo);
	}

	// 회원정보수정
	@Override
	public void info_modify(StdVO vo) {
		sql.update(namespace + ".info_modify", vo);
	}
	
	// 아이디 중복 체크
	@Override
	public int idChk(StdVO vo) throws Exception {
		int result = sql.selectOne(namespace + ".idChk", vo);
		return result;
	}

	// 학생 정보 회원관리로
	@Override
	public void admin_mng(StdVO vo) throws Exception {
		sql.insert(namespace + ".admin_mng", vo);
	}

	// 이메일 중복 체크
	@Override
	public int emailChk(StdVO vo) throws Exception {
		int result = sql.selectOne(namespace + ".emailChk", vo);
		return result;
	}

}
