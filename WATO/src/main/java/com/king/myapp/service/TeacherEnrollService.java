package com.king.myapp.service;

import java.util.List;

import com.king.myapp.domain.TeacherEnrollVO;
import com.king.myapp.domain.TeacherParticipationVO;
import com.king.myapp.domain.TeacherReplyVO;

public interface TeacherEnrollService {

	// 1. 강의 등록 
	public void addClass(TeacherEnrollVO teacherVO) throws Exception;

	// 2. list 출력 
	public List<TeacherEnrollVO> list() throws Exception;
	
	//3. viewCnt 조회수 
	public void viewCount(int t_no) throws Exception;

	// 3. 상세보기 
	public TeacherEnrollVO detailRead(int t_no) throws Exception;

	//4. 수정글 등록 
	public void modify(TeacherEnrollVO teacherVO) throws Exception;
	// 댓글 목록 
	public List<TeacherReplyVO> replyRead(int t_no)throws Exception;

	// 댓글 등록 
	public void replyInsert(TeacherReplyVO replyVO) throws Exception;

	// 삭제
	public void classDelete(int t_no) throws Exception;

	public void replyUpdate(TeacherReplyVO replyVO) throws Exception;

	// 댓글 삭제 
	public void DeleteReply(int r_no) throws Exception;

	// 강의 참여자 확인 
	public List<TeacherParticipationVO> aprroveByTeach(int t_no) throws Exception;


}
