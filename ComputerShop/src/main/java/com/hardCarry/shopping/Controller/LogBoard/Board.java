package com.hardCarry.shopping.Controller.LogBoard;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.hardCarry.shopping.dto.AdminBoardDTO;
import com.hardCarry.shopping.dto.BoardDTO;
import com.hardCarry.shopping.entity.UsersEntity;
import com.hardCarry.shopping.service.LogBoardService;

@Controller
@RequestMapping("logBoard")
public class Board {
	@Autowired
	LogBoardService logBoardService;

	@RequestMapping(value = "add", method = RequestMethod.POST) // 공지 사항 등록 + 사진 등록
	public String addProduct(BoardDTO boardDTO, MultipartFile files, HttpServletRequest request, HttpServletResponse response) throws Exception {
		String title = request.getParameter("b_title");
		String content = request.getParameter("b_content");
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
			logBoardService.save(boardDTO, files);
			return "redirect:../lognotice.do";
		}
	}

	@RequestMapping(value = "logfreedelete", method = RequestMethod.GET) // 자유 게시판 삭제
	public String logfreedelete(String b_seq) {
		System.out.println(b_seq);
		logBoardService.freedeleteAll(b_seq);
		return "redirect:/logfree.do";
	}

//	@RequestMapping(value = "logqandainsert", method = RequestMethod.POST) // q&a 관리자 댓글 작성
//	public String logqandainsert(String r_bSeq, HttpServletRequest request) {
//		String r_content = request.getParameter("r_content");
//		System.out.println("ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ^^ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ");
//		System.out.println(r_content);
//		System.out.println(r_bSeq);
//		logBoardService.qandainsert(r_content, r_bSeq);
//		String referer = request.getHeader("Referer");
//		return "redirect:" + referer;
//	}

	/*
	 * @RequestMapping(value = "logqandainsert", method = RequestMethod.POST) 공지 사항
	 * 댓글 보기 public @ResponseBody String LotNoticeList(@RequestParam(defaultValue =
	 * "") String r_bSeq,
	 *
	 * @RequestParam(defaultValue = "") String b_seq, HttpServletRequest request,
	 * Model model) throws Exception { String r_content =
	 * request.getParameter("r_content");
	 *
	 * SimpleDateFormat format1 = new SimpleDateFormat ( "yyyy-MM-dd"); Date time =
	 * new Date(); String r_createDate = format1.format(time);
	 *
	 * HashMap<String, Object> result = new HashMap<String, Object>();
	 * AdminBoardEntity list = logBoardService.qandainsert(r_content, r_createDate
	 * ,r_bSeq); result.put("data", list);
	 *
	 * return "redirect:logqaviewdetail.do?name=" + b_seq; }
	 */

	@RequestMapping(value = "logqandainsert", method = RequestMethod.POST) /* 공지 사항 댓글 보기 */
	public String LotNoticeList(AdminBoardDTO AdminBoardDTO, HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
		long r_uSeq = 0;
		PrintWriter out = response.getWriter();
		if (null != request.getSession().getAttribute("admin")) {
			UsersEntity user = (UsersEntity) request.getSession().getAttribute("admin");
			r_uSeq = user.getU_seq();
		} else {
			response.setContentType("text/html; charset=UTF-8");
			out.println("<script>alert('로그인 상태를 확인해주세요.'); history.go(-1);</script>");
			out.flush();
			return null;
		}
		String r_content = request.getParameter("r_content");
		long r_bSeq = Long.parseLong(request.getParameter("r_bSeq"));
		AdminBoardDTO.setR_content(r_content);
		AdminBoardDTO.setR_bSeq(r_bSeq);
		AdminBoardDTO.setR_uSeq(r_uSeq);
		logBoardService.qandainsert(AdminBoardDTO);
		String referer = request.getHeader("Referer");
		return "redirect:" + referer;
	}

	@RequestMapping(value = "freecontents", method = RequestMethod.GET) // 자유 게시판 해당 댓글 삭제
	public String freecontents(HttpServletRequest request) {
		System.out.println("ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ시작ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ");
		String a = request.getParameter("r_seq");
		System.out.println(a + "ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ");
		String b[] = a.split(",");
		String aa = b[0];
		String bb = b[1];
		String cc = b[2];
		long r_seq = Long.parseLong(aa);
		long r_uSeq = Long.parseLong(bb);
		long r_bSeq = Long.parseLong(cc);
		System.out.println("ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ");
		/* HashMap<String, Object> result = new HashMap<String, Object>(); */
		logBoardService.freedeletecontents(r_uSeq, r_bSeq, r_seq);
		/* result.put("data", list); */
		String referer = request.getHeader("Referer");
		return "redirect:" + referer;
	}

	@RequestMapping(value = "lognoticedelete", method = RequestMethod.GET) // 자유 게시판 삭제
	public String noticedeleteAll(String b_seq) {
		System.out.println(b_seq);
		logBoardService.noticedeleteAll(b_seq);
		return "redirect:/lognotice.do";
	}

	@RequestMapping(value = "addfandq", method = RequestMethod.POST) // F&Q 등록
	public String addfandq(BoardDTO boardDTO, HttpServletRequest request, HttpServletResponse response) throws Exception {
		long b_uSeq = 0;
		PrintWriter out = response.getWriter();
		if (null != request.getSession().getAttribute("admin")) {
			UsersEntity user = (UsersEntity) request.getSession().getAttribute("admin");
			b_uSeq = user.getU_seq();
		} else {
			response.setContentType("text/html; charset=UTF-8");
			out.println("<script>alert('로그인 상태를 확인해주세요.'); history.go(-1);</script>");
			out.flush();
			return null;
		}
		String title = request.getParameter("b_title");
		String content = request.getParameter("b_content");
		if(title.equals("")&&content.equals("")) {
			response.setContentType("text/html; charset=UTF-8");
			out = response.getWriter();
			out.println("<script>alert('제목과 내용을 입력해주세요.'); history.go(-1);</script>");
			out.flush();
			return null;
		}else if(title.equals("")) {
			response.setContentType("text/html; charset=UTF-8");
			out = response.getWriter();
			out.println("<script>alert('제목을 입력해주세요.'); history.go(-1);</script>");
			out.flush();
			return null;
		}else if(content.equals("")) {
			response.setContentType("text/html; charset=UTF-8");
			out = response.getWriter();
			out.println("<script>alert('내용을 입력해주세요.'); history.go(-1);</script>");
			out.flush();
			return null;
		} else {
			boardDTO.setB_uSeq(b_uSeq);
			logBoardService.savefandq(boardDTO);
			return "redirect:../logfreq.do";
		}
	}

	@RequestMapping(value = "fandq", method = RequestMethod.GET) // F&Q 글 삭제
	public String fandq(String b_seq) {
		logBoardService.fandqdeleteAll(b_seq);
		return "redirect:/logfreq.do";
	}
}
