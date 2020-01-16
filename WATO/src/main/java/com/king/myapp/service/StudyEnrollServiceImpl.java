package com.king.myapp.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.king.myapp.domain.StudentParticipationVO;
import com.king.myapp.domain.StudentReplyVO;
import com.king.myapp.domain.StudyEnrollVO;
import com.king.myapp.persistence.StudyEnrollDAO;


@Service
public class StudyEnrollServiceImpl implements StudyEnrollService{

	@Inject
	StudyEnrollDAO studyEnrollDAO;
	
	// 1. 일반 스터디 모집글 등록 
	@Override
	public void enroll(StudyEnrollVO studyVO) throws Exception { 
		studyEnrollDAO.enroll(studyVO);
	}

	// 2. 목차 출력
	@Override
	public List<StudyEnrollVO> list() throws Exception {
		return studyEnrollDAO.listAll();
	}
	
	// viewcnt 조회수 
	@Override
	public void viewCount(int s_no) throws Exception {
		studyEnrollDAO.viewCnt(s_no);
	}

	
	// 3. 일반 스터디 모집글 수정

	@Override
	public StudyEnrollVO detailRead(int s_no) throws Exception  {

		return studyEnrollDAO.detailRead(s_no);
	}

	// 4. 수정글 등록 
	@Override
	public void modify(StudyEnrollVO studyVO) throws Exception {
		studyEnrollDAO.update(studyVO);
	}

	// 상세페이지 댓글 등록
	@Override
	public void replyInsert(StudentReplyVO replyVO) throws Exception {
		studyEnrollDAO.replyInsert(replyVO);
	}

	// 댓글 불러오기
	@Override
	public List<StudentReplyVO> replyRead(int s_no) throws Exception {
		return studyEnrollDAO.replyRead(s_no);
	}

	// 상세보기 삭제 
	@Override
	public void studyDelete(int s_no) throws Exception {
		studyEnrollDAO.studyDelete(s_no);
	}

	// 상세보기 댓글 수정 
	@Override
	public void replyUpdate(StudentReplyVO replyVO) throws Exception {
		studyEnrollDAO.replyUpdate(replyVO);
	}

	// 상세보기 댓글 삭제 
	@Override
	public void replyDelete(int r_no) throws Exception {
		studyEnrollDAO.replyDelete(r_no);
	}
	@Override
	public StudentParticipationVO partiCheck(StudentParticipationVO partiVO) throws Exception {
		return studyEnrollDAO.partiCheck(partiVO);
	}




} 
