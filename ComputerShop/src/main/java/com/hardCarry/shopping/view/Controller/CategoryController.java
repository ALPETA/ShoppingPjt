package com.hardCarry.shopping.view.Controller;

import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hardCarry.shopping.dto.FreeBoardUserDTO;
import com.hardCarry.shopping.dto.ReplyDTO;
import com.hardCarry.shopping.entity.BoardEntity;
import com.hardCarry.shopping.entity.UsersEntity;
import com.hardCarry.shopping.entity.join.BoardReplyUsersEntity;
import com.hardCarry.shopping.entity.join.FreeBoardUserEntity;
import com.hardCarry.shopping.entity.join.ReplyUsersEntity;
import com.hardCarry.shopping.service.CategoryService;
/*
 * 1. 자유게시판
 * 2. Q&A
 * 3. 공지사항
 * 4. 자주 묻는 질문
 * 5. 공통
 */
@Controller
public class CategoryController { // 카테고리 컨트롤러

	@Autowired
	CategoryService categoryService;

// ----------------------------------------------------------------------------------------------------------자유 게시판
	@RequestMapping(value = "FreeBoard", method = RequestMethod.GET) /* 자유게시판 리스트 보기 */
	public @ResponseBody HashMap<?, ?> getFreeList(@RequestParam(defaultValue = "0") int start,
			@RequestParam(defaultValue = "10") int length, @RequestParam(defaultValue = "") String search,
			HttpServletRequest request) throws Exception {
		HashMap<String, Object> result = new HashMap<String, Object>();
		List<FreeBoardUserEntity> list = categoryService.findFreeAll(start, length, search);
		long totalCount = categoryService.countFreeAll(search);
		result.put("data", list);
		result.put("recordsTotal", totalCount);
		return result;
	}

	@RequestMapping("free.do") // 자유게시판 페이지
	public String free(Model model) {
		return "freeView/free";
	}

	@RequestMapping("freeview.do") // 자유게시판 상세 페이지
	public String freeview(Model model, HttpServletRequest request) {
		int seq = Integer.parseInt(request.getParameter("name"));
		addHit(seq);
		BoardReplyUsersEntity list = categoryService.boardView(seq);
		model.addAttribute("request", list);
		return "./freeView/freeview";
	}

	@RequestMapping("freewrite.do") // 자유게시판 글 작성 페이지
	public String freewrite(Model model, HttpServletRequest request, HttpServletResponse response) throws Exception {
		if (request.getSession().getAttribute("user") != null) {
			return "./freeView/freewrite";
		} else {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('로그인 정보를 확인해주세요.'); history.go(-1);</script>");
			out.flush();
			return "./freeView/free";
		}

	}

	@RequestMapping("freeupdate.do") // 자유게시판 글 수정 페이지
	public String freeupdate(Model model, HttpServletRequest request, HttpServletResponse response) throws Exception {
		String id = null;
		if (null != request.getSession().getAttribute("user")) {
			UsersEntity user = (UsersEntity) request.getSession().getAttribute("user");
			id = user.getU_id();
		} else {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('권한이 없습니다.'); history.go(-1);</script>");
			out.flush();
			return "./freeView/free";
		}
		int seq = Integer.parseInt(request.getParameter("name"));
		String userid = request.getParameter("id");
		if (id.equals(userid)) {
			BoardReplyUsersEntity list = categoryService.boardView(seq);
			model.addAttribute("request", list);
			return "./freeView/freeupdate";
		} else {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('권한이 없습니다.'); history.go(-1);</script>");
			out.flush();
			return "./freeView/free";
		}
	}

	// 자유게시판 수정 핸들링
	@RequestMapping(value = "updateFreeBoard", method = RequestMethod.POST)
	public String updateFreeBoard(BoardEntity boardEntity, HttpServletRequest request) throws Exception {

		String title = request.getParameter("title");
		String content = request.getParameter("content");
		long seq = Long.parseLong(request.getParameter("name"));
		boardEntity.setB_title(title);
		boardEntity.setB_content(content);
		boardEntity.setB_seq(seq);
		categoryService.updateFreeBoard(boardEntity);
		return "redirect:./free.do";
	}

