package com.king.myapp.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;

import com.king.myapp.domain.ApprovalVO;
import com.king.myapp.domain.TeachVO;

@Service
public class TeachDAOImpl implements TeachDAO {
	
	// 마이바디스
	@Inject
	private SqlSession sql;
	
	// 매퍼
	private static String namespace = "com.king.myapp.mappers.TeachMapper";

	// 회원가입
	@Override
	public void teach_join(ApprovalVO vo) throws Exception {
		sql.insert(namespace + ".teach_join", vo);
	}

	// 회원정보수정
	@Override
	public void info_modify(TeachVO vo) throws Exception {
		sql.update(namespace + ".info_madofy", vo);
	}
	
	// 아이디 중복 체크
	@Override
	public int idChk(TeachVO vo) throws Exception {
		int result = sql.selectOne(namespace + ".idChk", vo);
		return result;
	}

	// 로그인
	@Override
	public TeachVO login(TeachVO vo) throws Exception {
		return sql.selectOne(namespace + ".login", vo);
	}

	// 회원 가입2(관리자가 강사 승인버튼을 클릭했을 때)
	@Override
	public void teach_join2(TeachVO vo) {
		sql.insert(namespace + ".teach_join2", vo);
	}

	// 강사 회원 가입3
	@Override
	public void teach_join3(TeachVO vo) throws Exception {
		sql.update(namespace + ".teach_join3", vo);
	}

	// 강사 승인 후 정보 삭제
	@Override
	public void app_delete(ApprovalVO avo) throws Exception {
		sql.delete(namespace + ".app_delete", avo);
	}
	
}
