package com.hardCarry.shopping.service;

import java.util.HashMap;
import java.util.List;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hardCarry.shopping.dao.UserDAO;
import com.hardCarry.shopping.dto.OrdersDTO;
import com.hardCarry.shopping.dto.UsersDTO;
import com.hardCarry.shopping.entity.OrderEntity;
import com.hardCarry.shopping.entity.ProductEntity;
import com.hardCarry.shopping.entity.UsersEntity;
import com.hardCarry.shopping.entity.join.AdminUserViewEntity;
import com.hardCarry.shopping.entity.join.AdminuopViewEntity;
import com.hardCarry.shopping.entity.join.FreeBoardUserEntity;

@Service
public class UserService {

	@Autowired
	UserDAO userDAO;

	@Autowired
	ModelMapper mapper;

	@Autowired
	CommonsFileUpload commons;

	public UsersEntity save(UsersDTO usersDTO) {
		UsersEntity saveUser = UsersEntity.builder().u_id(usersDTO.getId()).u_name(usersDTO.getName())
				.u_pw(usersDTO.getPw()).u_phone(usersDTO.getPhone()).u_email(usersDTO.getEmail())
				.u_address(usersDTO.getAddress() + usersDTO.getExaddress()).build();
		userDAO.save(saveUser);
		return saveUser;
	}

	public UsersEntity login(String id, String pw) throws Exception {
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("id", id);
		map.put("pw", pw);
		UsersEntity user = userDAO.login(map);
		if (user == null) {
			throw new Exception("해당 아이디가 존재하지 않습니다.");
		} else {
			return user;
		}
	}

	public boolean dupId(String id) {
		return userDAO.dupId(id);
	}

	public boolean pwChk(String id, String pw) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("id", id);
		map.put("pw", pw);
		System.out.println(id);
		System.out.println(pw);
		return userDAO.pwChk(map);
	}

	// 아이디 찾기
	public List<UsersEntity> findId(String name, String email) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("u_name", name);
		map.put("u_email", email);
		return userDAO.findId(map);
	}

	// 비밀번호 찾기
	public void setNewPw(String id, String email, String code) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("u_id", id);
		map.put("u_email", email);
		map.put("pw", code);
		userDAO.setNewPw(map);
	}

	public List<UsersEntity> findPw(String id, String email) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("u_id", id);
		map.put("u_email", email);
		return userDAO.findPw(map);
	}
	// 비밀번호 찾기 끝

	public List<AdminUserViewEntity> logmemberlookup(int page, int length, String search) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("page", page);
		map.put("size", length);
		map.put("search", search);
		return userDAO.logmemberlookup(map);
	}

	public long countAll(String search) {
		return userDAO.countAll(search);
	}

	public void updateUser(UsersEntity usersEntity) { // mypage 수정
		userDAO.updateUser(usersEntity);
	}

	public void updateUserPW(UsersEntity usersEntity) { // mypage 비밀번호 수정
		userDAO.updateUserPW(usersEntity);
	}

	// 결제 페이지
	public List<ProductEntity> checkout_product(String p_seq) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("p_seq", p_seq);
		return userDAO.checkout_product(map);
	}

	@Transactional
	public void saveOrders(OrdersDTO ordersDTO) throws Exception {
		OrderEntity OrderEntity = mapper.map(ordersDTO, OrderEntity.class);

		OrderEntity.initDate();

		userDAO.saveOrders(OrderEntity);

		// 구매 코드 등록
		this.createCode(OrderEntity);
	}

	// 구매 코드 등록
	public void createCode(OrderEntity OrderEntity) {
		OrderEntity.setO_seq(userDAO.finalSeq());
		String code = OrderEntity.codeCreate(OrderEntity.getO_seq());
		OrderEntity.setO_code(code);
		userDAO.update(OrderEntity);
	}

	// 조회수 처리
	public void sub_stock(long p_seq, int o_stock) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("p_seq", p_seq);
		map.put("o_stock", o_stock);
		userDAO.sub_stock(map);
	}

	// 자유게시판 리스트 보기
	public List<FreeBoardUserEntity> lookUpMyBoard(int page, int length, String search, long seq) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("page", page * length);
		map.put("size", length);
		map.put("search", search);
		map.put("seq", seq);
		return userDAO.lookUpMyBoard(map);
	}

	public long countMyBoardAll(String search, long seq) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("search", search);
		map.put("seq", seq);
		return userDAO.countMyBoardAll(map);
	}

	public List<AdminuopViewEntity> logproduction(int page, int length, String search, String p_seq) { // 해당 상품 구매한 회원
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("page", page * length);
		map.put("size", length);
		map.put("search", search);
		map.put("p_seq", p_seq);
		return userDAO.logproduction(map);
	}

	public List<AdminuopViewEntity> logproductioncountAll(String search, String p_seq) { // 해당 상품 구매한 회원
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("search", search);
		map.put("p_seq", p_seq);
		return userDAO.logproductioncountAll(map);
	}
}