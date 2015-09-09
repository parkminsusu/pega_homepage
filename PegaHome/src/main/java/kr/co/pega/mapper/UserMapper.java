package kr.co.pega.mapper;

import java.util.ArrayList;

import kr.co.pega.user.User;

public interface UserMapper {

	public void insertUser(User user);
	public void loginUser(User user);
	public ArrayList<User> getUser();
}
