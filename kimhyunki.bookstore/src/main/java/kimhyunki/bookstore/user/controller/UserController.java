package kimhyunki.bookstore.user.controller;


import kimhyunki.bookstore.user.domain.User;
import kimhyunki.bookstore.user.service.UserService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired private UserService userService;
	
	@RequestMapping("joinUser")
	@ResponseBody
	public boolean joinUser(User user){
		return userService.joinUser(user);
	}
	
	@RequestMapping("idCheck")
	@ResponseBody
	public boolean idCheck(User user){
		boolean flag=false;

		int check = userService.searchId(user);
		if(check==1){
			flag=true;
		}
		System.out.println(flag);
		return flag;
	}
}
