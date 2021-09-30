package net.scit.webapp.controllers;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.imageio.ImageIO;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
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
	public String home(Model model) throws IOException { String URL ="https://darksky.net/forecast/37.5662,126.9785/si12/en4"; 
	
	List<String> list = new ArrayList<>();
	Document doc = Jsoup.connect(URL).get();   
    
			 Elements today=doc.select(".feels-like-text"); 
				/* map.put("ondo",today.select(".current").text()); */
				/* map.put("summary",today.select(".summary").text()); */
				/* Elements img = doc.select(".currently img"); */
			 Elements summary = doc.select(".currently");
			 Elements aa = doc.select(".center.currently__summary next swap");

 
				/*
				 * for (Element e : img) list.add(e.attr("src"));
				 */
				
				 model.addAttribute("a", today); 
				 model.addAttribute("b", aa); 

			
				
									/* model.addAttribute("c", summary); */
				 		logger.info("메인화면 이동");
		
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
	/*chatdesign 임시*/
	@RequestMapping(value = "/chatdesign", method = RequestMethod.GET)
	public String chatdesign() {
		return "chatdesign";
		}
	
	@RequestMapping(value = "/howtouse", method = RequestMethod.GET)
	public String howtouse() {
		return "howtouse";
		}
}

