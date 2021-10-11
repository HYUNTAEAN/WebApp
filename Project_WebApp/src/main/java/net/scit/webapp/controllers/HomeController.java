package net.scit.webapp.controllers;

import java.io.IOException;
import java.util.List;

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

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@Autowired
	private AppService sv;
	

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model, HttpSession session) throws IOException {
		
		
		
		String URL = "https://darksky.net/forecast/37.5662,126.9785/si12/en4";

		Document doc = Jsoup.connect(URL).get();

		Elements today = doc.select(".feels-like-text");
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
