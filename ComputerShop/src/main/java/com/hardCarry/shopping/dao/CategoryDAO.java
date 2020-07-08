package com.hardCarry.shopping.dao;

import java.util.HashMap;
import java.util.List;

import com.hardCarry.shopping.entity.BoardEntity;
import com.hardCarry.shopping.entity.ReplyEntity;
import com.hardCarry.shopping.entity.join.BoardReplyUsersEntity;
import com.hardCarry.shopping.entity.join.FreeBoardUserEntity;
import com.hardCarry.shopping.entity.join.ReplyUsersEntity;

public interface CategoryDAO {
	// 게시판 글 쓰기
	void boardwrite(FreeBoardUserEntity freeBoardUserEntity);

	/* void boardImg(BoardImgEntity BoardImgEntity); */
	// 게시판 글 쓰기 끝

	// 자유게시판 리스트 보기
	List<FreeBoardUserEntity> findFreeAll(HashMap<String, Object> map);

	long countFreeAll(String search);
	// 자유게시판 리스트 보기 끝

	// q&a 리스트 보기
	List<FreeBoardUserEntity> findQaAll(HashMap<String, Object> map);

	long countQaAll(String search);
	// q&a 리스트 보기 끝

	// 공지사항 리스트 보기
	List<FreeBoardUserEntity> findNtAll(HashMap<String, Object> map);

	long countNtAll(String search);
	// 공지사항 리스트 보기 끝

	// 자주 묻는 질문 리스트 보기
	List<FreeBoardUserEntity> findFreqAll(HashMap<String, Object> map);

	// 게시판 상세 페이지
	BoardReplyUsersEntity boardView(int seq);

	// 자유게시판 수정
	void updateFreeBoard(BoardEntity boardEntity);

	// 게시판 삭제
	void deleteBoard(long seq);

	// 게시판 삭제 - 댓글 먼저 삭제
	void deleteBoardReply(long seq);

	// 게시판 댓글 쓰기
	void replyUpload(ReplyEntity replyEntity);

	// 댓글 리스트 보기
	List<ReplyUsersEntity> getFreeList(HashMap<String, Object> map);

	// 게시판 조회 수 처리
	void addHit(int b_seq);

	// 댓글 삭제
	void deleteReply(HashMap<String, Object> map);

	// 댓글 수정 페이지
	BoardReplyUsersEntity replyUpdateView(int seq);

	// 댓글 수정 이벤트
	void replyUpdate(ReplyUsersEntity ReplyUsersEntity);
}
