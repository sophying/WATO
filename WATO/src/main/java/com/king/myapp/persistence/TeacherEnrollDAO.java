package com.king.myapp.persistence;

import java.util.List;

import com.king.myapp.domain.TeacherEnrollVO;
import com.king.myapp.domain.TeacherReplyVO;

public interface TeacherEnrollDAO {

	// 1. 강의 등록 
	public void addClass(TeacherEnrollVO teacherVO) throws Exception;

	
	// 2. list 출력 
	public List<TeacherEnrollVO> listAll() throws Exception;


	// 3. 상세보기 
	public TeacherEnrollVO detailRead(int t_no) throws Exception;


	// viewCnt 조회수 
	public void viewCnt(int t_no) throws Exception;

	// 수정글 등록 
	public void update(TeacherEnrollVO teacherVO) throws Exception;


	// 댓글 목록
	public List<TeacherReplyVO> replyRead(int t_no) throws Exception;

	// 댓글 등록
	public void replyInsert(TeacherReplyVO replyVO) throws Exception;

	// 삭제
	public void classDelete(int t_no) throws Exception;


	public void replyUpdate(TeacherReplyVO replyVO) throws Exception;


	public void DeleteReply(int r_no) throws Exception;




}
