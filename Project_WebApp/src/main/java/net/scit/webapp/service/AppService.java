package net.scit.webapp.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.scit.webapp.dao.AppRepository;
import net.scit.webapp.vo.BookmarkVO;
import net.scit.webapp.vo.CommandVO;
import net.scit.webapp.vo.UserVO;

@Service
public class AppService {

	@Autowired
	AppRepository repo;

	@Autowired
	private HttpSession session;

	@Autowired
	private HttpServletResponse response;
	
	final String uploadPath = "/BackgroundImg";
	
	public void example(){
		
	}

	public String joinUser(UserVO user) {
		String path = "";
		int cnt = repo.joinUser(user);
		if (cnt > 0) {
			path = "redirect:/";
		} else {
			path = "redirect:/joinForm";
		}
		return path;
	}

	public String selectUser(UserVO inputData) {
		String path = "";
		UserVO searchData = repo.selectUser(inputData.getUserid());

		if (searchData == null) {
			path = "redirect:/loginForm";
		} else {
			if (inputData.getUserpwd().equals(searchData.getUserpwd())) {
				String userid = searchData.getUserid();
				session.setAttribute("loginId", userid);
				repo.sessionUpdate(userid);
				
				path = "redirect:/";
			} else {
				path = "redirect:/loginForm";
			}
		}
		return path;
	}

	public String logout() {
		//String userid = (String) session.getAttribute("loginId");
		//repo.sessionDelete(userid);
		
		session.invalidate();
		return "redirect:/";
	}

	public int userIdCheck(String userid) {
		UserVO user = repo.userIdCheck(userid);
		int num = 0;
		if (user == null) {
			num = 0;
		} else {
			num = 1;

		}
		return num;
	}

	public int addBookmark(BookmarkVO vo) {
		return repo.addBookmark(vo);
	}
//1
	public List<BookmarkVO> selectBookmarkList(String userId) {
		return repo.selectBookmarkList(userId);
	}

	public BookmarkVO selectBookmark(int bseq) {
		return repo.selectBookmark(bseq);
	}

	public List<UserVO> selectAllUser() {
		return repo.selectAllUser();
	}

	public int newCommand(CommandVO command) {
		return repo.newCommand(command);
	}

	public List<CommandVO> cmd(String userid) {
		return repo.selectCmdList(userid);
	}


	public String deleteCmd(int cseq) {
		String path=null;
		
		if(repo.deleteCmd(cseq) > 0) {
			path = "redirect:command";
			System.out.println("삭제 성공");
		} else {
			path = "redirect:command";
		}
		return path;
	}


	public String backImg(Map<String, String> setImg) {
		
		int cnt = repo.backImg(setImg);
		
		String path = "";
		
		if(cnt > 0) {
			path = "redirect:/";
		} else {
			path = "redirect:/theme";
		}
		
		return path;
	}
	
	public String themeC(UserVO user) {
		int cnt = repo.themeC(user);
		
		String path = "";
		
		if(cnt > 0) {
			path = "redirect:/";
		} else {
			path = "redirect:/theme";
		}
		return path;
	}
	public int setBackColor(String userid) {
		
		int theme = repo.setBackColor(userid);
		
			return theme;
		}
	

	public String selectImg(String userid) {
		String fileName = repo.selectImg(userid);
		
		return fileName;
	}


	public List<CommandVO> checkCmd(String cmd) {
		
		List<CommandVO> checkCmd = repo.checkCmd(cmd);
		
		return checkCmd;
	}

	

}
