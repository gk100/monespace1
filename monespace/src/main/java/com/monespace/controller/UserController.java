package com.monespace.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.monespace.Service.UserService;
import com.monespace.model.User;
import com.monespace.model.UserBillingAddress;
import com.monespace.model.UserDetail;
import com.monespace.model.UserPermanentAddress;
import com.monespace.model.UserRole;

@Controller
public class UserController {

	@Autowired
	private UserService userService;
	
	@RequestMapping("/registerForm")
	public String userDetail() {
//	public String userDetail(Model model) {
//		UserDetail userDetail = new UserDetail();
//		UserPermanentAddress userPermanentAddress = new UserPermanentAddress();
//		UserBillingAddress userBillingAddress = new UserBillingAddress();
//		UserRole userRole = new UserRole();
//false>>>	userRole.setUserRoleId(userDetail.getUserRole());
//		userRole.setUserId(userDetail.getUserId());
//		
//		model.addAttribute("userDetail", userDetail);
//		userDetail.setUserBillingAddress(userBillingAddress);
//		userDetail.setUserPermanentAddress(userPermanentAddress);
//		userDetail.setUserRole(userRole);
		
		return "redirect:/reg";
	}
	
	@RequestMapping(value="/addregister", method=RequestMethod.POST)
	public String addCategory(@ModelAttribute("userDetail") UserDetail userDetail) {
		this.userService.saveOrUpdateUser(userDetail);
		return "redirect:/";
	}
	//-----------------------Second way-------------------------
	@RequestMapping("/register")
	public String createUser(Model model) {
		model.addAttribute("user",new User());
		return "registerUser";
	}
	
	@RequestMapping("/addUser")
	public String createUserAction(Model model, @ModelAttribute("user")User user, HttpSession session) {
//		userService.saveOrUpdateUser(user);
		session.setAttribute("userId", user.getUserId());
		session.setAttribute("username", user.getUsername());
		session.setAttribute("password", user.getPassword());
		
		return "redirect:/registerForm";
	}
	
	@RequestMapping("/login")
	private String login() {
		return "login";
	}
	
	@RequestMapping(value="/perform_logout", method = RequestMethod.GET)
	public String logoutPage (HttpServletRequest request, HttpServletResponse response) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (auth != null) {
			new SecurityContextLogoutHandler().logout(request, response, auth);
		}
		return "redirect:/home";
	}
	
	
}

