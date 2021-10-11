package net.scit.webapp.controllers;

import java.net.URLEncoder;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import net.scit.webapp.service.AppService;
import net.scit.webapp.util.FileService;
import net.scit.webapp.vo.BookmarkVO;
import net.scit.webapp.vo.CommandVO;
import net.scit.webapp.vo.UserVO;

@Controller 
public class SettingController {
	

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@Autowired
	private AppService sv;
	
	String uploadPath;
	
	@RequestMapping(value = "theme", method = RequestMethod.GET)
	public String themeColor() {
		
		
		return "theme";
	}
	
	@RequestMapping(value = "command", method = RequestMethod.GET)
	public String command(Model model, HttpSession session) {
		String userid = (String)session.getAttribute("loginId");
		
		List<CommandVO> list = sv.cmd(userid);
		
		model.addAttribute("list",list);
		
		System.out.println(list);
		return "command";
	}
	
	@RequestMapping(value = "backgroundMusic", method = RequestMethod.GET)
	public String backgroundMusic() {
		
		return "backgroundMusic";
	}

	// 회원가입
	@RequestMapping(value = "/joinForm", method = RequestMethod.GET)
	public String joinForm() {
		return "joinForm";
	}

	@RequestMapping(value = "/join", method = RequestMethod.POST)
	public String join(UserVO user) {
		return sv.joinUser(user);
	}

	// 로그인
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
		int check = sv.userIdCheck(userid);
		System.out.println(check);
		return check;
	}

	/* chatdesign 임시 */
	@RequestMapping(value = "/chatdesign", method = RequestMethod.GET)
	public String chatdesign() {
		return "chatdesign";
	}

	@RequestMapping(value = "/howtouse", method = RequestMethod.GET)
	public String howtouse() {
		return "howtouse";
	}

	@RequestMapping(value = "/addBookmark", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, String> addBookmark(BookmarkVO vo, HttpSession session) {
		vo.setUserId((String) session.getAttribute("loginId"));
		int bseq = sv.addBookmark(vo);
		Map<String, String> output = new HashMap<>();
		output.put("result", String.valueOf(bseq));
		return output;
	}
	
	@RequestMapping(value="/checker", method = RequestMethod.GET)
	@ResponseBody
	public String checker(HttpSession session){
		System.out.println("작동함");
		String userid = (String) session.getAttribute("loginId");
		if(userid != null){
			session.invalidate();
		}
		return "success";
	}
	@RequestMapping(value = "/newCommand", method = RequestMethod.GET)
	public String newCommand(String cmdname, String commandurl, HttpSession session) {
		
		String userid = (String)session.getAttribute("loginId");
		
		CommandVO cmd = new CommandVO(0,userid,cmdname,commandurl);
		
		System.out.println(cmdname);
		System.out.println(commandurl);
		int result = sv.newCommand(cmd);
		
		return "redirect:/";
	}
	
	@RequestMapping(value = "checkCmd.jy", method = RequestMethod.GET)
	public @ResponseBody int CmdCheck(String cmd, Model model) {
		int checkNum = 1;
		
		List<CommandVO> checkCmd = sv.checkCmd(cmd);
		
		if(checkCmd.size() < 1) {
			
			checkNum = 0;
		}
		
		return checkNum;
	}
	
	@RequestMapping(value = "/cmdList", method = RequestMethod.GET)
	public String selectCmdList(Model model, HttpSession session) {
		// HashMap<String,String> searchMap = new HashMap<String, String>();
		
		String userid = (String)session.getAttribute("loginId");
		
		List<CommandVO> list = sv.cmd(userid);
		
		model.addAttribute("list",list);
		
		System.out.println(list);
		
		return "command";
	}
	
	@RequestMapping(value="/deleteCmd", method = RequestMethod.GET)
	public String deleteCmd(int cseq) {
		return sv.deleteCmd(cseq);
	}
	
	@RequestMapping(value = "/Bimg", method=RequestMethod.POST)
	public String Bimg(HttpSession session, MultipartHttpServletRequest setImgFirst) {

		String path = "redirect:/";
		
		MultipartFile setImgSet = setImgFirst.getFile("file");

		if(!setImgSet.isEmpty()) {
		uploadPath = setImgFirst.getSession().getServletContext().getRealPath("/upload");
		String userid = (String)session.getAttribute("loginId");
		
		
		String background = setImgSet.getOriginalFilename();
		String savedFilename = FileService.saveFile(setImgSet, uploadPath);

		System.out.println(background);
		System.out.println(savedFilename);
		
			Map<String, String> setImg = new HashMap<>();
			setImg.put("savedFilename", savedFilename);
			setImg.put("background", background);
			setImg.put("userid", userid);
			path = sv.backImg(setImg);
			System.out.println("come2");
		}
		return path; 
	}
	
	@RequestMapping(value = "/themeC", method = RequestMethod.GET)
	public String themeC(int theme, Model model, HttpSession session) {
		
		String path = "redirect:/";
		
		if(!(theme == 0)) {

			String userid = (String)session.getAttribute("loginId");
			
			UserVO user = new UserVO(userid, null, 0, theme, null, null);
			
			path = sv.themeC(user);
		}
		return path;
	}
	
	
	@RequestMapping(value = "themeColor", method = RequestMethod.GET )
	public @ResponseBody int themeColor(HttpSession session) {
		
		String userid = (String)session.getAttribute("loginId");
		int theme = 0;
		
		if(userid == null) {
			
		}else {
			System.out.println("a");
			theme = sv.setBackColor(userid);
			System.out.println("b");
		}
		return theme;
		
	}
	
	
	
	@RequestMapping(value="backImg", method=RequestMethod.GET)
	public @ResponseBody String backImg(HttpSession session, HttpServletResponse response) {
		String userid = (String)session.getAttribute("loginId");
		
		if(userid != null) {
		String fileName = sv.selectImg(userid);
		System.out.println(fileName);
		
		try {
			response.setHeader("Content-Disposition", "attachment;filename="  + URLEncoder.encode(fileName, "UTF-8"));
		} catch(Exception e) {
			e.printStackTrace();
		} 
		
		String fullPath = "C:" + uploadPath + "/" + fileName;
		
		System.out.println(fullPath);
		
		}
		return "";
	}
}