	// 자유 게시판 글 쓰기 핸들러
	@RequestMapping(value = "addFreeBoard", method = RequestMethod.POST)
	public String addFreeBoard(FreeBoardUserDTO freeBoardUserDTO, HttpServletRequest request, HttpServletResponse response) throws Exception {
		String id = null;
		long seq = 0;
		if (null != request.getSession().getAttribute("user")) {
			UsersEntity user = (UsersEntity) request.getSession().getAttribute("user");
			id = user.getU_id();
			seq = user.getU_seq();
		}
		String title = request.getParameter("title");
		String content = request.getParameter("content");

		if(title.equals("")&&content.equals("")) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('제목과 내용을 입력해주세요.'); history.go(-1);</script>");
			out.flush();
			return null;
		}else if(title.equals("")) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('제목을 입력해주세요.'); history.go(-1);</script>");
			out.flush();
			return null;
		}else if(content.equals("")) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('내용을 입력해주세요.'); history.go(-1);</script>");
			out.flush();
			return null;
		}else {
			freeBoardUserDTO.setB_title(title);
			freeBoardUserDTO.setB_content(content);
			freeBoardUserDTO.setB_uSeq(seq);
			freeBoardUserDTO.setB_type("1");
			categoryService.boardsave(freeBoardUserDTO);
			return "redirect:./free.do";
		}
	}

	@RequestMapping(value = "delete") // 자유게시판 삭제
	public String delete(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String id = null;
		PrintWriter out = response.getWriter();
		if (null != request.getSession().getAttribute("user")) {
			UsersEntity user = (UsersEntity) request.getSession().getAttribute("user");
			id = user.getU_id();
		} else {
			response.setContentType("text/html; charset=UTF-8");
			out.println("<script>alert('권한이 없습니다.'); history.go(-1);</script>");
			out.flush();
			return null;
		}
		long seq = Long.parseLong(request.getParameter("name"));
		String userid = request.getParameter("id");

		if (id.equals(userid)) {
			categoryService.deleteBoardReply(seq);
			categoryService.deleteBoard(seq);
			return "./freeView/free";
		}

		else {
			response.setContentType("text/html; charset=UTF-8");
			out.println("<script>alert('권한이 없습니다.'); history.go(-1);</script>");
			out.flush();
			return null;
		}
	}

	// 자유게시판 댓글 등록
	@RequestMapping(value = "reply", method = RequestMethod.POST)
	public String addFreeReply(Model model, ReplyDTO replyDTO, HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		long u_seq = 0;
		PrintWriter out = response.getWriter();
		if (null != request.getSession().getAttribute("user")) {
			UsersEntity user = (UsersEntity) request.getSession().getAttribute("user");
			u_seq = user.getU_seq();
		} else {
			response.setContentType("text/html; charset=UTF-8");
			out.println("<script>alert('권한이 없습니다.'); history.go(-1);</script>");
			out.flush();
			return null;
		}
		long b_seq = Long.parseLong(request.getParameter("seq"));
		String content = request.getParameter("content");
		if (content == null || content.equals("")) {
			response.setContentType("text/html; charset=UTF-8");
			out.println("<script>alert('내용을 입력해주세요.'); history.go(-1);</script>");
			out.flush();
			return null;
		} else {
			replyDTO.setR_content(content);
		}
		replyDTO.setR_uSeq(u_seq);
		replyDTO.setR_bSeq(b_seq);
		categoryService.replyUpload(replyDTO);
		String referer = request.getHeader("Referer");
		return "redirect:" + referer;
	}

	// 자유게시판 댓글 수정 페이지
	@RequestMapping(value = "updateReplyView", method = RequestMethod.GET)
	public String updateFreeReplyView(Model model, HttpServletRequest request, HttpServletResponse response) throws Exception {
		long user_seq=0;
		PrintWriter out = response.getWriter();
		if (null != request.getSession().getAttribute("user")) {
			UsersEntity user = (UsersEntity) request.getSession().getAttribute("user");
			user_seq = user.getU_seq();
		} else {
			response.setContentType("text/html; charset=UTF-8");
			out.println("<script>alert('권한이 없습니다.'); history.go(-1);</script>");
			out.flush();
			return null;
		}
		int seq = Integer.parseInt(request.getParameter("name"));
		int u_seq = Integer.parseInt(request.getParameter("num"));
		if(user_seq!=u_seq) {
			response.setContentType("text/html; charset=UTF-8");
			out.println("<script>alert('본인 댓글만 수정 가능합니다.'); history.go(-1);</script>");
			out.flush();
			return null;
		} else {
			BoardReplyUsersEntity list = categoryService.replyUpdateView(seq);
			model.addAttribute("request", list);
			return "/freeView/freeReplyUpdate";
		}
	}

	// 자유게시판 댓글 수정 등록
	@RequestMapping(value = "updateReply", method = RequestMethod.POST)
	public String updateFreeReply(ReplyUsersEntity ReplyUsersEntity, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		long u_seq = 0;
		PrintWriter out = response.getWriter();
		if (null != request.getSession().getAttribute("user")) {
			UsersEntity user = (UsersEntity) request.getSession().getAttribute("user");
			u_seq = user.getU_seq();
		} else {
			response.setContentType("text/html; charset=UTF-8");
			out.println("<script>alert('로그인 정보를 확인해주세요.'); history.go(-1);</script>");
			out.flush();
			return null;
		}
		long r_seq = Long.parseLong(request.getParameter("seq"));
		String content = request.getParameter("content");
		String b_seq = request.getParameter("board");
		if (content == null || content.equals("")) {
			response.setContentType("text/html; charset=UTF-8");
			out.println("<script>alert('내용을 입력해주세요.'); history.go(-1);</script>");
			out.flush();
			return null;
		} else {
			ReplyUsersEntity.setR_content(content);
		}
		ReplyUsersEntity.setR_uSeq(u_seq);
		ReplyUsersEntity.setR_seq(r_seq);
		categoryService.replyUpdate(ReplyUsersEntity);
		return "redirect:/freeview.do?name=" + b_seq;
	}

