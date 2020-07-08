package com.hardCarry.shopping.service;

import java.util.HashMap;
import java.util.List;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hardCarry.shopping.dao.OrderslookupDAO;
import com.hardCarry.shopping.entity.join.AdminOrderslookupViewEntity;
import com.hardCarry.shopping.entity.join.UsersOrderEntity;

@Service
public class OrderslookupService {

	@Autowired
	OrderslookupDAO orderslookupDAO;

	@Autowired
	ModelMapper mapper;

	public List<AdminOrderslookupViewEntity> orderslookup(int page, int length, String search) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("page", page);
		map.put("size", length);
		map.put("search", search);
		return orderslookupDAO.orderslookup(map);
	}

	public long countAll(String search) {
		return orderslookupDAO.countAll(search);
	}

	public AdminOrderslookupViewEntity ordersuserAllmem(String a) {
		return orderslookupDAO.ordersuserAllmem(a);
	}

	public List<AdminOrderslookupViewEntity> orderslookupid(String u_seq, int page, int length, String search) {
		// 회원조회 u_seq를 이용하여 리스트를 다시 뽑음 (controller : adminOrders1)
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("u_seq", u_seq);
		map.put("page", page * length);
		map.put("size", length);
		map.put("search", search);
		return orderslookupDAO.orderslookupid(map);
	}

	public long countAll1(String search, String u_seq) {
		// 회원 조회 u_seq를 이용하여 리스트를 다시 뽑음(총 뽑은 개수) (controller : adminOrders1)
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("u_seq", u_seq);
		map.put("search", search);
		return orderslookupDAO.countAll1(map);
	}

	// 매출 리스트 보기

	// 전체 매출 개수
	public long countsaleslookup(String search1, String search2) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("search1", search1);
		map.put("search2", search2);
		return orderslookupDAO.countsaleslookup(map);
	}

	public List<UsersOrderEntity> saleslookup1(int page, int length, String search1, String search2) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("search1", search1);
		map.put("search2", search2);
		map.put("page", page * length);
		map.put("size", length);
		return orderslookupDAO.saleslookup1(map);
	}

	public long sumTotalPrice(String search1, String search2) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("search1", search1);
		map.put("search2", search2);
		return orderslookupDAO.sumTotalPrice(map);
	}

	public List<AdminOrderslookupViewEntity> orderslookupsetting(int page, int length, String search, String u_seq) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("page", page * length);
		map.put("size", length);
		map.put("search", search);
		map.put("u_seq", u_seq);
		System.out.println("야" + map);
		return orderslookupDAO.orderslookupsetting(map); //마이 페이지 데이터 테이블
	}

	public long countAllsetting(String search, String u_seq) { // 마이 페이지 데이터 테이블 검색
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("search", search);
		map.put("u_seq", u_seq);
		return orderslookupDAO.countAllsetting(map);
	}


}
