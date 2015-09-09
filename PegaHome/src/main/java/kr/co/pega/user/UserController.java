package kr.co.pega.user;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class UserController {

	@Autowired UserService UserService;
		
	@RequestMapping(value = "UserController/insert.do", method = RequestMethod.POST)
	public String Insert(HttpServletRequest request) throws IOException {
		
		request.setCharacterEncoding("utf-8");
		
		String userId = request.getParameter("id");
		String userEmail = request.getParameter("email");
		String userPassword = request.getParameter("password");
		String userName = request.getParameter("name");
		String userPhone = request.getParameter("phone");
		String userAlias = request.getParameter("alias");
		String userGrant = "일반회원";
		String userPart = request.getParameter("part");
		int userTh = Integer.parseInt(request.getParameter("th"));

		User user = new User(userId,userPassword,userName,userEmail,userPhone,userAlias
				,userGrant, userTh, userPart);
		
		UserService.inserUser(user);
		
		return "/sign/sign-in-3";
	}	
	
	@RequestMapping(value = "UserController/login.do", method = RequestMethod.POST)
	public String Login(HttpServletRequest request, Model model) throws IOException {
		
		// 로그인폼에서 아이디와 비밀번호를 받아온다.
		String userId = request.getParameter("id");
		String userPassword = request.getParameter("password");
		
		// 아이디 비밀번호가 존재하는지 확인후, 존재한다면 로그인을 완료한다.
		User user = UserService.checkUser(userId, userPassword);
		if(user != null){
			request.getSession().setAttribute("user", user);
		} 
		else{
			// view에서 alert를 출력하기 위해 
			model.addAttribute("msg", "Id와 Password를 확인하세요"); 
		}
		
		model.addAttribute("url", "../"); 
		
		return "/sign/idcheck";
	}	
	
	@RequestMapping(value = "UserController/logout.do", method = RequestMethod.GET)
	public String Logout(HttpServletRequest request) throws IOException {
		request.getSession().removeAttribute("user");
		
		return "redirect:/";
	}	
	
	@RequestMapping(value = "UserController/idcheck.do", method = RequestMethod.GET)
	@ResponseBody
	public String Idcheck(HttpServletRequest request) throws IOException {
		
		String id = request.getParameter("id");
		System.out.println("중복체크하는 아이디는 : " + id);
		// 중복되는 아이디가 있으면 false, 중복되는 아이디가 없으면 true 리턴
		String result =  UserService.checkId(id);
		System.out.println("리턴값은 : " + result);
		return result;
	}	
}
