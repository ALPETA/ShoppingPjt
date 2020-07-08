package com.hardCarry.shopping.dao;

import java.util.HashMap;
import java.util.List;

import com.hardCarry.shopping.entity.BoardEntity;
import com.hardCarry.shopping.entity.join.AdminBoardEntity;
import com.hardCarry.shopping.entity.join.AdminOrderslookupViewEntity;

public interface LogBoardDAO {

	// 통합 리스트 보기(log)
	List<AdminBoardEntity> logAll(HashMap<String, Object> map); // 통합 게시판 리스트

	long logcountAll(String search); // 통합 게시판 count

	// 자유게시판 리스트 보기(log)
	List<AdminBoardEntity> logFreeAll(HashMap<String, Object> map); // 자유 게시판 리스트

	long logcountFreeAll(String search); // 자유 게시판 리스트 count

	AdminBoardEntity logfreeviewdetail(String a); // 자유 게시판 상세 보기

	boolean freedeleteAll(String b_seq); // 자유 게시판 글 삭제

	void freedeletecontents(HashMap<String, Object> map); // 자유 게시판 해당 글 댓글 삭제

	// 공지 사항 리스트 보기(log)
	List<AdminBoardEntity> logNoticeAll(HashMap<String, Object> map); // 공지 사항 게시판 리스트

	long logcountNoticeAll(String search); // 공지 사항 게시판 count

	void save(BoardEntity boardEntity); // 공지 사항 글작성

	AdminBoardEntity lognoticeviewdetail(String a); // 자유 게시판 상세 보기

	AdminBoardEntity logAllviewdetail(String a); // 통합 게시판 상세 보기

	boolean noticedeleteAll(String b_seq); // 자유 게시판 글 삭제

	List<AdminBoardEntity> logfreecomment(HashMap<String, Object> map); // 자유 게시판 댓글 가져오기

	List<AdminBoardEntity> logqandaAll(HashMap<String, Object> map); // q&a 글 보기

	List<AdminBoardEntity> logcheck(HashMap<String, Object> map); // 해당 유저 게시판 리스트

	List<AdminBoardEntity> logcountcheckAll(HashMap<String, Object> map); // 해당 유저 게시판 리스트 총 개수

	void savefandq(BoardEntity boardEntity); // F&Q 게시판 작성

	boolean fandqdeleteAll(String b_seq); // F&Q 글 삭제
	
	List<AdminBoardEntity> logqaAll(HashMap<String, Object> map); // Q&A 게시판 리스트

	long logcountqaAll(String search); // Q&A 게시판 리스트 개수

	AdminBoardEntity logqaviewdetail(String a); // q&a 상세 보기 

	//AdminBoardEntity qandainsert(HashMap<String, Object> map);  // q&a 관리자 댓글 작성
	void qandainsert(AdminBoardEntity AdminBoardEntity);  // q&a 관리자 댓글 작성

	List<AdminBoardEntity> logboardcontent(HashMap<String, Object> map); //해당 유저 댓글을 단 게시판만 보여주기

	List<AdminBoardEntity> logboardcontentcount(HashMap<String, Object> map); // 해당 유저 댓글을 단 게시판만 보여주기 count

	

	

}