package com.king.myapp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.king.myapp.domain.BoardVO;
<<<<<<< HEAD
import com.king.myapp.domain.StudyEnrollVO;
import com.king.myapp.domain.StudyListFilter;
import com.king.myapp.domain.TeacherEnrollVO;
=======
>>>>>>> branch 'jihye' of https://github.com/sophying/WATO.git
import com.king.myapp.persistence.BoardDAO;



@Service
public class BoardServiceImpl implements BoardService{

	@Autowired
	private BoardDAO dao;
	
	@Override
	public List<BoardVO> listRank() throws Exception {
		return dao.listRank();   
	}
	@Override
	public List<BoardVO> searchResultStudy(String searchKey) throws Exception {
		return dao.searchResultStudy(searchKey);
	}
	@Override
	public List<BoardVO> searchResultTeacher(String searchKey) throws Exception {
		return dao.searchResultTeacher(searchKey);
	}
	@Override
	public List<BoardVO> searchResultQna(String searchKey) throws Exception {
		return dao.searchResultQna(searchKey);
	}
	@Override
	public List<BoardVO> studylistAll() throws Exception {
		return dao.studylistAll();
	}
	@Override
	public List<StudyEnrollVO> studylistfilter(StudyListFilter sLF) throws Exception {
		return dao.studylistfilter(sLF);
	}
	@Override
	public List<BoardVO> TearchlistAll() throws Exception {
		return dao.TearchlistAll();
	}
	@Override
	public List<TeacherEnrollVO> TeacherListFilter(StudyListFilter sLF) throws Exception{
		return dao.TeacherListFilter(sLF);
	}

}
