package net.scit.webapp.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller 
public class SettingController {

	@RequestMapping(value = "theme", method = RequestMethod.GET)
	public String themeColor() {
		
		
		return "theme";
	}
	
	@RequestMapping(value = "command", method = RequestMethod.GET)
	public String command() {
		return "command";
	}
	
	@RequestMapping(value = "backgroundMusic", method = RequestMethod.GET)
	public String backgroundMusic() {
		
		return "backgroundMusic";
	}

}
