package net.scit.webapp.controllers;

import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import net.scit.webapp.service.AppService;
import net.scit.webapp.vo.UserVO;

@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	
	@Autowired
	private AppService sv;
	
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {
		return "main";
	}	
	//회원가입 
	@RequestMapping(value = "/joinForm", method = RequestMethod.GET)
	public String joinForm() {
		return "joinForm";
		}
	@RequestMapping(value = "/join", method = RequestMethod.POST)
	public String join(UserVO user) {
		return sv.joinUser(user);
	}
	//로그인
	@RequestMapping(value = "/loginForm", method = RequestMethod.GET)
	public String loginForm() {
		return "loginForm";
		}
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(UserVO inputData) {
		return sv.selectUser(inputData);
	}
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout() {
		return sv.logout();
	}
	@RequestMapping(value = "/idcheck", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {		
		return "idcheck";
	}
	@RequestMapping(value = "/user/idCheck", method = RequestMethod.GET)
	@ResponseBody
	public int idCheck(@RequestParam("userid") String userid) {
		System.out.println(userid);
		int check =  sv.userIdCheck(userid);
		System.out.println(check);
		return check;
	}

}

