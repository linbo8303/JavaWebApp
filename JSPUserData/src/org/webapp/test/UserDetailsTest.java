package org.webapp.test;

import org.webapp.service.UserDetailsService;
import org.webapp.data.*;

public class UserDetailsTest {

	public static void main(String[] args) {
		UserDetails user = UserDetailsService.getUserbyUserId(13);
		System.out.println(user.getUsername());
	}

}
