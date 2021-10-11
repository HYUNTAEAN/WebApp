package net.scit.webapp.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.scit.webapp.dao.AppRepository;
import net.scit.webapp.vo.BookmarkVO;
import net.scit.webapp.vo.UserVO;

@Service
public class AppService {

	@Autowired
	AppRepository repo;

	@Autowired
	private HttpSession session;


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

	public List<BookmarkVO> selectBookmarkList(String userId) {
		return repo.selectBookmarkList(userId);
	}

	public BookmarkVO selectBookmark(int bseq) {
		return repo.selectBookmark(bseq);
	}

	public List<UserVO> selectAllUser() {
		return repo.selectAllUser();
	}


	

}
