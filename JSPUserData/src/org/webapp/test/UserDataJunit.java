package org.webapp.test;

import org.webapp.data.UserDetails;
import org.webapp.service.UserDetailsService;

public class UserDataJunit {
	
	public UserDetails addUser(UserDetails user) {
		UserDetailsService.createUserDetails(user);
		int userId = user.getUserId();
		System.out.println(userId);

		return UserDetailsService.getUserbyUserId(userId);
	}

}
