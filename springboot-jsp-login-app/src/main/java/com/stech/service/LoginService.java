package com.stech.service;

import org.springframework.stereotype.Service;

import com.stech.model.User;

@Service
public class LoginService {
	
	public boolean validateUser(String userid, String password) {
        return userid.equalsIgnoreCase("name")
                && password.equalsIgnoreCase("password");
    }

	public boolean isUserAlreadyExists(User user) {
		// TODO Auto-generated method stub
		return false;
	}

	public void saveUser(User user) {
		// TODO Auto-generated method stub
		
	}

}
