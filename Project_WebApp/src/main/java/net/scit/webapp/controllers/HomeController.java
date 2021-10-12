package net.scit.webapp.controllers;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import net.scit.webapp.service.AppService;
import net.scit.webapp.vo.BookmarkVO;
import net.scit.webapp.vo.UserVO;

@Controller
public class HomeController {
	String radioVal = "dsong";
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
			 Elements summary = doc.select("span.desc swap > span.summary swap");
			 Elements aa = doc.select(".summary.summary.swap");
			 Elements ab = doc.select(".currently__summary.next.swap");
/* 코드 변경  */
 
			
				/*
				 * for (Element e : img) list.add(e.attr("src"));
				 */
				
				 model.addAttribute("a", today); 
				 model.addAttribute("b", aa); 
				 model.addAttribute("c", ab); 
			
				
									/* model.addAttribute("c", summary); */
				 		logger.info("메인화면 이동");
		
		return "main";
	}
	@RequestMapping(value = "/music", method = RequestMethod.GET)
	public String music() {
		return "music";
		}
	@RequestMapping(value = "/bgm", method = RequestMethod.GET)
	public String bgm() {
		return "bgm";
		}
	@RequestMapping(value = "goBgmdata", method = RequestMethod.POST)
	public String goBgmdata(Locale locale, Model model, String dsong, String classic) {
	  System.out.println(dsong);
	  System.out.println(classic);
	  
	  if (dsong != null) {
		  model.addAttribute("dsong", dsong);
	  } else {
		  model.addAttribute("classic", classic);
	  }
		
	String userId = (String) session.getAttribute("loginId");
		if (userId == null) {
			userId = "";
		}
		List<BookmarkVO> bookmarkList = sv.selectBookmarkList(userId);
		model.addAttribute("bookmarkList", bookmarkList);


		List<UserVO> userList = sv.selectAllUser();
		model.addAttribute("userList", userList);
		/* model.addAttribute("c", summary); */
		logger.info("메인화면 이동");
		
		
	  return "main";
	}

}
