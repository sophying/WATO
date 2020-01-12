package com.king.myapp.persistence;

import java.util.List;

import com.king.myapp.domain.BoardVO;
import com.king.myapp.domain.Criteria;
import com.king.myapp.domain.SearchCriteria;



public interface BoardDAO {
	

	public List<BoardVO> listRank() throws Exception;

	public List<BoardVO> searchResultStudy(String searchKey) throws Exception;

	public List<BoardVO> searchResultTeacher(String searchKey) throws Exception;

	public List<BoardVO> searchResultQna(String searchKey) throws Exception;

	public List<BoardVO> studylistAll() throws Exception;
	
	
}
