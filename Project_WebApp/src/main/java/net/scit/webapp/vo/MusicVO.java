package net.scit.webapp.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class MusicVO {
	private int mseq;			//시퀀스
	private String userid;		//아이디
	private String fileurl;		//음악파일명
	
}