// ----------------------------------------------------------------------------------------------------------Q&A
	@RequestMapping(value = "QaBoard", method = RequestMethod.GET) /* Q&A 리스트 보기 */
	public @ResponseBody HashMap<?, ?> getQaList(@RequestParam(defaultValue = "0") int start,
			@RequestParam(defaultValue = "10") int length, @RequestParam(defaultValue = "") String search,
			HttpServletRequest request) throws Exception {
		HashMap<String, Object> result = new HashMap<String, Object>();
		List<FreeBoardUserEntity> list = categoryService.findQaAll(start, length, search);
		long totalCount = categoryService.countQaAll(search);
		result.put("data", list);
		result.put("recordsTotal", totalCount);
		return result;
	}

	@RequestMapping("qa.do") // Q & A 페이지
	public String qa(Model model) {
		return "./qaView/qa";
	}

	@RequestMapping("qaview.do") // Q & A 상세 페이지
	public String qaview(Model model, HttpServletRequest request, HttpServletResponse response) throws Exception {
		int seq = Integer.parseInt(request.getParameter("name"));
		int u_id = Integer.parseInt(request.getParameter("id")); // 게시글 쓴 사람
		int user_id = 0; // 로그인 한 사람
		String isAdmin = null;
		if (null != request.getSession().getAttribute("user")) {
			UsersEntity user = (UsersEntity) request.getSession().getAttribute("user");
			user_id = (int) user.getU_seq();
			isAdmin = user.getU_auth();
		} else {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('로그인 정보를 확인해주세요.'); history.go(-1);</script>");
			out.flush();
			return "qaView/qa";
		}

		if (user_id == u_id || isAdmin.equals("ADMIN")) {
			addHit(seq);
			BoardReplyUsersEntity list = categoryService.boardView(seq);
			model.addAttribute("request", list);
			return "qaView/qaview";
		} else {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('본인 게시물만 확인하실 수 있습니다.'); history.go(-1);</script>");
			out.flush();
			return "qaView/qa";
		}
	}

	@RequestMapping("qawrite.do") // Q & A 글 작성 페이지
	public String qawrite(Model model, HttpServletRequest request, HttpServletResponse response) throws Exception {
		if (request.getSession().getAttribute("user") != null) {
			return "./qaView/qawrite";
		} else {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('로그인 정보를 확인해주세요.'); history.go(-1);</script>");
			out.flush();
			return "./qaView/qa";
		}
	}

	// Qa게시판 글 쓰기 핸들러
	@RequestMapping(value = "addQaBoard", method = RequestMethod.POST)
	public String addQaBoard(FreeBoardUserDTO freeBoardUserDTO, HttpServletRequest request, HttpServletResponse response) throws Exception {
		String id = null;
		long seq = 0;
		if (null != request.getSession().getAttribute("user")) {
			UsersEntity user = (UsersEntity) request.getSession().getAttribute("user");
			id = user.getU_id();
			seq = user.getU_seq();
		}
		String title = request.getParameter("title");
		String content = request.getParameter("content");

		if(title.equals("")&&content.equals("")) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('제목과 내용을 입력해주세요.'); history.go(-1);</script>");
			out.flush();
			return null;
		}else if(title.equals("")) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('제목을 입력해주세요.'); history.go(-1);</script>");
			out.flush();
			return null;
		}else if(content.equals("")) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('내용을 입력해주세요.'); history.go(-1);</script>");
			out.flush();
			return null;
		}else {
			freeBoardUserDTO.setB_title(title);
			freeBoardUserDTO.setB_content(content);
			freeBoardUserDTO.setB_uSeq(seq);
			freeBoardUserDTO.setB_type("2");
			categoryService.boardsave(freeBoardUserDTO);
		}
		return "redirect:./qa.do";
	}

	// Q & A 글 수정 페이지
	@RequestMapping("qaupdate.do")
	public String qaupdate(Model model, HttpServletRequest request, HttpServletResponse response) throws Exception {
		String id = null;
		PrintWriter out;
		if (null != request.getSession().getAttribute("user")) {
			UsersEntity user = (UsersEntity) request.getSession().getAttribute("user");
			id = user.getU_id();
		} else {
			response.setContentType("text/html; charset=UTF-8");
			out = response.getWriter();
			out.println("<script>alert('권한이 없습니다.'); history.go(-1);</script>");
			out.flush();
			return "./qaView/qa";
		}
		int seq = Integer.parseInt(request.getParameter("name"));
		String userid = request.getParameter("id");
		if (id.equals(userid)) {
			BoardReplyUsersEntity list = categoryService.boardView(seq);
			model.addAttribute("request", list);
			return "./qaView/qaupdate";
		} else {
			response.setContentType("text/html; charset=UTF-8");
			out = response.getWriter();
			out.println("<script>alert('권한이 없습니다.'); history.go(-1);</script>");
			out.flush();
			return "./qaView/qa";
		}
	}

	// QA게시판 수정 핸들링
	@RequestMapping(value = "updateQaBoard", method = RequestMethod.POST)
	public String updateQaBoard(BoardEntity boardEntity, HttpServletRequest request) throws Exception {
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		long seq = Long.parseLong(request.getParameter("name"));
		boardEntity.setB_title(title);
		boardEntity.setB_content(content);
		boardEntity.setB_seq(seq);
		categoryService.updateFreeBoard(boardEntity);
		return "redirect:./qa.do";

	}

	@RequestMapping(value = "deleteQA") // Q&A게시판 삭제
	public String deleteQA(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String id = null;
		PrintWriter out = response.getWriter();
		if (null != request.getSession().getAttribute("user")) {
			UsersEntity user = (UsersEntity) request.getSession().getAttribute("user");
			id = user.getU_id();
		} else {
			response.setContentType("text/html; charset=UTF-8");
			out.println("<script>alert('권한이 없습니다.'); history.go(-1);</script>");
			out.flush();
			return null;
		}
		long seq = Long.parseLong(request.getParameter("name"));
		String userid = request.getParameter("id");

		if (id.equals(userid)) {
			categoryService.deleteBoardReply(seq);
			categoryService.deleteBoard(seq);
			return "./qaView/qa";
		}

		else {
			response.setContentType("text/html; charset=UTF-8");
			out.println("<script>alert('권한이 없습니다.'); history.go(-1);</script>");
			out.flush();
			return null;
		}
	}

	// Qa 댓글 수정 페이지
	@RequestMapping(value = "updateQaReplyView", method = RequestMethod.GET)
	public String updateQaReplyView(Model model, HttpServletRequest request, HttpServletResponse response) {
		int seq = Integer.parseInt(request.getParameter("name"));
		BoardReplyUsersEntity list = categoryService.replyUpdateView(seq);
		model.addAttribute("request", list);
		return "/qaView/qaReplyUpdate";
	}

	// Qa 댓글 수정 등록
	@RequestMapping(value = "updateQaReply", method = RequestMethod.POST)
	public String updateQaReply(ReplyUsersEntity ReplyUsersEntity, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		long u_seq = 0;
		PrintWriter out = response.getWriter();
		if (null != request.getSession().getAttribute("user")) {
			UsersEntity user = (UsersEntity) request.getSession().getAttribute("user");
			u_seq = user.getU_seq();
		} else {
			response.setContentType("text/html; charset=UTF-8");
			out.println("<script>alert('로그인 정보를 확인해주세요.'); history.go(-1);</script>");
			out.flush();
			return null;
		}
		long r_seq = Long.parseLong(request.getParameter("seq"));
		String content = request.getParameter("content");
		String b_seq = request.getParameter("board");
		if (content == null || content.equals("")) {
			response.setContentType("text/html; charset=UTF-8");
			out.println("<script>alert('내용을 입력해주세요.'); history.go(-1);</script>");
			out.flush();
			return null;
		} else {
			ReplyUsersEntity.setR_content(content);
		}
		ReplyUsersEntity.setR_uSeq(u_seq);
		ReplyUsersEntity.setR_seq(r_seq);
		categoryService.replyUpdate(ReplyUsersEntity);
		return "redirect:/qaview.do?name=" + b_seq;
	}

	// QA게시판 댓글 등록
	@RequestMapping(value = "replyQA", method = RequestMethod.POST)
	public String addQAReply(Model model, ReplyDTO replyDTO, HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		long u_seq = 0;
		PrintWriter out = response.getWriter();
		if (null != request.getSession().getAttribute("user")) {
			UsersEntity user = (UsersEntity) request.getSession().getAttribute("user");
			u_seq = user.getU_seq();
		} else {
			response.setContentType("text/html; charset=UTF-8");
			out.println("<script>alert('권한이 없습니다.'); history.go(-1);</script>");
			out.flush();
			return null;
		}
		long b_seq = Long.parseLong(request.getParameter("seq"));
		String content = request.getParameter("content");

		if (content == null || content.equals("")) {
			response.setContentType("text/html; charset=UTF-8");
			out.println("<script>alert('내용을 입력해주세요.'); history.go(-1);</script>");
			out.flush();
			return null;
		} else {
			replyDTO.setR_content(content);
		}
		replyDTO.setR_uSeq(u_seq);
		replyDTO.setR_bSeq(b_seq);
		categoryService.replyUpload(replyDTO);
		String referer = request.getHeader("Referer");
		return "redirect:" + referer;
	}

