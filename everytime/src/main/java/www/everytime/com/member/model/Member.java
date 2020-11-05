package www.everytime.com.member.model;

import lombok.Data;

@Data
public class Member {
	int mno;
	String id;
	String password;
	String nickname;
	String email;
	String academyname;
	boolean del;
}
