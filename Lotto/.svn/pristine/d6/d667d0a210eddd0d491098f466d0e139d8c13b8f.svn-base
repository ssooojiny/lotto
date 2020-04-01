package com.spring.lotto.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.spring.lotto.domain.MinTestVO;
import com.spring.lotto.service.MinTestService;

@RestController
@RequestMapping(value = "/main1")
public class ChoiceRESTController {
   
   private static final Logger logger = LoggerFactory.getLogger(MainController.class);
   
   @Autowired
   private MinTestService testService;   
      
   @RequestMapping(method = RequestMethod.POST)
   public ResponseEntity<List<MinTestVO>> readReplies(@PathVariable("hit_select_number_choice")int hit_select_number_choice)
   {
      List<MinTestVO> list = testService.choice(hit_select_number_choice);
      ResponseEntity<List<MinTestVO>> entity = new ResponseEntity<List<MinTestVO>> (list, HttpStatus.OK);
      return entity;
   }
   
   
   @RequestMapping(value = "/analysis1", method = RequestMethod.GET)
   public ResponseEntity<List<MinTestVO>> readRelies(@PathVariable("hit_select_number_choice")int hit_select_number_choice)
   {
      logger.info("REST : analysis() 호출");
      List<MinTestVO> list = testService.choice(hit_select_number_choice);
      ResponseEntity<List<MinTestVO>> entity = new ResponseEntity<List<MinTestVO>> (list, HttpStatus.OK);
      return entity;
   }
   

}