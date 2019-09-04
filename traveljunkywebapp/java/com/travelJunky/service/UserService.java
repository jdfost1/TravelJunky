package com.travelJunky.service;

import org.springframework.security.core.userdetails.UserDetailsService;

import com.travelJunky.entities.User;
import com.travelJunky.model.UserRegistration;
import com.travelJunky.model.UserUpdate;

public interface UserService extends UserDetailsService {
	
	User findByEmail(String email);
	
	void save(User user);
	
	void save(UserRegistration userRegistration);
	
	void save(User user, UserUpdate userUpdate);
	
	void delete(User user);
}
