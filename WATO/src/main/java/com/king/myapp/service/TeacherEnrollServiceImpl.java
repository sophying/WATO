package com.king.myapp.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.king.myapp.domain.TeacherEnrollVO;
import com.king.myapp.domain.TeacherReplyVO;
import com.king.myapp.persistence.TeacherEnrollDAO;

@Service
public class TeacherEnrollServiceImpl implements TeacherEnrollService {

	@Inject
	TeacherEnrollDAO teacherDAO;
	
	// 1. 강의 등록 
	@Override
	public void addClass(TeacherEnrollVO teacherVO) throws Exception {
		teacherDAO.addClass(teacherVO);
	}

	// 2. list 출력 
	@Override
	public List<TeacherEnrollVO> list() throws Exception {
		return teacherDAO.listAll();
	}

	//  조회수 viewCnt
	@Override
	public void viewCount(int t_no) throws Exception {
		teacherDAO.viewCnt(t_no);
		
	}
	// 3. 상세보기 
	@Override
	public TeacherEnrollVO detailRead(int t_no) throws Exception {
		
		return teacherDAO.detailRead(t_no);
	}

	// 5. 수정글 등록 
	@Override
	public void modify(TeacherEnrollVO teacherVO) throws Exception {
		teacherDAO.update(teacherVO);
	}

	// 댓글 목록 보기
	public List<TeacherReplyVO> replyRead(int t_no) throws Exception {
		return teacherDAO.replyRead(t_no);
	}

	// 댓글 등록
	@Override
	public void replyInsert(TeacherReplyVO replyVO) throws Exception {
		teacherDAO.replyInsert(replyVO);
	}

	// 삭제
	@Override
	public void classDelete(int t_no) throws Exception {
		teacherDAO.classDelete(t_no);
	}




}
