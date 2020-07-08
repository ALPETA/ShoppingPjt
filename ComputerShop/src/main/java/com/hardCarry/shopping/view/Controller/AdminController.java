package com.hardCarry.shopping.view.Controller;

import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
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

import com.hardCarry.shopping.entity.join.AdminBoardEntity;
import com.hardCarry.shopping.entity.join.AdminOrderslookupViewEntity;
import com.hardCarry.shopping.entity.join.AdminProductViewEntity;
import com.hardCarry.shopping.entity.join.AdminUserViewEntity;
import com.hardCarry.shopping.entity.join.AdminuopViewEntity;
import com.hardCarry.shopping.entity.join.UsersOrderEntity;
import com.hardCarry.shopping.service.LogBoardService;
import com.hardCarry.shopping.service.OrderslookupService;
import com.hardCarry.shopping.service.ProductService;
import com.hardCarry.shopping.service.UserService;

@Controller
public class AdminController { // 관리자 컨트롤러

	@Autowired
	UserService userservice;

	@Autowired
	ProductService productService;

	@RequestMapping(value = "adminUser", method = RequestMethod.GET) /* logmemberlookup.jsp / ajax 데이터 받고 넘기기 */
	public @ResponseBody HashMap<?, ?> getList1(@RequestParam(defaultValue = "0") int start,
			@RequestParam(defaultValue = "10") int length, @RequestParam(defaultValue = "") String search,
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		if (null == request.getSession().getAttribute("admin")) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('권한이 없습니다.'); history.go(-1);</script>");
			out.flush();
			return null;
		}
		HashMap<String, Object> result = new HashMap<String, Object>();
		List<AdminUserViewEntity> list = userservice.logmemberlookup(start, length, search);
		long totalCount = userservice.countAll(search);
		result.put("data", list);
		result.put("recordsTotal", totalCount);
		System.err.println("회원 조회");
		return result;
	}

	@Autowired
	OrderslookupService orderslookupService;

	@RequestMapping(value = "adminOrders", method = RequestMethod.GET) /* logorderlookup.jsp / ajax 데이터 값 받고 넘기기 */
	public @ResponseBody HashMap<?, ?> getList2(@RequestParam(defaultValue = "0") int start,
			@RequestParam(defaultValue = "10") int length, @RequestParam(defaultValue = "") String search,
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		if (null == request.getSession().getAttribute("admin")) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('권한이 없습니다.'); history.go(-1);</script>");
			out.flush();
			return null;
		}
		HashMap<String, Object> result = new HashMap<String, Object>();
		List<AdminOrderslookupViewEntity> list = orderslookupService.orderslookup(start, length, search);
		long totalCount = orderslookupService.countAll(search);
		result.put("data", list);
		result.put("recordsTotal", totalCount);
		System.err.println("주문 조회 ");
		return result;
	}

	@RequestMapping(value = "adminProduct", method = RequestMethod.POST) /* logproductlookup.jsp / ajax 받고 넘기기 */
	public @ResponseBody HashMap<?, ?> getList(@RequestParam(defaultValue = "0") int start,
			@RequestParam(defaultValue = "10") int length, @RequestParam(defaultValue = "") String search,
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		if (null == request.getSession().getAttribute("admin")) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('권한이 없습니다.'); history.go(-1);</script>");
			out.flush();
			return null;
		}
		HashMap<String, Object> result = new HashMap<String, Object>();
		List<AdminProductViewEntity> list = productService.findAll(start, length, search);
		long totalCount = productService.countproductAll(search);
		result.put("data", list);
		result.put("recordsTotal", totalCount);
		System.err.println("상품 조회");
		return result;
	}

	// logproductlookup.jsp에서 ajax a태그 클릭시 넘어오는 컨트롤러 -> 받아온 p_use를 이용하여 데이터를 다시 쿼리를
	// 날려 받은 후 각 페이지로 이동
	@RequestMapping("selection.do")
	public String selection(Model model, HttpServletRequest request) {
		String a = request.getParameter("name");

		AdminProductViewEntity list = productService.productAll(a);
		model.addAttribute("request", list);
		if (list.getP_use().equals("데스크탑") || list.getP_use().equals("노트북")) {
			return "log/addProduct/desktop3";
		} else if (list.getP_use().equals("부품")) {
			return "log/addProduct/parts3";
		} else {
			return "log/addProduct/device3";
		}
	}

	@RequestMapping(value = "logproduction", method = RequestMethod.GET) // 해당 상품 구매한 회원
	public @ResponseBody HashMap<?, ?> getList112(@RequestParam(defaultValue = "0") int start,
			@RequestParam(defaultValue = "10") int length, @RequestParam(defaultValue = "") String search,
			@RequestParam(defaultValue = "") String p_seq, HttpServletRequest request) throws Exception {
		System.out.println("ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ시작 ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ");
		System.out.println("ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ시작 ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ" + p_seq);
		HashMap<String, Object> result = new HashMap<String, Object>();
		List<AdminuopViewEntity> list = userservice.logproduction(start, length, search, p_seq);
		System.out.println("ㅡㅡ" + list);
		List<AdminuopViewEntity> totalCount = userservice.logproductioncountAll(search, p_seq);
		result.put("data", list);
		result.put("recordsTotal", totalCount);
		System.err.println("해당 상품 구매한 회원 리스트");
		System.out.println("asdf" + result);
		return result;
	}

	@RequestMapping("userorderproduct.do") // userorderproduct p_seq 들고 페이지로 이동
	public String userorderproduct(Model model, HttpServletRequest request) {
		String a = request.getParameter("name");

		AdminProductViewEntity list = productService.productAll(a);
		model.addAttribute("request", list);
		return "log/addProduct/userorderproduct";
	}

	@RequestMapping("selectionmember") // /* logmember.jsp -> Member.jsp u_seq 리스트 뿌려주기 */
	public String selectionmember(Model model, HttpServletRequest request) {
		String a = request.getParameter("name");

		AdminOrderslookupViewEntity list = orderslookupService.ordersuserAllmem(a);
		model.addAttribute("request1", list);
		System.err.print("회원 상세 보기 ");
		return "log/addProduct/Member";

	}

	@RequestMapping("order.do") // /* logmember.jsp -> Member.jsp u_seq 리스트 뿌려주기 */
	public String order(Model model, HttpServletRequest request) {
		String a = request.getParameter("name");

		AdminOrderslookupViewEntity list = orderslookupService.ordersuserAllmem(a);
		model.addAttribute("request1", list);
		System.err.print("해당 회원 주문 내역");
		return "log/addProduct/Order";

	}

	@RequestMapping("checkuseqboard.do") // /* logmember.jsp -> logcheck.jsp u_seq 리스트 뿌려주기 */
	public String checkuseqboard(Model model, HttpServletRequest request) {
		String a = request.getParameter("name");
		AdminOrderslookupViewEntity list = orderslookupService.ordersuserAllmem(a);
		model.addAttribute("request1", list);
		System.err.println("해당 회원 이용 게시판 1차 ");
		return "log/addProduct/logcheck";

	}

	@RequestMapping("checkuseqboardcontent.do") // /* 해당 회원 댓글 보여주기위한 1차 컨트롤러(u_seq들고 모든값 들고옴) */
	public String checkuseqboardcontent(Model model, HttpServletRequest request) {
		String a = request.getParameter("name");

		AdminOrderslookupViewEntity list = orderslookupService.ordersuserAllmem(a);
		model.addAttribute("request1", list);
		System.err.print("해당 회원 이용 댓글 1차 진입 ");
		return "log/addProduct/logcheckcontent";

	}

	@RequestMapping(value = "admincheck", method = RequestMethod.GET) /* 해당 유저 게시판 이용 리스트 보기 */
	public @ResponseBody HashMap<?, ?> admincheck(@RequestParam(defaultValue = "0") int start,
			@RequestParam(defaultValue = "10") int length, @RequestParam(defaultValue = "") String search,
			@RequestParam(defaultValue = "") String u_seq, HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		if (null == request.getSession().getAttribute("admin")) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('권한이 없습니다.'); history.go(-1);</script>");
			out.flush();
			return null;
		}
		System.out.println("여기 시작");
		HashMap<String, Object> result = new HashMap<String, Object>();
		List<AdminBoardEntity> list = logBoardService.logcheck(start, length, search, u_seq);
		List<AdminBoardEntity> totalCount = logBoardService.logcountcheckAll(search, u_seq);
		result.put("data", list);
		result.put("recordsTotal", totalCount);

		System.out.println("list" + list);

		System.err.println("logcheck.jsp -> logcheck.jsp /  AJAX 데이터 처리");
		System.out.println("여기 끝");
		return result;
	}


	@RequestMapping(value = "logboardcehckcontent", method = RequestMethod.GET) // 해당 유저 댓글을 이용한 게시판 리스트 보기

	public @ResponseBody HashMap<?, ?> logboardcehckcontent(@RequestParam(defaultValue = "0") int start,
			@RequestParam(defaultValue = "10") int length, @RequestParam(defaultValue = "") String search,
			@RequestParam(defaultValue = "") String u_seq, HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		if (null == request.getSession().getAttribute("admin")) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('권한이 없습니다.'); history.go(-1);</script>");
			out.flush();
			return null;
		}
		HashMap<String, Object> result = new HashMap<String, Object>();
		List<AdminBoardEntity> list = logBoardService.logboardcontent(start, length, search, u_seq);
		List<AdminBoardEntity> totalCount = logBoardService.logboardcontentcount(search, u_seq);
		System.out.println("asdfasdf" + totalCount);
		result.put("data", list);
		result.put("recordsTotal", totalCount);
		System.out.println("asdfasdf" + totalCount);
		System.err.println("2차컨트롤러 해당 회원 댓글 이용 게시판");
		return result;
	}


	@RequestMapping(value = "adminOrders1", method = RequestMethod.GET) /* Orders.jsp / ajax데이터 받고 넘기기 */
	public @ResponseBody HashMap<?, ?> getList5(@RequestParam(defaultValue = "0") int start,
			@RequestParam(defaultValue = "10") int length, @RequestParam(defaultValue = "") String search,
			@RequestParam(defaultValue = "") String u_seq, HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		if (null == request.getSession().getAttribute("admin")) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('권한이 없습니다.'); history.go(-1);</script>");
			out.flush();
			return null;
		}
		HashMap<String, Object> result = new HashMap<String, Object>();
		List<AdminOrderslookupViewEntity> list = orderslookupService.orderslookupid(u_seq, start, length, search);
		long totalCount = orderslookupService.countAll1(search, u_seq);
		result.put("data", list);
		result.put("recordsTotal", totalCount);
		System.err.println("Orders.jsp AJAX 데이터 처리");

		return result;
	}

	@Autowired
	LogBoardService logBoardService;

	@RequestMapping(value = "logAllBoard", method = RequestMethod.GET) /* 통합 리스트 보기 */
	public @ResponseBody HashMap<?, ?> LotAllList(@RequestParam(defaultValue = "0") int start,
			@RequestParam(defaultValue = "10") int length, @RequestParam(defaultValue = "") String search,
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		if (null == request.getSession().getAttribute("admin")) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('권한이 없습니다.'); history.go(-1);</script>");
			out.flush();
			return null;
		}
		HashMap<String, Object> result = new HashMap<String, Object>();
		List<AdminBoardEntity> list = logBoardService.logAll(start, length, search);
		long totalCount = logBoardService.logcountAll(search);
		result.put("data", list);
		result.put("recordsTotal", totalCount);

		System.err.println("logboard.jsp -> logboard.jsp /  AJAX 데이터 처리");

		return result;
	}

	@RequestMapping(value = "logFreeBoard", method = RequestMethod.GET) /* 자유게시판 리스트 보기 */
	public @ResponseBody HashMap<?, ?> LotFreeList(@RequestParam(defaultValue = "0") int start,
			@RequestParam(defaultValue = "10") int length, @RequestParam(defaultValue = "") String search,
			@RequestParam(defaultValue = "") String b_type, HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		if (null == request.getSession().getAttribute("admin")) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('권한이 없습니다.'); history.go(-1);</script>");
			out.flush();
			return null;
		}
		System.out.println("ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ");
		HashMap<String, Object> result = new HashMap<String, Object>();
		List<AdminBoardEntity> list = logBoardService.logFreeAll(start, length, search, b_type);
		long totalCount = logBoardService.logcountFreeAll(search);
		result.put("data", list);
		result.put("recordsTotal", totalCount);
		System.out.println("data" + list);
		System.out.println("total" + totalCount);

		System.err.println("logfree.jsp -> logfree.jsp /  AJAX 데이터 처리");

		return result;
	}

	@RequestMapping(value = "logqaBoard", method = RequestMethod.GET) /* F&A 리스트 보기 */
	public @ResponseBody HashMap<?, ?> LotqaList(@RequestParam(defaultValue = "0") int start,
			@RequestParam(defaultValue = "10") int length, @RequestParam(defaultValue = "") String search,
			@RequestParam(defaultValue = "") String b_type, HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		if (null == request.getSession().getAttribute("admin")) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('권한이 없습니다.'); history.go(-1);</script>");
			out.flush();
			return null;
		}
		System.out.println("ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ");
		HashMap<String, Object> result = new HashMap<String, Object>();
		List<AdminBoardEntity> list = logBoardService.logqaAll(start, length, search, b_type);
		long totalCount = logBoardService.logcountqaAll(search);
		result.put("data", list);
		result.put("recordsTotal", totalCount);
		System.out.println("data" + list);
		System.out.println("total" + totalCount);

		System.err.println("logfree.jsp -> logfree.jsp /  AJAX 데이터 처리");

		return result;
	}

	@RequestMapping(value = "logqanda", method = RequestMethod.GET) /* Q&A 리스트 보기 */
	public @ResponseBody HashMap<?, ?> LotqandaList(@RequestParam(defaultValue = "") String b_type,
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		if (null == request.getSession().getAttribute("admin")) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('권한이 없습니다.'); history.go(-1);</script>");
			out.flush();
			return null;
		}
		System.out.println("logqanda시작");
		System.out.println(b_type);
		HashMap<String, Object> result = new HashMap<String, Object>();
		List<AdminBoardEntity> list = logBoardService.logqandaAll(b_type);
		result.put("data", list);
		System.out.println("data" + list);

		return result;
	}

	@RequestMapping(value = "logNoticeBoard", method = RequestMethod.GET) /* 공지 사항 리스트 보기 */
	public @ResponseBody HashMap<?, ?> LotNoticeList(@RequestParam(defaultValue = "0") int start,
			@RequestParam(defaultValue = "10") int length, @RequestParam(defaultValue = "") String search,
			@RequestParam(defaultValue = "") String b_type, HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		if (null == request.getSession().getAttribute("admin")) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('권한이 없습니다.'); history.go(-1);</script>");
			out.flush();
			return null;
		}
		System.out.println("ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ");
		HashMap<String, Object> result = new HashMap<String, Object>();
		List<AdminBoardEntity> list = logBoardService.logNoticeAll(start, length, search, b_type);
		long totalCount = logBoardService.logcountNoticeAll(search);
		result.put("data", list);
		result.put("recordsTotal", totalCount);

		System.out.println(list + "list");
		System.out.println(totalCount + "total");

		System.err.println("lognotice.jsp -> lognotice.jsp /  AJAX 데이터 처리");

		return result;
	}

	@RequestMapping("logfreeviewdetail.do") // /* */logfree -> logfreeview.do 이동
	public String logfree(Model model, HttpServletRequest request) {

		String a = request.getParameter("name");
		AdminBoardEntity list = logBoardService.logfreeviewdetail(a);
		model.addAttribute("request", list);
		System.err.println("logfree.do(제목 클릭) -> logfreeviewdetail.do 실행  -> 해당 b_seq에 해당한 값 들고 logfreeview.jsp");
		System.out.println("값" + list);
		return "log/logfreeview";

	}

	@RequestMapping("logqaviewdetail.do") // /* */logqa -> logqaview.do 이동
	public String logqa(Model model, HttpServletRequest request) {

		String a = request.getParameter("name");
		AdminBoardEntity list = logBoardService.logqaviewdetail(a);
		model.addAttribute("request", list);
		System.err.println("logfree.do(제목 클릭) -> logqaviewdetail.do 실행  -> 해당 b_seq에 해당한 값 들고 logqaview.jsp");
		System.out.println("값" + list);
		return "log/logqaview";

	}

	@RequestMapping("lognoticeviewdetail.do") // /* */lognotice -> lognoticeview.do 이동
	public String lognotice(Model model, HttpServletRequest request) {

		String a = request.getParameter("name");
		AdminBoardEntity list = logBoardService.lognoticeviewdetail(a);
		model.addAttribute("request", list);
		System.err.println("lognotice.do(제목 클릭) -> lognoticeviewdetail.do 실행  -> 해당 b_seq에 해당한 값 들고 lognoticeview.jsp");
		System.out.println("값" + list);
		return "log/lognoticeview";

	}

	@RequestMapping(value = "logfreeReplyList", method = RequestMethod.GET) /* 공지 사항 댓글 보기 */
	public @ResponseBody HashMap<?, ?> LotNoticeList(@RequestParam(defaultValue = "") String b_seq,
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		if (null == request.getSession().getAttribute("admin")) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('권한이 없습니다.'); history.go(-1);</script>");
			out.flush();
			return null;
		}
		System.out.println("ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ");
		HashMap<String, Object> result = new HashMap<String, Object>();
		List<AdminBoardEntity> list = logBoardService.logfreecomment(b_seq);
		result.put("data", list);

		System.out.println(list + "list");

		System.err.println("lognotice.jsp -> lognotice.jsp /  AJAX 데이터 처리");

		return result;
	}

	@RequestMapping("logAllcheckview") // /* */logboard -> 상세 이동 이동 // 현재는 해당 회원 상세 이용 게시판으로 변경
	public String logAllcheckview(Model model, HttpServletRequest request) {
		System.out.println("시작");
		String a = request.getParameter("name");
		System.out.println(a);
		AdminBoardEntity list = logBoardService.logAllviewdetail(a);
		model.addAttribute("request", list);
		System.out.println(list);
		System.out.println(list.getB_type());
		if (list.getB_type().equals("1")) {
			return "log/logfreeview";
		} else if (list.getB_type().equals("3")) {
			return "log/lognoticeview";
		} else if (list.getB_type().equals("2")) {
			return "log/logqaview";
		}
		return "";

	}

	@RequestMapping("logqa.do") // logaddproduct에서 상품등록 버튼 클릭
	public String logqa(Model model, HttpServletRequest request, HttpServletResponse response) throws Exception {
		if (null == request.getSession().getAttribute("admin")) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('권한이 없습니다.'); history.go(-1);</script>");
			out.flush();
			return null;
		}
		return "log/logqa";
	}

	@RequestMapping("logproductlookup.do") // logaddproduct에서 상품등록 버튼 클릭
	public String logproductlookup(Model model, HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		if (null == request.getSession().getAttribute("admin")) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('권한이 없습니다.'); history.go(-1);</script>");
			out.flush();
			return null;
		}
		return "log/logproductlookup";
	}

	@RequestMapping("logaddproduct.do") // 관리자창 상품 등록 페이지
	public String logaddproduct(Model model, HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		if (null == request.getSession().getAttribute("admin")) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('권한이 없습니다.'); history.go(-1);</script>");
			out.flush();
			return null;
		}
		System.out.println("logaddproduct");
		return "log/logaddproduct";
	}

	@RequestMapping("logclassification.do") // logaddproduct에서 상품등록 버튼 클릭
	public String logclassification(Model model) {
		System.out.println("logclassification");
		return "log/logclassification";
	}

	@RequestMapping("logaddnotebook.do") // logaddproduct에서 상품등록 버튼 클릭
	public String logaddnotebook(Model model) {
		System.out.println("logaddnotebook");
		return "log/logaddnotebook";
	}

	@RequestMapping("logaddparts.do") // logaddproduct에서 상품등록 버튼 클릭
	public String logaddparts(Model model) {
		System.out.println("logaddparts");
		return "log/logaddparts";
	}

	@RequestMapping("logadddevice.do") // logaddproduct에서 상품등록 버튼 클릭
	public String logadddevice(Model model) {
		System.out.println("logadddevice");
		return "log/logadddevice";
	}

	@RequestMapping("logcategory.do") // 관리자 메인 페이지1
	public String logcategory(Model model, HttpServletRequest request, HttpServletResponse response) throws Exception {
		if (null == request.getSession().getAttribute("admin")) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('권한이 없습니다.'); history.go(-1);</script>");
			out.flush();
			return null;
		}
		return "log/logcategory";
	}

	@RequestMapping("logadddesktop.do") // logaddproduct에서 상품등록 버튼 클릭
	public String logadddesktop(Model model, HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		if (null == request.getSession().getAttribute("admin")) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('권한이 없습니다.'); history.go(-1);</script>");
			out.flush();
			return null;
		}
		return "log/logadddesktop";
	}

	@RequestMapping("logorderlookup.do") // logaddproduct에서 상품등록 버튼 클릭
	public String logorderlookup(Model model, HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		if (null == request.getSession().getAttribute("admin")) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('권한이 없습니다.'); history.go(-1);</script>");
			out.flush();
			return null;
		}
		return "log/logorderlookup";
	}

	@RequestMapping("Productregistration.do") // 관리자 상품 등록 페이지
	public String Productregistration(Model model) {
		return "log/Productregistration";
	}

	@RequestMapping("logsaleslookup.do") // logaddproduct에서 상품등록 버튼 클릭
	public String logsaleslookup(Model model, HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		if (null == request.getSession().getAttribute("admin")) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('권한이 없습니다.'); history.go(-1);</script>");
			out.flush();
			return null;
		}
		return "log/logsaleslookup";
	}

	// 매출 리스트 보기
	/*
	 * @RequestMapping(value = "saleslookup", method = RequestMethod.GET)
	 * public @ResponseBody HashMap<?, ?> saleslookup1(@RequestParam(defaultValue =
	 * "0") int start,
	 *
	 * @RequestParam(defaultValue = "20") int length, @RequestParam(defaultValue =
	 * "") String search1,
	 *
	 * @RequestParam(defaultValue = "") String search2, HttpServletRequest request)
	 * throws Exception { HashMap<String, Object> result = new HashMap<String,
	 * Object>(); List<UsersOrderEntity> list =
	 * OrderslookupService.saleslookup(start, length, search1, search2); long
	 * totalCount = OrderslookupService.countsaleslookup(); result.put("data",
	 * list); result.put("recordsTotal", totalCount); return result; }
	 */

	@RequestMapping(value = "saleslookup1", method = RequestMethod.GET)
	public @ResponseBody HashMap<?, ?> saleslookup1(@RequestParam(defaultValue = "0") int start,
			@RequestParam(defaultValue = "20") int length, @RequestParam(defaultValue = "") String search1,
			@RequestParam(defaultValue = "") String search2, HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		SimpleDateFormat format1 = new SimpleDateFormat("yyyy-MM-dd");
		if (null == request.getSession().getAttribute("admin")) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('권한이 없습니다.'); history.go(-1);</script>");
			out.flush();
			return null;
		}
		Date time = new Date();
		String time1 = format1.format(time);
		System.out.println(time1);
		if (search2.equals("")) {
			search2 = time1;
		}
		HashMap<String, Object> result = new HashMap<String, Object>();
		List<UsersOrderEntity> list = orderslookupService.saleslookup1(start, length, search1, search2);
		long totalCount = orderslookupService.countsaleslookup(search1, search2);
		long sumTotalPrice = orderslookupService.sumTotalPrice(search1, search2);
		result.put("data", list);
		result.put("recordsTotal", totalCount);
		result.put("sumTotalPrice", sumTotalPrice);
		return result;
	}

	@RequestMapping("lognotice.do") // logaddproduct에서 상품등록 버튼 클릭
	public String lognotice(Model model, HttpServletRequest request, HttpServletResponse response) throws Exception {
		if (null == request.getSession().getAttribute("admin")) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('권한이 없습니다.'); history.go(-1);</script>");
			out.flush();
			return null;
		}
		return "log/lognotice";
	}

	@RequestMapping("lognoticewrite.do") // logaddproduct에서 상품등록 버튼 클릭
	public String lognoticewrite(Model model, HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		if (null == request.getSession().getAttribute("admin")) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('권한이 없습니다.'); history.go(-1);</script>");
			out.flush();
			return null;
		}
		return "log/lognoticewrite";
	}

	@RequestMapping("logmemberlookup.do") // logaddproduct에서 상품등록 버튼 클릭
	public String logmemberlookup(Model model, HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		if (null == request.getSession().getAttribute("admin")) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('권한이 없습니다.'); history.go(-1);</script>");
			out.flush();
			return null;
		}
		return "log/logmemberlookup";
	}

	@RequestMapping("logfreq.do") // logaddproduct에서 상품등록 버튼 클릭
	public String logfreq(Model model, HttpServletRequest request, HttpServletResponse response) throws Exception {
		if (null == request.getSession().getAttribute("admin")) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('권한이 없습니다.'); history.go(-1);</script>");
			out.flush();
			return null;
		}
		return "log/logfreq";
	}

	@RequestMapping("logfreqwrite.do") // logaddproduct에서 상품등록 버튼 클릭
	public String logfreqwrite(Model model, HttpServletRequest request, HttpServletResponse response) throws Exception {
		if (null == request.getSession().getAttribute("admin")) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('권한이 없습니다.'); history.go(-1);</script>");
			out.flush();
			return null;
		}
		return "log/logfreqwrite";
	}

	@RequestMapping("lognoticeview.do") // logaddproduct에서 상품등록 버튼 클릭
	public String lognoticeview(Model model) {
		return "log/lognoticeview";
	}

	@RequestMapping("AdminProductModifyView.do") // 관리자 상품 상세 페이지 및 수정, 삭제
	public String AdminProductModifyView(Model model) {
		return "log/AdminProductModifyView";
	}

	@RequestMapping("logmain.do") // 관리자 상품 상세 페이지 및 수정, 삭제
	public String logmain(Model model) {
		return "log/logmain";
	}

	@RequestMapping("Member.do") // 관리자 상품 상세 페이지 및 수정, 삭제
	public String Member(Model model) {
		return "log/Member";
	}

	@RequestMapping("AdminOrderCheckView.do") // 관리자 상품 상세 페이지 및 수정, 삭제
	public String AdminOrderCheckView(Model model, HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		if (null == request.getSession().getAttribute("admin")) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('권한이 없습니다.'); history.go(-1);</script>");
			out.flush();
			return null;
		}
		return "log/AdminOrderCheckView";
	}

	@RequestMapping("logfree.do") // 관리자 상품 상세 페이지 및 수정, 삭제
	public String logfree(Model model, HttpServletRequest request, HttpServletResponse response) throws Exception {
		if (null == request.getSession().getAttribute("admin")) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('권한이 없습니다.'); history.go(-1);</script>");
			out.flush();
			return null;
		}
		return "log/logfree";
	}

	@RequestMapping("logfreeMetaData.do") // 관리자 상품 상세 페이지 및 수정, 삭제
	public String logfreeMetaData(Model model) {
		return "log/logfreeMetaData";
	}

	@RequestMapping("logfreeupdate.do") // 관리자 상품 상세 페이지 및 수정, 삭제
	public String logfreeupdate(Model model) {
		return "log/logfreeupdate";
	}

	@RequestMapping("logfreewrite.do") // 관리자 상품 상세 페이지 및 수정, 삭제
	public String logfreewrite(Model model, HttpServletRequest request, HttpServletResponse response) throws Exception {
		if (null == request.getSession().getAttribute("admin")) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('권한이 없습니다.'); history.go(-1);</script>");
			out.flush();
			return null;
		}
		return "log/logfreewrite";
	}

	@RequestMapping("logboard.do") // 관리자 상품 상세 페이지 및 수정, 삭제
	public String logboard(Model model, HttpServletRequest request, HttpServletResponse response) throws Exception {
		if (null == request.getSession().getAttribute("admin")) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('권한이 없습니다.'); history.go(-1);</script>");
			out.flush();
			return null;
		}
		return "log/logboard";
	}

	@RequestMapping("logbanneredit.do") // 관리자 상품 상세 페이지 및 수정, 삭제
	public String logbanner(Model model, HttpServletRequest request, HttpServletResponse response) throws Exception {
		if (null == request.getSession().getAttribute("admin")) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('권한이 없습니다.'); history.go(-1);</script>");
			out.flush();
			return null;
		}
		return "log/logBannerEdit";
	}

	@RequestMapping("logaddbanner.do") // 관리자 상품 상세 페이지 및 수정, 삭제
	public String logaddbanner(Model model, HttpServletRequest request, HttpServletResponse response) throws Exception {
		if (null == request.getSession().getAttribute("admin")) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('권한이 없습니다.'); history.go(-1);</script>");
			out.flush();
			return null;
		}
		return "log/logaddbanner";
	}

	@RequestMapping("logbannerupdate.do") // 관리자 상품 상세 페이지 및 수정, 삭제
	public String logbannerupdate(Model model, HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		if (null == request.getSession().getAttribute("admin")) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('권한이 없습니다.'); history.go(-1);</script>");
			out.flush();
			return null;
		}
		return "log/logbannerupdate";
	}

}