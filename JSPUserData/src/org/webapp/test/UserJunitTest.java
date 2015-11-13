package org.webapp.test;

import static org.junit.Assert.*;

import org.junit.Test;
import org.webapp.data.UserDetails;

public class UserJunitTest {

	@Test
	public void userAdded() {
		UserDataJunit test = new UserDataJunit();
		UserDetails user = new UserDetails();
		user.setUsername("test");
		UserDetails userAdd = test.addUser(user);
		assertEquals(user.getUserId(), userAdd.getUserId());
		assertEquals(user.getUsername(), userAdd.getUsername());
	}

}
