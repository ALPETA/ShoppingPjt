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

import com.hardCarry.shopping.dto.OrdersDTO;
import com.hardCarry.shopping.entity.ProductEntity;
import com.hardCarry.shopping.entity.UsersEntity;
import com.hardCarry.shopping.entity.join.AdminOrderslookupViewEntity;
import com.hardCarry.shopping.entity.join.FreeBoardUserEntity;
import com.hardCarry.shopping.service.OrderslookupService;
import com.hardCarry.shopping.service.UserService;

@Controller
public class UserController { // 사용자 컨트롤러

	@Autowired
	UserService userService;

	@Autowired
	OrderslookupService orderslookupService;

	@RequestMapping(value = "adminOrderssetting", method = RequestMethod.GET) //마이 페이지 데이터 테이블
	public @ResponseBody HashMap<?, ?> getList22(@RequestParam(defaultValue = "0") int start,
			@RequestParam(defaultValue = "10") int length, @RequestParam(defaultValue = "") String search,
			@RequestParam(defaultValue = "") String u_seq,
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		if (null == request.getSession().getAttribute("user")) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('권한이 없습니다.'); history.go(-1);</script>");
			out.flush();
			return null;
		}
		HashMap<String, Object> result = new HashMap<String, Object>();
		List<AdminOrderslookupViewEntity> list = orderslookupService.orderslookupsetting(start, length, search, u_seq);
		long totalCount = orderslookupService.countAllsetting(search, u_seq);
		result.put("data", list);
		result.put("recordsTotal", totalCount);
		return result;
	}

	@RequestMapping("index.do")
	public String index(Model model) {
		return "index";
	}

	@RequestMapping("signUp.do")
	public String signUp(Model model) {
		return "signUp";
	}

	@RequestMapping("userSetting.do")
	public String userSetting(Model model, HttpServletRequest request, HttpServletResponse response) throws Exception {
		if (null == request.getSession().getAttribute("user")) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('정상적인 경로가 아닙니다.'); history.go(-1);</script>");
			out.flush();
			return null;
		}
		String u_seq = request.getParameter("u_seq");
		model.addAttribute("u_seq", u_seq);
		return "userSetting";
	}

	@RequestMapping("userOrder.do")
	public String userOrder(Model model, HttpServletRequest request, HttpServletResponse response) throws Exception {
		if (null == request.getSession().getAttribute("user")) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('정상적인 경로가 아닙니다.'); history.go(-1);</script>");
			out.flush();
			return null;
		}
		String u_seq = request.getParameter("u_seq");
		model.addAttribute("u_seq", u_seq);
		return "userOrder";
	}

	@RequestMapping("userBoardList.do")
	public String userBoardList(Model model, HttpServletRequest request, HttpServletResponse response) throws Exception {
		if (null == request.getSession().getAttribute("user")) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('정상적인 경로가 아닙니다.'); history.go(-1);</script>");
			out.flush();
			return null;
		}
		return "userBoardList";
	}

	// 결제 페이지
	@RequestMapping(value = "checkout.do", method = RequestMethod.GET)
	public String checkout(Model model, HttpServletRequest request, HttpServletResponse response) throws Exception {
		String id = null;
		String pw = null;
		if (null != request.getSession().getAttribute("user")) {
			UsersEntity user = (UsersEntity) request.getSession().getAttribute("user");
			id = user.getU_id();
			pw = user.getU_pw();
		} else {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('로그인 정보를 확인해주세요.'); history.go(-1);</script>");
			out.flush();
			return null;
		}
		UsersEntity users = userService.login(id, pw);
		model.addAttribute("users", users);
		int p_stock = Integer.parseInt(request.getParameter("stock"));// 상품 재고
		long p_seq = Long.parseLong(request.getParameter("p_seq"));// 상품 고유 키
		int price = Integer.parseInt(request.getParameter("sum"));// 총 가격
		int amount = Integer.parseInt(request.getParameter("amount"));// 선택 개수
		if (p_stock > 0) {
			if (p_stock < amount) {
				response.setContentType("text/html; charset=UTF-8");
				PrintWriter out = response.getWriter();
				out.println("<script>alert('선택하신 개수가 재고 수보다 많습니다.'); history.go(-1);</script>");
				out.flush();
				return null;
			} else {
				model.addAttribute("p_seq", p_seq);
				model.addAttribute("price", price);
				model.addAttribute("amount", amount);
				return "checkout";
			}
		} else {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('현재 남아있는 재고가 없습니다.'); history.go(-1);</script>");
			out.flush();
			return null;
		}
	}

	// 결제페이지 내용
	@RequestMapping(value = "checkout_product", method = RequestMethod.GET)
	public @ResponseBody HashMap<?, ?> checkout_product(HttpServletRequest request,
			@RequestParam(defaultValue = "") String seq, HttpServletResponse response) throws Exception {
		if (null == request.getSession().getAttribute("user")) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('로그인 정보를 확인해 주세요.'); history.go(-1);</script>");
			out.flush();
			return null;
		}
		HashMap<String, Object> result = new HashMap<String, Object>();
		List<ProductEntity> product = userService.checkout_product(seq);
		result.put("data", product);
		return result;
	}

	// 결제 이벤트
	@RequestMapping(value = "saveOrders", method = RequestMethod.POST)
	public String saveOrders(OrdersDTO ordersDTO, HttpServletRequest request, HttpServletResponse response) throws Exception {
		if (null == request.getSession().getAttribute("user")) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('권한이 없습니다.'); history.go(-1);</script>");
			out.flush();
			return null;
		}
		String p_seq = request.getParameter("p_seq");
		String sendname = request.getParameter("sendname");
		String sendphone = request.getParameter("sendphone");
		String sendAddress = request.getParameter("sendAddress");
		long totalPrice = Long.parseLong(request.getParameter("totalPrice"));
		int o_stock = Integer.parseInt(request.getParameter("o_stock"));
		String message = request.getParameter("message");
		// responseType = 0(배송준비), 1(배송중), 2(배송 완료)
		String o_payment = request.getParameter("o_payment");
		long o_pSeq = Long.parseLong(request.getParameter("o_pSeq"));
		long o_uSeq = Long.parseLong(request.getParameter("o_uSeq"));
		// ----------------직접 입력한 경우
		String new_name = request.getParameter("new_name").replace(" ", "");
		String new_phone = request.getParameter("new_phone").replace(" ", "");
		String new_address = request.getParameter("new_address").replace(" ", "");
		String new_exaddress = request.getParameter("new_exaddress").replace(" ", "");
		String newAddress = new_address + " " + new_exaddress;

		String u_seq = request.getParameter("u_seq"); //결제창 누르면 u_seq값 들고 내가 주문한 내역 페이지로 이동 해야되므로 필요함

		if (new_name.isEmpty()) {
			ordersDTO.setO_sendname(sendname);
		} else {
			ordersDTO.setO_sendname(new_name);
		}
		if (new_phone.isEmpty()) {
			ordersDTO.setO_sendphone(sendphone);
		} else {
			ordersDTO.setO_sendphone(new_phone);
		}
		if (newAddress.replace(" ", "").isEmpty()) {
			ordersDTO.setO_sendAddress(sendAddress);
		} else {
			ordersDTO.setO_sendAddress(newAddress);
		}
		ordersDTO.setO_totalPrice(totalPrice);
		ordersDTO.setO_stock(o_stock);
		ordersDTO.setO_message(message);
		ordersDTO.setO_responseType((byte) 0);
		ordersDTO.setO_payment(o_payment);
		ordersDTO.setO_pSeq(o_pSeq);
		ordersDTO.setO_uSeq(o_uSeq);
		userService.saveOrders(ordersDTO);
		sub_stock(o_pSeq, o_stock);
		return "redirect:./userOrder.do?u_seq="+u_seq;
	}

	@RequestMapping(value = "sub_stock", method = RequestMethod.GET) /* 조회수 처리 */
	public void sub_stock(long p_seq, int o_stock) {
		userService.sub_stock(p_seq, o_stock);
	}

	@RequestMapping("shoppingCart.do")
	public String shoppingCart(Model model, HttpServletResponse response, HttpServletRequest request) throws Exception {
		if (null == request.getSession().getAttribute("user")) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('정상적인 경로가 아닙니다.'); history.go(-1);</script>");
			out.flush();
			return null;
		}
		return "shoppingCart";
	}

	@RequestMapping("login.do") // 로그인 페이지
	public String login(Model model) {
		return "login";
	}

	@RequestMapping("membership.do") // 회원가입 페이지
	public String membership(Model model, HttpServletResponse response, HttpServletRequest request) throws Exception {
		if (null == request.getSession().getAttribute("user")) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('정상적인 경로가 아닙니다.'); history.go(-1);</script>");
			out.flush();
			return null;
		}
		return "membership";
	}

	@RequestMapping("find.do") // 아이디, 비밀번호 찾기 페이지
	public String findid(Model model, HttpServletResponse response, HttpServletRequest request) throws Exception {
		if (null == request.getSession().getAttribute("user")) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('정상적인 경로가 아닙니다.'); history.go(-1);</script>");
			out.flush();
			return null;
		}
		return "findid";
	}

	@RequestMapping("pwchange.do") // 비밀번호 변경 페이지
	public String pwchange(Model model, HttpServletResponse response, HttpServletRequest request) throws Exception {
		if (null == request.getSession().getAttribute("user")) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('정상적인 경로가 아닙니다.'); history.go(-1);</script>");
			out.flush();
			return null;
		}
		return "pwchange";
	}

	@RequestMapping("mypage.do") // My Page
	public String mypage(Model model) {
		return "mypage";
	}

	@RequestMapping("infochange.do") // 회원정보 수정 페이지
	public String infochange(Model model, HttpServletResponse response, HttpServletRequest request) throws Exception {
		if (null == request.getSession().getAttribute("user")) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('정상적인 경로가 아닙니다.'); history.go(-1);</script>");
			out.flush();
			return null;
		}
		return "infochange";
	}

	@RequestMapping("shoppingbasket.do") // 장바구니 페이지
	public String shoppingbasket(Model model, HttpServletResponse response, HttpServletRequest request) throws Exception {
		if (null == request.getSession().getAttribute("user")) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('정상적인 경로가 아닙니다.'); history.go(-1);</script>");
			out.flush();
			return null;
		}
		return "shoppingbasket";
	}

	/*
	@RequestMapping("Ordering.do") // 주문 페이지
	public String Ordering(Model model) {
		return "Ordering";
	}
	*/

	/*
	@RequestMapping("Ordercheck.do") // 주문 조회 페이지
	public String Ordercheck(Model model) {
		return "Ordercheck";
	}
	*/

	/*
	@RequestMapping("myview.do") // 내가 쓴 글 페이지
	public String myview(Model model) {
		return "myview";
	}
	*/

	/*
	@RequestMapping("mywrite.do") // 내가 쓴 글 상세 페이지
	public String mywrite(Model model) {
		return "mywrite";
	}
	*/

	@RequestMapping(value = "lookUpMyBoard", method = RequestMethod.GET) /* 내가 쓴 글 보기 */
	public @ResponseBody HashMap<?, ?> lookUpMyBoard(@RequestParam(defaultValue = "0") int start,
			@RequestParam(defaultValue = "10") int length, @RequestParam(defaultValue = "") String search,
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		long seq = 0;
		if (null != request.getSession().getAttribute("user")) {
			UsersEntity user = (UsersEntity) request.getSession().getAttribute("user");
			seq = user.getU_seq();
		} else {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('정상적인 경로가 아닙니다.'); history.go(-1);</script>");
			out.flush();
			return null;
		}
		HashMap<String, Object> result = new HashMap<String, Object>();
		List<FreeBoardUserEntity> list = userService.lookUpMyBoard(start, length, search, seq);
		long totalCount = userService.countMyBoardAll(search,seq);
		result.put("data", list);
		result.put("recordsTotal", totalCount);
		return result;
	}

	@RequestMapping("userChangePassword.do") // 비밀번호 변경
	public String userChangePassword(Model model, HttpServletResponse response, HttpServletRequest request) throws Exception {
		if (null == request.getSession().getAttribute("user")) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('정상적인 경로가 아닙니다.'); history.go(-1);</script>");
			out.flush();
			return null;
		}
		return "userChangePassword";
	}
}