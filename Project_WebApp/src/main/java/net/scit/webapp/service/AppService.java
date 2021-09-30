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

	public void example() {

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
				session.setAttribute("loginId", searchData.getUserid());
				session.setAttribute("loginPwd", searchData.getUserpwd());
				path = "redirect:/";
			} else {
				path = "redirect:/loginForm";
			}
		}
		return path;
	}

	public String logout() {
		session.removeAttribute("loginId");
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
}
