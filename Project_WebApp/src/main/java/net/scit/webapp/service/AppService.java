package net.scit.webapp.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.scit.webapp.dao.AppRepository;

@Service
public class AppService {
	
	@Autowired
	AppRepository repo;
	
	
	public void example(){
		
	}


	
}
