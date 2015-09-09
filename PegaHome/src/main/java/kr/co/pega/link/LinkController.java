package kr.co.pega.link;

import java.util.ArrayList;
import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import kr.co.pega.board.notice.NoticeBoard;
import kr.co.pega.board.notice.NoticeBoardService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

@Controller
public class LinkController {
	
	@Autowired NoticeBoardService noticeBoardService;
	
	@RequestMapping(value = "LinkController/index.do", method = RequestMethod.GET)
	public String Index(Locale locale, Model model) {
		return "redirect:/";
	}	
	
	@RequestMapping(value = "LinkController/signup.do", method = RequestMethod.GET)
	public String Signup(Locale locale, Model model) {
		return "sign/sign-up-3.do";
	}	
	
	@RequestMapping(value = "LinkController/signin.do", method = RequestMethod.GET)
	public String Signin(Locale locale, Model model) {
		return "sign/sign-in-3.do";
	}
	
	@RequestMapping(value = "LinkController/noticeBoardWrite.do", method = RequestMethod.GET)
	public String NoticeBoardWrite(Locale locale, Model model) {
		return "notice/write.do";
	}	
	
	@RequestMapping(value = "LinkController/member.do", method = RequestMethod.GET)
	public String Member(Locale locale, Model model) {
		return "member/member_index.do";
	}	
}
