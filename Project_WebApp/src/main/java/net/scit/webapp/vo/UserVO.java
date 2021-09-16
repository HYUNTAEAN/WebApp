package net.scit.webapp.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class UserVO {
	private String userid;			//아이디
	private String userpwd;			//비밀번호
	private int count;				//접속여부
	private int theme;				//배경테마 번호
	private String background;		//배경사진명
	
}
