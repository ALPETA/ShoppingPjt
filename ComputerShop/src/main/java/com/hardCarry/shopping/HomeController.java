package com.hardCarry.shopping;

import static org.junit.Assert.assertNotNull;

import java.util.HashMap;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.hardCarry.shopping.dao.UserDAO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "file:src/main/webapp/WEB-INF/spring/dataBase-context.xml")
public class HomeController {

	@Autowired
	UserDAO userDAO;
	
	@Test
	public void test11() throws Exception {
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("id", "asdf");
		map.put("pw", "1234");
		assertNotNull(userDAO.login(map));
	}

}
