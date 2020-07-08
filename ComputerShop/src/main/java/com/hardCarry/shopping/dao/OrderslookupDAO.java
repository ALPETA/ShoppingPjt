package com.hardCarry.shopping.dao;

import java.util.HashMap;
import java.util.List;

import com.hardCarry.shopping.entity.join.AdminOrderslookupViewEntity;
import com.hardCarry.shopping.entity.join.UsersOrderEntity;

public interface OrderslookupDAO {
	List<AdminOrderslookupViewEntity> orderslookup(HashMap<String, Object> map);

	long countAll(String search);

	AdminOrderslookupViewEntity ordersuserAllmem(String a); // 주문내역, 회원조회 상세

	List<AdminOrderslookupViewEntity> orderslookupid(HashMap<String, Object> map); // 회원 조회 u_seq를 이용하여 리스트를 다시 뽑음
																					// (controller : adminOrders1)

	long countAll1(HashMap<String, Object> map); // 회원 조회 u_seq를 이용하여 리스트를 다시 뽑음(총 뽑은 개수) (controller : adminOrders1)

	// 매출 리스트 보기
	List<UsersOrderEntity> saleslookup1(HashMap<String, Object> map);

	// 매출 가격
	long sumTotalPrice(HashMap<String, Object> map);

	// 전체 매출 개수
	long countsaleslookup(HashMap<String, Object> map);

	List<AdminOrderslookupViewEntity> orderslookupsetting(HashMap<String, Object> map);//마이 페이지 데이터 테이블

	long countAllsetting(HashMap<String, Object> map);  //마이페이지 데이터 테이블 검색


}
