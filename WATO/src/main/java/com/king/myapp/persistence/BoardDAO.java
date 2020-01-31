package com.king.myapp.persistence;

import java.util.List;

import com.king.myapp.domain.BoardVO;
import com.king.myapp.domain.MainLangugeRankVO;
import com.king.myapp.domain.StudyEnrollVO;
import com.king.myapp.domain.StudyListFilter;
import com.king.myapp.domain.TeacherEnrollVO;



public interface BoardDAO {
	

	public List<StudyEnrollVO> listRank() throws Exception;

	public List<StudyEnrollVO> searchResultStudy(String searchKey) throws Exception;

	public List<BoardVO> searchResultTeacher(String searchKey) throws Exception;

	public List<TeacherEnrollVO> searchResultQna(String searchKey) throws Exception;

	public List<StudyEnrollVO> studylistAll() throws Exception;

	public List<StudyEnrollVO> studylistfilter(StudyListFilter sLF) throws Exception;

	public List<TeacherEnrollVO> TearchlistAll() throws Exception;

	public List<TeacherEnrollVO> TeacherListFilter(StudyListFilter sLF)throws Exception;

	public List<MainLangugeRankVO> langugerank() throws Exception;

	public void heartbuttoninsert(StudyEnrollVO std)  throws Exception;

	public List<StudyEnrollVO> seleteheartbutton(StudyEnrollVO std) throws Exception;

	public void heartbuttondelete(StudyEnrollVO std) throws Exception;

	public void likebuttoninsert(StudyEnrollVO std) throws Exception;

	public List<StudyEnrollVO> seletelikebutton(StudyEnrollVO std) throws Exception;

	public void likebuttondelete(StudyEnrollVO std) throws Exception;

	public StudyEnrollVO searchS_no(int s_no) throws Exception;

	public TeacherEnrollVO searchT_no(int s_no) throws Exception;
	
	
}
