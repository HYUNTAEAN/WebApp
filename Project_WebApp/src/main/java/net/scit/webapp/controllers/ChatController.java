package net.scit.webapp.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class ChatController{

	// 채팅방 입장
	@RequestMapping(value = "/chat", method = RequestMethod.GET)
	public @ResponseBody String view_chat(HttpSession session, HttpServletRequest request, HttpServletResponse response, Model model, String uid) throws Exception {
		
		String uname = "user";
		session.setAttribute("uid", uid);
		session.setAttribute("uname",uname);
		return "redirect:chat";
	}
}
