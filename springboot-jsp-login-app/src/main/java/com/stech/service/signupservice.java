package com.stech.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.stech.model.User;
import com.stech.repository.UserRepository;

@Service
public class signupservice {

    @Autowired
    private UserRepository userRepository;

    public boolean registerUser(String name, String password) {
        try {
            // Assuming you have a User constructor that takes name and password
            User user = new User(name, password);
            
            // Save user to the database using the UserRepository
            userRepository.save(user);
            
            return true;  // Registration successful
        } catch (Exception e) {
            e.printStackTrace();  // Log the error for debugging
            return false;  // Registration failed
        }
    }
}
