package net.scit.webapp.dao;

import net.scit.webapp.vo.UserVO;

public interface appMapper {

	int joinUser(UserVO user);
	UserVO selectUser(String userid);
	UserVO userIdCheck(String userid);



}
