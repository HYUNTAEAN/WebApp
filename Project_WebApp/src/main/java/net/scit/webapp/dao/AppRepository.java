package net.scit.webapp.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import net.scit.webapp.vo.UserVO;

@Repository
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
}






