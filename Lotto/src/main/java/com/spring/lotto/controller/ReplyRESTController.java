package com.spring.lotto.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.spring.lotto.domain.ReplyVO;
import com.spring.lotto.service.ReplyService;

// RequestMapping
// /replies (POST) : 댓글 추가(insert)
// /replies/all/숫자 (GET) : 해당 글번호(bno)의 모든 댓글 검색(select)
// /replies/숫자 (PUT) : 해당 댓글 번호(rno)의 내용을 수정(update)
// /replies/숫자 (DELETE) : 해당 댓글 번호(rno)의 댓글 삭제(delete)

@RestController
@RequestMapping(value = "/replies")
public class ReplyRESTController {
	@Autowired
	private ReplyService replyService;
	
	@RequestMapping(value ="/all/{no}", method = RequestMethod.GET)
	public ResponseEntity<List<ReplyVO>> readReplies(@PathVariable("no") int bno) {
		List<ReplyVO> list = replyService.read(bno);
		ResponseEntity<List<ReplyVO>> entity = new ResponseEntity<List<ReplyVO>>(list, HttpStatus.OK);
		return entity;
	}
	
	@RequestMapping(method = RequestMethod.POST)
	public ResponseEntity<Integer> createReply(@RequestBody ReplyVO vo){ // json 형태로 넘겨받은 값을 저장
		int result = replyService.create(vo);
		ResponseEntity<Integer> entity = new ResponseEntity<Integer>(result, HttpStatus.OK);
		return entity;
	}
	
	@RequestMapping(value = "/{no}" , method = RequestMethod.PUT)
	public ResponseEntity<String> updateReply(@PathVariable("no") int rno, @RequestBody ReplyVO vo) {
		vo.setRno(rno);
		int result = replyService.update(vo);
		ResponseEntity<String> entity = null;
		if (result == 1) {
			entity = new ResponseEntity<String>("success", HttpStatus.OK);
		} else {
			entity = new ResponseEntity<String>("fail", HttpStatus.OK);
		}
		return entity;
	}
	
	@RequestMapping(value = "/{no}" , method = RequestMethod.DELETE)
	public ResponseEntity<String> deleteReply(@PathVariable("no") int rno) {
		
		int result = replyService.delete(rno);
		ResponseEntity<String> entity = null;
		if (result == 1) {
			entity = new ResponseEntity<String>("success", HttpStatus.OK);
		} else {
			entity = new ResponseEntity<String>("fail", HttpStatus.OK);
		}
		return entity;
	}
	
	
	
}
















