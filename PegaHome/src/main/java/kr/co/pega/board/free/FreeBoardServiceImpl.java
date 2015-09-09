package kr.co.pega.board.free;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.pega.mapper.FreeBoardMapper;

@Service
public class FreeBoardServiceImpl implements FreeBoardService {

	@Autowired FreeBoardMapper freeBoardMapper;
	
}
