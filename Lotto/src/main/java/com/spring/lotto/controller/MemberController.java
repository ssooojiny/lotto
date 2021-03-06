package com.spring.lotto.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.lotto.domain.MemberVO;
import com.spring.lotto.service.MemberService;

@Controller
@RequestMapping(value = "/member")
public class MemberController {

   private static final Logger logger = LoggerFactory.getLogger(MemberController.class);

   @Autowired
   private MemberService MemberService;

   @RequestMapping(value = "/signup", method = RequestMethod.GET)
   public void signupGET() {
      logger.info("signupGET() 호출");
   }

   @RequestMapping(value = "/signup", method = RequestMethod.POST)
   public String signupPOST(MemberVO vo) {
      logger.info("signupPOST() 호출");
      MemberService.create(vo);
      return "redirect:/member/login";
   }

   @RequestMapping(value = "/login-post", method = RequestMethod.POST)
   public void loginPOST(MemberVO vo, Model model) {
      logger.info("id : " + vo.getMember_id() + ", pw : " + vo.getMember_pw());
      MemberVO result = MemberService.loginCheck(vo);
      model.addAttribute("login_result", result);

   }

   @RequestMapping(value = "/logout", method = RequestMethod.GET)
   public String logout(HttpServletRequest req) {
      logger.info("logout 호출");
      HttpSession session = req.getSession();
      session.removeAttribute("login_id");
      session.invalidate();

      return "redirect:/mainpage";
   }

   @RequestMapping(value = "/login", method = RequestMethod.GET)
   public void loginGET(String url, Model model) {
      logger.info("loginGET 호출");
      logger.info("url : " + url);
      model.addAttribute("targetUrl", url);
   }

   @RequestMapping(value = "/list")
   public void List(Model model) {
      logger.info("list() 호출");
      List<MemberVO> list = MemberService.read();
      model.addAttribute("memberList", list);
   }

   @RequestMapping(value = "/mypage", method = RequestMethod.GET)
   public void mypage(String member_id, Model model) {
      logger.info("my page() 호출");
      MemberVO vo = MemberService.read(member_id);
      model.addAttribute("memberVO", vo);

   }

   @ResponseBody
   @RequestMapping(value = "/idCheck", method = RequestMethod.GET)
   public int idCheckPOST(HttpServletRequest req, String member_id) throws Exception {
      logger.info("controller- idcheckpost 나와라잇");
      MemberVO idCheck_vo = MemberService.read(member_id);
      int result = 0;
      if (idCheck_vo != null) {
         result = 1;
      }
      return result;
   }
   
   @RequestMapping(value = "/delete1", method = RequestMethod.POST)
   public String delete(String member_id, HttpServletRequest req) {
      logger.info("delete() 호출!!---------");
      MemberService.delete(member_id);
      HttpSession session = req.getSession();
      session.removeAttribute("login_id");
      session.invalidate();

      return "redirect:/mainpage";
   }

   @RequestMapping(value = "/update", method = RequestMethod.POST)
   public String update(MemberVO vo, HttpServletRequest req) {
      logger.info("update() 호출");
      HttpSession session = req.getSession();
      String member_id = (String) session.getAttribute("login_id");
      MemberService.update(vo);
      return "redirect:/member/mypage?member_id=" + member_id;
   }
}
