package net.scit.webapp.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class BookmarkVO {
	private int bseq;			//시퀀스
	private String userid;		//아이디
	private String bookurl;		//북마크 주소
	
}
