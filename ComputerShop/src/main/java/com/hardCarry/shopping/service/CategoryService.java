package com.hardCarry.shopping.service;

import java.util.HashMap;
import java.util.List;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hardCarry.shopping.dao.CategoryDAO;
import com.hardCarry.shopping.dto.FreeBoardUserDTO;
import com.hardCarry.shopping.dto.ReplyDTO;
import com.hardCarry.shopping.entity.BoardEntity;
import com.hardCarry.shopping.entity.ReplyEntity;
import com.hardCarry.shopping.entity.join.BoardReplyUsersEntity;
import com.hardCarry.shopping.entity.join.FreeBoardUserEntity;
import com.hardCarry.shopping.entity.join.ReplyUsersEntity;

@Service
public class CategoryService {

	@Autowired
	CategoryDAO categoryDAO;

	@Autowired
	ModelMapper mapper;

	@Autowired
	CommonsFileUpload commons;

	@Transactional // 게시판 글 쓰기
	public void boardsave(FreeBoardUserDTO freeBoardUserDTO/* , BoardimgDTO boardimgDTO, MultipartFile files */)
			throws Exception {
		FreeBoardUserEntity freeBoardUserEntity = mapper.map(freeBoardUserDTO, FreeBoardUserEntity.class);
		freeBoardUserEntity.initBoard();
		categoryDAO.boardwrite(freeBoardUserEntity);

		/*
		 * BoardImgEntity boardimgEntity = mapper.map(boardimgDTO,
		 * BoardImgEntity.class); String imgName = commons.getRenameFile(files);
		 * boardimgEntity.setBi_imgPath(CommonsFileUpload.MAIN_IMG_PATH + imgName);
		 * commons.fileWrite(files, commons.getMainImgPath() + imgName);
		 * this.createboard(boardEntity, boardimgEntity);
		 */
	}
	// 게시판 글쓰기(사진 등록)

	/*
	 * public void createboard(BoardEntity boardEntity, BoardImgEntity
	 * boardimgEntity) { boardimgEntity.setBi_seq(boardEntity.getB_seq());
	 * categoryDAO.boardImg(boardimgEntity); }
	 */

	// 자유게시판 리스트 보기
	public List<FreeBoardUserEntity> findFreeAll(int page, int length, String search) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("page", page * length);
		map.put("size", length);
		map.put("search", search);
		return categoryDAO.findFreeAll(map);
	}

	public long countFreeAll(String search) {
		return categoryDAO.countFreeAll(search);
	}
	// 자유게시판 리스트 보기 끝

	// Q&A 리스트 보기
	public List<FreeBoardUserEntity> findQaAll(int page, int length, String search) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("page", page * length);
		map.put("size", length);
		map.put("search", search);
		return categoryDAO.findQaAll(map);
	}

	public long countQaAll(String search) {
		return categoryDAO.countQaAll(search);
	}
	// Q&A 리스트 보기 끝

	// 공지사항 리스트 보기
	public List<FreeBoardUserEntity> findNtAll(int page, int length, String search) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("page", page * length);
		map.put("size", length);
		map.put("search", search);
		return categoryDAO.findNtAll(map);
	}

	public long countNtAll(String search) {
		return categoryDAO.countNtAll(search);
	}
	// 공지사항 리스트 보기 끝

	// 자주 묻는 질문 리스트 보기
	public List<FreeBoardUserEntity> findFreqAll(int page, int length) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("page", page * length);
		map.put("size", length);
		return categoryDAO.findFreqAll(map);
	}

	// 자유게시판 상세 보기
	public BoardReplyUsersEntity boardView(int seq) {
		return categoryDAO.boardView(seq);
	}

	// 자유게시판 수정
	@Transactional
	public void updateFreeBoard(BoardEntity boardEntity) {
		categoryDAO.updateFreeBoard(boardEntity);
	}

	// 게시판 삭제
	@Transactional
	public void deleteBoard(long seq) {
		categoryDAO.deleteBoard(seq);
	}

	// 게시판 삭제 - 댓글 먼저 삭제
	@Transactional
	public void deleteBoardReply(long seq) {
		categoryDAO.deleteBoardReply(seq);
	}

	// 자유게시판 댓글 등록
	@Transactional
	public void replyUpload(ReplyDTO replyDTO) {
		ReplyEntity replyEntity = mapper.map(replyDTO, ReplyEntity.class);
		replyEntity.initBoard();
		categoryDAO.replyUpload(replyEntity);
	}

	// 자유게시판 리스트 보기
	public List<ReplyUsersEntity> getFreeList(String seq) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("b_seq", seq);
		return categoryDAO.getFreeList(map);
	}

	// 조회수 처리
	public void addHit(int b_seq) {
		categoryDAO.addHit(b_seq);
	}

	// 댓글 삭제
	@Transactional
	public void deleteReply(long r_uSeq, long r_bSeq, long r_seq) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("r_uSeq", r_uSeq);
		map.put("r_bSeq", r_bSeq);
		map.put("r_seq", r_seq);
		categoryDAO.deleteReply(map);
	}

	// 댓글 수정 상세 보기
	public BoardReplyUsersEntity replyUpdateView(int seq) {
		return categoryDAO.replyUpdateView(seq);
	}

	// 자유게시판 수정
	@Transactional
	public void replyUpdate(ReplyUsersEntity ReplyUsersEntity) {
		categoryDAO.replyUpdate(ReplyUsersEntity);
	}
}
