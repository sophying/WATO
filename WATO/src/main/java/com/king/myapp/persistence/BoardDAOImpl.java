package com.king.myapp.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.king.myapp.domain.BoardVO;
import com.king.myapp.domain.MainLangugeRankVO;
import com.king.myapp.domain.StudyEnrollVO;
import com.king.myapp.domain.StudyListFilter;
import com.king.myapp.domain.TeacherEnrollVO;


@Repository
public class BoardDAOImpl implements BoardDAO{ 
	
	//마이바티스
	@Autowired
	private SqlSession sql;
	
	//매퍼
	//private static String namespace = "com.king.myweb.mappers.boardMapper";
	
	
	@Override
<<<<<<< HEAD
	public List<StudyEnrollVO> listRank() throws Exception {
=======
	public List<BoardVO> listRank() throws Exception { 
>>>>>>> branch 'HRnJIHYEnMSTER' of https://github.com/sophying/WATO.git
		return sql.selectList("board.listRank");
	}
	@Override
	public List<StudyEnrollVO> searchResultStudy(String searchKey) {
		sql.update("board.languageviewcnt",searchKey); // viewcnt 가 하나씩 올라감
		return sql.selectList("board.searchResultStudy",searchKey);
	}
	@Override
	public List<BoardVO> searchResultTeacher(String searchKey) throws Exception {
		return sql.selectList("board.searchResultTeacher",searchKey);
	}
	@Override
	public List<TeacherEnrollVO> searchResultQna(String searchKey) throws Exception {
		return sql.selectList("board.searchResultQna",searchKey);
	}
	@Override
	public List<BoardVO> studylistAll() throws Exception {
		return sql.selectList("board.studylistAll");
	} 
	@Override
	public List<BoardVO> TearchlistAll() throws Exception {
		return sql.selectList("board.TearchlistAll");
	}
	@Override
	public List<StudyEnrollVO> studylistfilter(StudyListFilter sLF) throws Exception {
		return sql.selectList("board.studylistfilter",sLF);
	}
	@Override
	public List<TeacherEnrollVO> TeacherListFilter(StudyListFilter sLF) throws Exception {
		return sql.selectList("board.TeacherListFilter",sLF);
	}
<<<<<<< HEAD
	@Override
	public List<MainLangugeRankVO> langugerank() throws Exception {
		return sql.selectList("board.langugerank");
	}
	
=======
>>>>>>> branch 'HRnJIHYEnMSTER' of https://github.com/sophying/WATO.git
}