//----------------------------------------------------------------------------------------------------------공지사항
	@RequestMapping(value = "NtBoard", method = RequestMethod.GET) /* 공지사항 리스트 보기 */
	public @ResponseBody HashMap<?, ?> getNtList(@RequestParam(defaultValue = "0") int start,
			@RequestParam(defaultValue = "10") int length, @RequestParam(defaultValue = "") String search,
			HttpServletRequest request) throws Exception {
		HashMap<String, Object> result = new HashMap<String, Object>();
		List<FreeBoardUserEntity> list = categoryService.findNtAll(start, length, search);

		long totalCount = categoryService.countNtAll(search);
		result.put("data", list);
		result.put("recordsTotal", totalCount);
		return result;
	}

	@RequestMapping("notice.do") // 공지사항 페이지
	public String notice(Model model) {
		return "noticeView/notice";
	}

	@RequestMapping("noticeview.do") // 공지사항 뷰 페이지
	public String noticeview(Model model, HttpServletRequest request) {
		int seq = Integer.parseInt(request.getParameter("name"));
		addHit(seq);
		BoardReplyUsersEntity list = categoryService.boardView(seq);
		model.addAttribute("request", list);
		return "noticeView/noticeview";
	}

// --------------------------------------------------------------------------------------------------------자주 묻는 질문
	@RequestMapping(value = "freqBoard", method = RequestMethod.GET) /* 공지사항 리스트 보기 */
	public @ResponseBody HashMap<?, ?> getfreqList(@RequestParam(defaultValue = "0") int start,
			@RequestParam(defaultValue = "10") int length, HttpServletRequest request) throws Exception {
		HashMap<String, Object> result = new HashMap<String, Object>();
		List<FreeBoardUserEntity> list = categoryService.findFreqAll(start, length);
		result.put("data", list);
		return result;
	}

	@RequestMapping("freq.do") // 자주하는 질문 페이지
	public String freq(Model model) {
		return "freqView/freq";
	}
