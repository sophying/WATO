package com.king.myapp.service;

import java.util.List;

import com.king.myapp.domain.BoardVO;
import com.king.myapp.domain.Criteria;
import com.king.myapp.domain.SearchCriteria;


public interface BoardService {
	//작성
	public void write(BoardVO vo) throws Exception;
	
	//조회 (상세보기)
	public BoardVO read(int bno) throws Exception;
	
	//수정
	public void update(BoardVO vo) throws Exception;
	
	//삭제
	public void delete(int bno) throws Exception;
	 
	//목록
	public List<BoardVO> list() throws Exception;
	
	//목록 + 페이징 
	public List<BoardVO> listPage(Criteria cri) throws Exception;
	
	//게시글 총개수
	public int listCount() throws Exception;

	public List<BoardVO> listSearch(SearchCriteria scri) throws Exception;

	public List<BoardVO> listRank() throws Exception;

	public List<BoardVO> searchResult(String searchKey); 


	
	
	
	
}
