package www.everytime.com.member.service;

import org.springframework.stereotype.Repository;

import www.everytime.com.member.model.Member;

@Repository
public interface MemberService {

	Member select(String id);

	int insert(Member member);

	int delete(String id);

	int update(Member member);

}
