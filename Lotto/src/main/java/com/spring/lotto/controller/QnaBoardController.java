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

import com.spring.lotto.domain.QnaBoardVO;
import com.spring.lotto.pageutil.PageCriteria;
import com.spring.lotto.pageutil.PageMaker;
import com.spring.lotto.service.QnaBoardService;

@Controller
@RequestMapping(value = "/qnaboard")
public class QnaBoardController {
   private static final Logger logger = LoggerFactory.getLogger(QnaBoardController.class);

   @Autowired
   private QnaBoardService boardService;

   @RequestMapping(value = "/qna", method = RequestMethod.GET)
   public void qna(Model mode, Integer page, Integer perPage) {
      logger.info("qna() 호출");
      PageCriteria c = new PageCriteria();
      if (page != null) {
         c.setPage(page);
      }
      if (perPage != null) {
         c.setNumsPerPage(perPage);
      }

      List<QnaBoardVO> list = boardService.read(c);
      mode.addAttribute("qnalist", list);

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
   public String registerPOST(QnaBoardVO vo, RedirectAttributes reAttr) {
      logger.info("registerPOST() 호출");

      // RedirectAttributes : redirect를 수행하면 request 객체가 사라짐
      // - 이 때 특정 attribute를 보내기 위해서 사용되는 인터페이스
      logger.info("제목 : " + vo.getQna_title());
      logger.info("본문 : " + vo.getQna_content());
      logger.info("아이디 : " + vo.getQna_userid());
      int result = boardService.create(vo);
      if (result == 1) {
         reAttr.addFlashAttribute("insert_result", "success");
      } else {
         reAttr.addFlashAttribute("insert_result", "fail");
      }
      return "redirect:/qnaboard/qna";
   }

   @RequestMapping(value = "/detail", method = RequestMethod.GET)
   public void detail(int qna_bno, Model model, @ModelAttribute("criteria") PageCriteria c) {
      logger.info("detail() 호출 : bno = " + qna_bno);
      QnaBoardVO vo = boardService.read(qna_bno);
      model.addAttribute("QnaboardVO", vo);
   }

   @RequestMapping(value = "/update", method = RequestMethod.GET)
   public void updateGET(int qna_bno, Model model, @ModelAttribute("criteria") PageCriteria c) {
      logger.info("updateGET() 호출 : bno : " + qna_bno);
      QnaBoardVO vo = boardService.read(qna_bno);
      model.addAttribute("QnaboardVO", vo);
   }

   @RequestMapping(value = "/update", method = RequestMethod.POST)
   public String updatePOST(QnaBoardVO vo, PageCriteria c) {
      logger.info("updatePOST()호출 : bno = " + vo.getQna_bno());
      int result = boardService.update(vo);
      return "redirect:/qnaboard/qna?page=" + c.getPage() + "&perPage=" + c.getNumsPerPage();
   }

   @RequestMapping(value = "/delete", method = RequestMethod.POST)
   public String delete(int qna_bno) {
      logger.info("delete() 호출 : bno = " + qna_bno);
      int result = boardService.delete(qna_bno);
      return "redirect:/qnaboard/qna";
   }
   @RequestMapping(value = "/reply", method = RequestMethod.GET)
   public  void reply() {
      
   }

}