//--------------------------------------------------------------------------------------------------------------공통

	@RequestMapping(value = "ReplyList", method = RequestMethod.GET) /* 게시물 댓글 보기 */
	public @ResponseBody HashMap<?, ?> getReplyList(HttpServletRequest request,
			@RequestParam(defaultValue = "1") String seq) throws Exception {
		HashMap<String, Object> result = new HashMap<String, Object>();
		List<ReplyUsersEntity> list = categoryService.getFreeList(seq);
		result.put("data", list);
		return result;
	}

	@RequestMapping(value = "addHit", method = RequestMethod.GET) /* 조회수 처리 */
	public void addHit(int seq) {
		categoryService.addHit(seq);
	}

	@RequestMapping(value = "deleteReply") // 게시판 댓글 삭제
	public String deleteReply(HttpServletRequest request, HttpServletResponse response) throws Exception {
		long id;
		PrintWriter out = response.getWriter();
		if (null != request.getSession().getAttribute("user")) {
			UsersEntity user = (UsersEntity) request.getSession().getAttribute("user");
			id = user.getU_seq();
		} else {
			response.setContentType("text/html; charset=UTF-8");
			out.println("<script>alert('권한이 없습니다.'); history.go(-1);</script>");
			out.flush();
			return null;
		}
		long r_uSeq = Long.parseLong(request.getParameter("id"));
		long r_bSeq = Long.parseLong(request.getParameter("num"));
		long r_seq = Long.parseLong(request.getParameter("board"));
		if (id == r_uSeq) {
			categoryService.deleteReply(r_uSeq, r_bSeq, r_seq);
		}

		else {
			response.setContentType("text/html; charset=UTF-8");
			out.println("<script>alert('권한이 없습니다.'); history.go(-1);</script>");
			out.flush();
			return "./qaView/qa";
		}
		String referer = request.getHeader("Referer");
		return "redirect:" + referer;
	}
}