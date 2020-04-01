package com.spring.lotto.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.spring.lotto.domain.BoardVO;
import com.spring.lotto.pageutil.PageCriteria;
import com.spring.lotto.pageutil.PageMaker;
import com.spring.lotto.service.BoardService;

@Controller
@RequestMapping(value = "/board")
public class BoardController {
   private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
   
@Autowired
private BoardService boardService;
   
   @RequestMapping(value = "/boardlist", method = RequestMethod.GET)
   public void boardlist(Model mode, Integer page, Integer perPage) {
      logger.info("boardlist() 호출");
      
      PageCriteria c = new PageCriteria();
      if (page != null) {
         c.setPage(page);
      }
      if (perPage != null) {
         c.setNumsPerPage(perPage);
      }

      List<BoardVO> list = boardService.read(c);
      mode.addAttribute("boardList", list);

      PageMaker maker = new PageMaker();
      maker.setCriteria(c);
      maker.setTotalCount(boardService.getTotalNumsOfRecords());
      maker.setPageData();
      mode.addAttribute("pageMaker", maker);

   }

   @RequestMapping(value = "/register", method = RequestMethod.GET)
   public void registerGET() {
      logger.info("register() 호출");
   }

   @RequestMapping(value = "/register", method = RequestMethod.POST)
   public String registerPOST(BoardVO vo, RedirectAttributes reAttr) {
      logger.info("registerPOST() 호출");
      // RedirectAttributes : redirect를 수행하면 request 객체가 사라짐
      // - 이 때 특정 attribute를 보내기 위해서 사용되는 인터페이스
      logger.info("제목 : " + vo.getTitle());
      logger.info("본문 : " + vo.getContent());
      logger.info("아이디 : " + vo.getUserid());
      int result = boardService.create(vo);
      if (result == 1) {
         reAttr.addFlashAttribute("insert_result", "success");
      } else {
         reAttr.addFlashAttribute("insert_result", "fail");
      }
      return "redirect:/board/boardlist";
   }

   @RequestMapping(value = "/detail", method = RequestMethod.GET)
   public void detail(int bno, Model model, @ModelAttribute("criteria") PageCriteria c) {
      logger.info("detail() 호출 : bno = " + bno);
      BoardVO vo = boardService.read(bno);
      model.addAttribute("boardVO", vo);
   }

   @RequestMapping(value = "/update", method = RequestMethod.GET)
   public void updateGET(int bno, Model model, @ModelAttribute("criteria") PageCriteria c) {
      logger.info("updateGET() 호출 : bno : " + bno);
      BoardVO vo = boardService.read(bno);
      model.addAttribute("boardVO", vo);
   }

   @RequestMapping(value = "/update", method = RequestMethod.POST)
   public String updatePOST(BoardVO vo, PageCriteria c) {
      logger.info("updatePOST()호출 : bno = " + vo.getBno());
      int result = boardService.update(vo);
      return "redirect:/board/boardlist?page=" + c.getPage() + "&perPage=" + c.getNumsPerPage();
   }

   @RequestMapping(value = "/delete", method = RequestMethod.POST)
   public String delete(int bno) {
      logger.info("delete() 호출 : bno = " + bno);
      int result = boardService.delete(bno);
      return "redirect:/board/boardlist";
   }
   
   @RequestMapping(value = "/qna", method = RequestMethod.GET)
   public void qna() {
      logger.info("qna() 호출");
      
   }

}