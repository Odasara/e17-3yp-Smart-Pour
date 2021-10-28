package com.smartPourdatabase.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;



@RestController
public class UserController {

	
	@Autowired
	private UserService userService;
	
	@PostMapping ("/signup")
	public User Signup(@RequestBody User user) {
		return userService.addUser(user);
	}
	
	@PostMapping ("/login")
	public User Login (@RequestBody User user) {
		return userService.isOlduser(user);
		
	}
	
}
