package com.Tailoring.store.management.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.Tailoring.store.management.Service.UserServiceImpl;
import com.Tailoring.store.management.Model.LoginUser;
import com.Tailoring.store.management.Model.User;

@Controller
public class UserController {

	@Autowired
	UserServiceImpl userServiceImpl;
	
	@RequestMapping(value="/login",method=RequestMethod.GET)
	public String userRegistrationDisplay(ModelMap model) {
		model.addAttribute("loginuser", new LoginUser());
		System.out.println("first");
		return "login";
	}
	
	@RequestMapping(value="/success1", method=RequestMethod.POST)
	public String loginUser(@ModelAttribute("loginuser") LoginUser user, ModelMap model) {
		//System.out.println(userDaoImpl.userExist(user.getUser_id()));
		System.out.println("second");
		if(userServiceImpl.isUser(user)) {
			
			return "success1";
		}
		else {
			
			return "UserRegister";
		}
		
	}

	
	@RequestMapping(value="/success", method=RequestMethod.POST)
	public String userRegistration(@ModelAttribute("user") User user, ModelMap model) {
		//System.out.println(userDaoImpl.userExist(user.getUser_id()));
		System.out.println("second");
		if(userServiceImpl.addUser(user)) {
			model.put("status", "Registeration done Successfully");
			return "success";
		}
		else {
			model.put("status", "User Id is already used");
			return "UserRegister";
		}
		
	}
}
