package com.stech.controller;

import com.stech.service.LoginService;
import com.stech.service.signupservice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@SessionAttributes("name")
public class LoginController {

    @Autowired
    private LoginService loginService;

    @Autowired
    private signupservice signupservice;

    // Home page
    @RequestMapping(value = "/home", method = RequestMethod.GET)
    public String viewHomePage(ModelMap map) {
        return "home";
    }

    // Login page (GET)
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String viewLoginPage(ModelMap map) {
        return "login";
    }

    // Login page (POST)
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String showWelcomePage(ModelMap model, @RequestParam String name, @RequestParam String password) {
        boolean isValidUser = loginService.validateUser(name, password);

        if (!isValidUser) {
            model.put("errorMessage", "Access Denied, Invalid Credentials");
            return "login";  // Reload login page if credentials are invalid
        }

        model.put("name", name);  // Add user's name to session
        return "welcome";  // Redirect to welcome page after successful login
    }

    // Signup page (GET)
    @RequestMapping(value = "/signup", method = RequestMethod.GET)
    public String viewSignupPage(ModelMap model) {
        return "signup";  // Show signup form
    }

    // Signup page (POST)
    @RequestMapping(value = "/signup", method = RequestMethod.POST)
    public String handleSignup(@RequestParam String name, @RequestParam String password, ModelMap model) {
        boolean isUserRegistered = signupservice.registerUser(name, password);

        if (!isUserRegistered) {
            model.put("errorMessage", "User registration failed. Username may already exist.");
            return "signup";  // Reload signup page on failure
        }

        model.put("successMessage", "User registered successfully. Please login.");
        return "login";  // Redirect to login page after successful signup
    }

    // Logout page (GET)
    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String showLogoutPage(ModelMap model) {
        return "login";  // Redirect to login page on logout
    }
}
