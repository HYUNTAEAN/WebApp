package net.scit.webapp.dao;

import java.util.List;

import net.scit.webapp.vo.BookmarkVO;
import net.scit.webapp.vo.UserVO;

public interface appMapper {

	int joinUser(UserVO user);

	UserVO selectUser(String userid);

	UserVO userIdCheck(String userid);

	int addBookmark(BookmarkVO vo);
	
	List<BookmarkVO> selectBookmarkList(String userId);
	
	BookmarkVO selectBookmark(int bseq);

	int sessionUpdate(String userid);

	int sessionDelete(String userid);

	List<UserVO> selectAllUser();


}
