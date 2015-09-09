package kr.co.pega.board.free;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

@Controller
public class FreeBoardController {
	
	@Autowired FreeBoardService freeBoardService;
	
}
