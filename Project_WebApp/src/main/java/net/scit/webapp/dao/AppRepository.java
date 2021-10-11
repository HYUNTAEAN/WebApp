package net.scit.webapp.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import net.scit.webapp.vo.BookmarkVO;
import net.scit.webapp.vo.CommandVO;
import net.scit.webapp.vo.UserVO;

@Repository("AppRepository")
public class AppRepository {

	@Autowired
	SqlSession session;

	public void exam() {
		appMapper mapper = session.getMapper(appMapper.class);
	}

	public int joinUser(UserVO user) {
		int cnt = 0;
		try {
			appMapper mapper = session.getMapper(appMapper.class);
			cnt = mapper.joinUser(user);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return cnt;
	}

	public UserVO selectUser(String userid) {
		UserVO user = null;
		try {
			appMapper mapper = session.getMapper(appMapper.class);
			user = mapper.selectUser(userid);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return user;
	}

	public UserVO userIdCheck(String userid) {
		UserVO user = null;
		try {
			appMapper mapper = session.getMapper(appMapper.class);
			user = mapper.userIdCheck(userid);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return user;
	}

	public int addBookmark(BookmarkVO vo) {
		try {
			appMapper mapper = session.getMapper(appMapper.class);
			return mapper.addBookmark(vo);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
	
	public List<BookmarkVO> selectBookmarkList(String userId) {
		try {
			appMapper mapper = session.getMapper(appMapper.class);
			return mapper.selectBookmarkList(userId);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public BookmarkVO selectBookmark(int bseq) {
		try {
			appMapper mapper = session.getMapper(appMapper.class);
			return mapper.selectBookmark(bseq);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public int sessionUpdate(String userid) {
		System.out.println("1");
		
			appMapper mapper = session.getMapper(appMapper.class);
			int result = mapper.sessionUpdate(userid);
		
		return result;
	}

	public int sessionDelete(String userid) {
		int result = 0;
		try{
			appMapper mapper = session.getMapper(appMapper.class);
			result = mapper.sessionDelete(userid);
		} catch (Exception e){
			e.printStackTrace();
		}
		return result;
	}

	public List<UserVO> selectAllUser() {
		try{
			appMapper mapper = session.getMapper(appMapper.class);
			return mapper.selectAllUser();
		} catch (Exception e){
			e.printStackTrace();
		}
		return null;
	}

	public int newCommand(CommandVO command) {
		appMapper mapper = session.getMapper(appMapper.class);
		
		int result = 0;
		try {
			result = mapper.newCommand(command);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	public List<CommandVO> selectCmdList(String userid){
		List<CommandVO> list = null;
		
		try {
			appMapper mapper = session.getMapper(appMapper.class);
			list = mapper.selectCmdList(userid);
		}catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}


	public int deleteCmd(int cseq) {
		int cnt = 0;
		try {
			appMapper mapper = session.getMapper(appMapper.class);
			cnt = mapper.deleteCmd(cseq);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return cnt;
	}


	public int backImg(Map<String, String> setImgSet) {
		int cnt = 0;
		try {
			appMapper mapper = session.getMapper(appMapper.class);
			cnt = mapper.backImg(setImgSet);
		}catch (Exception e) {
			e.printStackTrace();
		}
		return cnt;
	}
	
	
	public int themeC(UserVO user) {
		int cnt = 0;
		try {
			appMapper mapper = session.getMapper(appMapper.class);
			cnt = mapper.themeC(user);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return cnt;
	}
	public int setBackColor(String userid) {
		appMapper mapper = session.getMapper(appMapper.class);
		
		int theme = mapper.setBackColor(userid);
		
		return theme;
		}
		

	public String selectImg(String userid) {
		appMapper mapper = session.getMapper(appMapper.class);
		
		String fileName = mapper.selectImg(userid);
		
		return fileName;
	}


	public List<CommandVO> checkCmd(String cmd) {
		appMapper mapper = session.getMapper(appMapper.class);

		List<CommandVO> checkCmd = mapper.checkCmd(cmd);
		
		return checkCmd;
	}

}
