package project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import project.model.userEntity;
import project.service.userManager;

@Controller
public class UserController {

	@Autowired
	private userManager userManager;
	
	public void setUserManager(userManager userManager) {
		this.userManager = userManager;
	}

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String defaultPage(ModelMap map) {
		return "redirect:/main";
	}
        
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(ModelMap model) {
		return "login";
	}
        
        @RequestMapping(value = "/upload", method = RequestMethod.GET)
	public String upload(ModelMap model) {
		return "upload";
	}
        
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String main(ModelMap model) {
		return "mainpage";
	}
        
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String listUsers(ModelMap map) {
		
		map.addAttribute("user", new userEntity());
		map.addAttribute("userList", userManager.getAllUsers());

		return "editUserList";
	}

	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String addUser(
			@ModelAttribute(value = "user") userEntity user,
			BindingResult result) {
		userManager.addUser(user);
		return "redirect:/list";
	}

	@RequestMapping("/delete/{userId}")
	public String deleteUser(@PathVariable("userId") Integer userId) {
		userManager.deleteUser(userId);
		return "redirect:/list";
	}

	@RequestMapping(value = "/accessdenied", method = RequestMethod.GET)
	public String loginerror(ModelMap model) {
		model.addAttribute("error", "true");
		return "denied";
	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(ModelMap model) {
		return "logout";
	}
}
