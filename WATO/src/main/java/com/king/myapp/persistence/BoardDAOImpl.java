package com.king.myapp.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.king.myapp.domain.BoardVO;
import com.king.myapp.domain.Criteria;
import com.king.myapp.domain.SearchCriteria;


@Repository
public class BoardDAOImpl implements BoardDAO{ 
	
	//마이바티스
	@Autowired
	private SqlSession sql;
	
	//매퍼
	//private static String namespace = "com.king.myweb.mappers.boardMapper";
	
	
	@Override
	public List<BoardVO> listRank() throws Exception {
		return sql.selectList("board.listRank");
	}
	@Override
	public List<BoardVO> searchResultStudy(String searchKey) {
		return sql.selectList("board.searchResultStudy",searchKey);
	}
	@Override
	public List<BoardVO> searchResultTeacher(String searchKey) throws Exception {
		return sql.selectList("board.searchResultTeacher",searchKey);
	}
	@Override
	public List<BoardVO> searchResultQna(String searchKey) throws Exception {
		return sql.selectList("board.searchResultQna",searchKey);
	}
	@Override
	public List<BoardVO> studylistAll() throws Exception {
		return sql.selectList("board.studylistAll");
	}
	
}
