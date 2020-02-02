package com.king.myapp.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.king.myapp.domain.BoardVO;
import com.king.myapp.domain.MainLangugeRankVO;
import com.king.myapp.domain.StudentParticipationVO;
import com.king.myapp.domain.StudyEnrollVO;
import com.king.myapp.domain.StudyListFilter;
import com.king.myapp.domain.TeacherEnrollVO;
import com.king.myapp.domain.TeacherParticipationVO;


@Repository
public class BoardDAOImpl implements BoardDAO{ 
	
	//마이바티스
	@Autowired
	private SqlSession sql;
	
	//매퍼
	//private static String namespace = "com.king.myweb.mappers.boardMapper";
	
	
	@Override
	public List<StudyEnrollVO> listRank() throws Exception {
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
	public List<StudyEnrollVO> studylistAll() throws Exception {
		return sql.selectList("board.studylistAll");
	} 
	@Override
	public List<TeacherEnrollVO> TearchlistAll() throws Exception {
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
	@Override
	public List<MainLangugeRankVO> langugerank() throws Exception {
		return sql.selectList("board.langugerank");
	}
	@Override
	public void heartbuttoninsert(StudyEnrollVO std) throws Exception {
		sql.insert("board.heartbuttoninsert",std);
	}
	@Override
	public List<StudyEnrollVO> seleteheartbutton(StudyEnrollVO std) throws Exception {
		return sql.selectList("board.seleteheartbutton",std);
	}
	@Override
	public void heartbuttondelete(StudyEnrollVO std) throws Exception {
		sql.delete("board.heartbuttondelete", std);
	}
	@Override
	public void likebuttoninsert(StudyEnrollVO std) throws Exception {
		sql.update("board.heartbuttonlikecnt",std.getS_no());
		sql.insert("board.likebuttoninsert", std);
	}
	@Override
	public List<StudyEnrollVO> seletelikebutton(StudyEnrollVO std) throws Exception {
		return sql.selectList("board.seletelikebutton",std);
	}
	@Override
	public void likebuttondelete(StudyEnrollVO std) throws Exception {
		sql.delete("board.likebuttondelete",std);
	}
	@Override
	public StudyEnrollVO searchS_no(int s_no) throws Exception {
		return sql.selectOne("board.searchS_no",s_no);
	}
	@Override
	public TeacherEnrollVO searchT_no(int s_no) throws Exception {
		return sql.selectOne("board.searchT_no",s_no); 
	}
	@Override
	public List<StudentParticipationVO> myenrollstudent(int s_no) throws Exception {
		return sql.selectList("board.myenrollstudent", s_no);
	}
	@Override
	public List<TeacherParticipationVO> myenrollteach(int t_no) throws Exception {
		return sql.selectList("board.myenrollteach",t_no);
	}
}