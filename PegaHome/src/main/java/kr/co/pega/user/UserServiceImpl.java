package kr.co.pega.user;

import java.io.IOException;

import java.util.ArrayList;


import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;

import kr.co.pega.mapper.UserMapper;

@Service
public class UserServiceImpl implements UserService {

	@Autowired 
	UserMapper userMapper;


	@Override
	public void inserUser(User user) throws IOException {
		userMapper.insertUser(user);
	}

	@Override
	public int updateUser(User user) {
		return 0;
	}

	@Override
	public ArrayList<User> getUser() throws IOException {
		// TODO Auto-generated method stub	
		ArrayList<User> result = new ArrayList<User>();
		result = userMapper.getUser();
		return result;
	}
	
	@Override
	public User checkUser(String userId, String userPassword) throws IOException {
		// TODO Auto-generated method stub
		ArrayList<User> userList = getUser();
		
		// 입력받은 아이디, 비밀번호와 일치하는 유저가 있는지 확인하고 있으면 해당하는 유저를 return 한다.
		for (User user : userList) {
			if(userId.equals(user.getUserId()) && 
					userPassword.equals(user.getUserPassword())){
				return user;
			}
		}
		return null;
	}

	@Override
	public String checkId(String id) throws IOException {
		// TODO Auto-generated method stub
		ArrayList<User> userList = getUser();
		
		// 입력받은 아이디, 비밀번호와 일치하는 유저가 있는지 확인하고 있으면 해당하는 유저를 return 한다.
		for (User user : userList) {
			// 중복되는 아이디가 있으면 "1" 리턴
			if(id.equals(user.getUserId())){
				return "1";
			}
		}
		// 중복되는 아이디가 없으면 "0" 리턴
		return "0";
	}

}
