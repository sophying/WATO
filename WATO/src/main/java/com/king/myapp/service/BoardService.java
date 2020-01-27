package com.king.myapp.service;

import java.util.List;

import com.king.myapp.domain.BoardVO;
import com.king.myapp.domain.MainLangugeRankVO;
import com.king.myapp.domain.StudyEnrollVO;
import com.king.myapp.domain.StudyListFilter;
import com.king.myapp.domain.TeacherEnrollVO;


public interface BoardService {

	public List<StudyEnrollVO> listRank() throws Exception;

	public List<StudyEnrollVO> searchResultStudy(String searchKey) throws Exception;

	public List<BoardVO> searchResultTeacher(String searchKey) throws Exception;

	public List<TeacherEnrollVO> searchResultQna(String searchKey) throws Exception;

	public List<BoardVO> studylistAll() throws Exception;

	public List<StudyEnrollVO> studylistfilter(StudyListFilter sLF) throws Exception;
 
	public List<BoardVO> TearchlistAll() throws Exception;

	public List<TeacherEnrollVO> TeacherListFilter(StudyListFilter sLF) throws Exception;

	public List<MainLangugeRankVO> langugerank() throws Exception;  


	
	
	
	
}
