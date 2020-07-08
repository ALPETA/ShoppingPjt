package com.hardCarry.shopping.dao;

import java.util.HashMap;
import java.util.List;

import com.hardCarry.shopping.entity.OrderEntity;
import com.hardCarry.shopping.entity.ProductEntity;
import com.hardCarry.shopping.entity.UsersEntity;
import com.hardCarry.shopping.entity.join.AdminUserViewEntity;
import com.hardCarry.shopping.entity.join.AdminuopViewEntity;
import com.hardCarry.shopping.entity.join.FreeBoardUserEntity;

public interface UserDAO {
	void save(UsersEntity usersEntity);

	List<AdminUserViewEntity> logmemberlookup(HashMap<String, Object> map);

	long countAll(String search);

	boolean dupId(String id); //회원가입 id중복확인

	List<UsersEntity> findId(HashMap<String, Object> user); //id찾기

	void setNewPw(HashMap<String, Object> map); //비밀번호 찾기

	List<UsersEntity> findPw(HashMap<String, Object> map); //id찾기

	boolean pwChk(HashMap<String, Object> map); //마이페이지 비번 확인

	UsersEntity login(HashMap<String, String> user); //로그인

	void updateUser(UsersEntity usersEntity); //my 페이지 수정

	void updateUserPW(UsersEntity usersEntity); //my 비밀번호 페이지 수정

	List<ProductEntity> checkout_product(HashMap<String, Object> map);	//결제 페이지

	void sub_stock(HashMap<String, Object> map); // 결제 페이지 갯수 차감

	void saveOrders(OrderEntity OrderEntity);	//상품 결제

	long finalSeq();

	void update(OrderEntity OrderEntity);

	List<FreeBoardUserEntity> lookUpMyBoard(HashMap<String, Object> map);	// 내가 쓴 글

	long countMyBoardAll(HashMap<String, Object> map);

	List<AdminuopViewEntity> logproduction(HashMap<String, Object> map); // 해당 상품 구매한 회원

	List<AdminuopViewEntity> logproductioncountAll(HashMap<String, Object> map);// 해당 상품 구매한 회원 검색 개수
}
