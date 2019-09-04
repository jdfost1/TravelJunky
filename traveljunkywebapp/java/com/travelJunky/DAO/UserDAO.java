package com.travelJunky.DAO;

import com.travelJunky.entities.User;

public interface UserDAO {

	User findByEmail(String email);
	
	void save(User user);
	
	void delete(User user);
}