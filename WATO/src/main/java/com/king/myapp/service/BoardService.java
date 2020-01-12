package com.king.myapp.service;

import java.util.List;

import com.king.myapp.domain.BoardVO;
import com.king.myapp.domain.StudyListFilter;
import com.king.myapp.domain.TeacherEnrollVO;


public interface BoardService {

	public List<BoardVO> listRank() throws Exception;

	public List<BoardVO> searchResultStudy(String searchKey) throws Exception;

	public List<BoardVO> searchResultTeacher(String searchKey) throws Exception;

	public List<BoardVO> searchResultQna(String searchKey) throws Exception;

	public List<BoardVO> studylistAll() throws Exception;

	public List<TeacherEnrollVO> studylistfilter(StudyListFilter sLF) throws Exception;  


	
	
	
	
}
