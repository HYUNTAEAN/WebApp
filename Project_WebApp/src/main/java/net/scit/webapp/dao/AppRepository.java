package net.scit.webapp.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class AppRepository {
	
	@Autowired
	SqlSession session;
	

	public void exam() {
		appMapper mapper = session.getMapper(appMapper.class);
	}

}
