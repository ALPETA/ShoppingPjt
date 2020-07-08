package com.hardCarry.shopping.service;

import java.util.HashMap;
import java.util.List;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import com.hardCarry.shopping.dao.LogBoardDAO;
import com.hardCarry.shopping.dto.AdminBoardDTO;
import com.hardCarry.shopping.dto.BoardDTO;
import com.hardCarry.shopping.entity.BoardEntity;
import com.hardCarry.shopping.entity.join.AdminBoardEntity;
import com.hardCarry.shopping.entity.join.AdminOrderslookupViewEntity;

@Service
public class LogBoardService {

	@Autowired
	LogBoardDAO logBoardDAO;

	@Autowired
	ModelMapper mapper;

	@Autowired
	CommonsFileUpload commons;

	public List<AdminBoardEntity> logAll(int page, int length, String search) { // 통합
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("page", page * length);
		map.put("size", length);
		map.put("search", search);
		return logBoardDAO.logAll(map);
	}

	public long logcountAll(String search) { // 통합 개수
		return logBoardDAO.logcountAll(search);

	}

	public List<AdminBoardEntity> logFreeAll(int page, int length, String search, String b_type) { // 자유 리스트
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("page", page * length);
		map.put("size", length);
		map.put("search", search);
		map.put("b_type", b_type);
		return logBoardDAO.logFreeAll(map);
	}

	public long logcountFreeAll(String search) { // 자유 리스트 카운트
		return logBoardDAO.logcountFreeAll(search);

	}

	public List<AdminBoardEntity> logNoticeAll(int page, int length, String search, String b_type) { // 공지리스트
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("page", page * length);
		map.put("size", length);
		map.put("search", search);
		map.put("b_type", b_type);
		return logBoardDAO.logNoticeAll(map);
	}

	public long logcountNoticeAll(String search) { // 공지 리스트 카운트
		return logBoardDAO.logcountNoticeAll(search);

	}

	@Transactional
	public void save(BoardDTO boardDTO, MultipartFile files) throws Exception { // 공지 사항 글 작성 처리
		BoardEntity boardEntity = mapper.map(boardDTO, BoardEntity.class);
		String imgName = commons.getRenameFile(files);
		boardEntity.setB_imgPath(CommonsFileUpload.MAIN_IMG_PATH + imgName);
		boardEntity.initBoard();
		logBoardDAO.save(boardEntity);
		commons.fileWrite(files, commons.getMainImgPath() + imgName);

	}

	public AdminBoardEntity logfreeviewdetail(String a) { // 자유게시판 상세 보기
		return logBoardDAO.logfreeviewdetail(a);

	}

	public boolean freedeleteAll(String b_seq) {
		return logBoardDAO.freedeleteAll(b_seq);

	}

	public AdminBoardEntity lognoticeviewdetail(String a) { // 공지 사항 상세 보기
		return logBoardDAO.lognoticeviewdetail(a);

	}

	public AdminBoardEntity logAllviewdetail(String a) { // 공지 사항 상세 보기
		return logBoardDAO.logAllviewdetail(a);

	}

	public boolean noticedeleteAll(String b_seq) { // 공지 사항 게시판 삭제
		return logBoardDAO.noticedeleteAll(b_seq);

	}

	public List<AdminBoardEntity> logfreecomment(String b_seq) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("b_seq", b_seq);
		return logBoardDAO.logfreecomment(map);
	}

	/*
	 * public List<AdminBoardEntity> freedeletecontents(String r_seq, String r_uSeq,
	 * String r_bSeq) { // 자유 게시판 해당 글 댓글 삭제 HashMap<String, Object> map = new
	 * HashMap<String, Object>(); map.put("r_seq", r_seq); map.put("r_uSeq",
	 * r_uSeq); map.put("r_bSeq", r_bSeq); return
	 * logBoardDAO.freedeletecontents(map); }
	 */

	public void freedeletecontents(long r_uSeq, long r_bSeq, long r_seq) { // 공지 사항 게시판 삭제
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("r_uSeq", r_uSeq);
		map.put("r_bSeq", r_bSeq);
		map.put("r_seq", r_seq);
		logBoardDAO.freedeletecontents(map);

	}

	public List<AdminBoardEntity> logqandaAll(String b_type) {// q&a 글 보기
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("b_type", b_type);
		return logBoardDAO.logqandaAll(map);
	}

	public List<AdminBoardEntity> logcheck(int page, int length, String search, String u_seq) { //해당 유저 이용한 게시판
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("page", page * length);
		map.put("size", length);
		map.put("search", search);
		map.put("u_seq", u_seq);
		return logBoardDAO.logcheck(map);
	}

	public List<AdminBoardEntity> logcountcheckAll(String search, String u_seq) { // 해당 유저 이용한 게시판 총 개수
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("u_seq", u_seq);
		map.put("search", search);
		return logBoardDAO.logcountcheckAll(map);
	}

	@Transactional
	public void savefandq(BoardDTO boardDTO) { // F&Q 작성
		BoardEntity boardEntity = mapper.map(boardDTO, BoardEntity.class);
		boardEntity.initBoard();
		logBoardDAO.savefandq(boardEntity);

	}

	public boolean fandqdeleteAll(String b_seq) { // F&Q
		return logBoardDAO.fandqdeleteAll(b_seq);

	}

	public List<AdminBoardEntity> logqaAll(int page, int length, String search, String b_type) { //f&a 리스트 보기
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("page", page * length);
		map.put("size", length);
		map.put("search", search);
		map.put("b_type", b_type);
		return logBoardDAO.logqaAll(map);
	}

	public long logcountqaAll(String search) { //q&a 리스트 개수
		return logBoardDAO.logcountqaAll(search);
	}

	public AdminBoardEntity logqaviewdetail(String a) { //q&a 상세 보기
		return logBoardDAO.logqaviewdetail(a);
	}

	/*
	 * public AdminBoardEntity qandainsert(String r_content, String r_createDate,
	 * String r_bSeq) { // q&a 관리자 댓글 작성 HashMap<String, Object> map = new
	 * HashMap<String, Object>(); map.put("r_content", r_content);
	 * map.put("r_createDate", r_createDate); map.put("r_bSeq", r_bSeq); return
	 * logBoardDAO.qandainsert(map); }
	 */

	public void qandainsert(AdminBoardDTO AdminBoardDTO) { // q&a 관리자 댓글 작성
		AdminBoardEntity AdminBoardEntity = mapper.map(AdminBoardDTO, AdminBoardEntity.class);
		AdminBoardEntity.initBoardo();
		logBoardDAO.qandainsert(AdminBoardEntity);
	}

	public List<AdminBoardEntity> logboardcontent(int page, int length, String search, String u_seq) { //해당 유저 댓글을 단 게시판만 보여주기
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("page", page * length);
		map.put("size", length);
		map.put("search", search);
		map.put("u_seq", u_seq);
		return logBoardDAO.logboardcontent(map);
	}

	public List<AdminBoardEntity> logboardcontentcount(String search, String u_seq) { //해당 유저 댓글을 단 게시판만 보여주기 count
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("search", search);
		map.put("u_seq", u_seq);
		return logBoardDAO.logboardcontentcount(map);
	}

}