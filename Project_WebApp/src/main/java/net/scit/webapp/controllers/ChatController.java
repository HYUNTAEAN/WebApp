package net.scit.webapp.controllers;

import java.util.Scanner;

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
	
	Scanner sc = new Scanner(System.in);
	
	// 채팅방 get
	@RequestMapping(value = "/chat", method = RequestMethod.GET)
	public @ResponseBody String view_chat(HttpSession session, HttpServletRequest request, HttpServletResponse response, Model model, String uid) throws Exception {
		
		System.out.println("viewchat");
		return "chat";
	}
	
	// 채팅방 post
	@RequestMapping(value= "/chat" , method = RequestMethod.POST)
	public @ResponseBody String chat_reload(HttpSession session, String uid, HttpServletRequest request, HttpServletResponse response) throws Exception {

		//String uname = "user";

		//session.setAttribute("uname",uname);
		session.setAttribute("uid", uid);
	
		return "Success";
	}

	
}
