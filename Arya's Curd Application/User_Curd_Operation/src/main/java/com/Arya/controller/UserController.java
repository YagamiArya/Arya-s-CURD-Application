package com.Arya.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.Arya.model.User;
import com.Arya.service.impl.UserServiceImpl;

@Controller
public class UserController {
	
	@Autowired
	private UserServiceImpl userService = new UserServiceImpl();

	@GetMapping("/createUser")
	public String showCreate() {
		return "createUserPage";
	}
	
	@RequestMapping("saveUser")
	public String saveUser(@ModelAttribute("user") User user, ModelMap modelMap) {
		System.out.println(user);
		User savedUser =  userService.add(user);
		String msg = "User saved successfully with id:"+savedUser.getId();
		modelMap.addAttribute("msg", msg);
		return "createUserPage";
	}
	
	@RequestMapping("viewUsers")
	public String viewAllUser(ModelMap modelMap) {
		List<User> users = userService.findAll();
		modelMap.addAttribute("users", users);
		return "viewAllPage";
	}
	
	@RequestMapping("editUser")
	public String editUser(@RequestParam("id") int id, ModelMap modelMap) {
		User user = userService.findById(id);
		modelMap.addAttribute("user", user);
		return "editUserPage";
	}
	
	@RequestMapping("updateUser")
	public String updateUser(@ModelAttribute("user") User user, ModelMap modelMap) {
		System.out.println(user);
		User updatedUser =  userService.add(user);
		String msg = "User updated successfully with id:"+updatedUser.getId();
		modelMap.addAttribute("msg", msg);
		return "editUserPage";
	}
	
	@RequestMapping("deleteUser")
	public String deleteUser(@RequestParam("id") int id, ModelMap modelMap) {
		userService.delete(id);
		String msg = "User deleted successfully.";
		List<User> users = userService.findAll();
		modelMap.addAttribute("users", users);
//		modelMap.addAttribute("msg", msg);
		return "viewAllPage";
	}
	
	
	
	
	
	
	
}
