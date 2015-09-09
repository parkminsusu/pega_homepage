package kr.co.pega.user;

import java.io.IOException;
import java.util.ArrayList;

public interface UserService {
	
	/**
	 * 사용자 가입시에 사용자 정보를 넣는다.
	 * @param user
	 * @throws IOException 
	 */
	public void inserUser(User user) throws IOException;
	
	/**
	 * 개인정보 변경 및 어드민에서 사용자 정보 변경시 사용하는 메소드 
	 * @param user
	 * @return
	 */
	public int updateUser(User user);
	public ArrayList<User> getUser() throws IOException;
	public User checkUser(String userId, String userPassword) throws IOException;
	// 아이디 중복체크를 수행하는 메소드
	public String checkId(String id) throws IOException;


}
