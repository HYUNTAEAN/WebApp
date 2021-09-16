package net.scit.webapp.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class CommandVO {
	private int cseq;			//시퀀스
	private String userid;		//아이디
	private String command;		//명령어
	private String commandurl;	//명령어 실행구문
	
}
