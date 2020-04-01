package com.spring.lotto.controller;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.spring.lotto.domain.MinTestVO;
import com.spring.lotto.domain.TestVO;
import com.spring.lotto.domain.WinVO;
import com.spring.lotto.pageutil.PageCriteriaList;
import com.spring.lotto.pageutil.PageMakerList;
import com.spring.lotto.service.MinTestService;
import com.spring.lotto.service.TestService;

@Controller
@RequestMapping(value = "/main")
public class MainController {

   private static final Logger logger = LoggerFactory.getLogger(MainController.class);
   int hit_select_number_choice = 0; // 수홍`

   @Autowired
   private TestService testService;
   
   @Autowired
   private MinTestService MinTestService;

   @RequestMapping(value = "/selectlist", method = RequestMethod.GET)
   public void selectlistqq(Model model, Integer page, Integer perPage) {
      logger.info("selectlist() 호출");
//      List<TestVO> list = testService.read();
//      model.addAttribute("testList", list);
      
      // Paging 처리
      PageCriteriaList c = new PageCriteriaList();
      if (page != null) {
         c.setPage(page);
      }
      if (perPage != null) {
         c.setNumsPerPage(perPage);
      }
      List<TestVO> list = testService.read(c);
      model.addAttribute("testList", list);
      
      PageMakerList maker = new PageMakerList();
      maker.setCriteria(c);
      maker.setTotalCount(testService.getTotalNumsOfRecords());
      maker.setPageData();
      model.addAttribute("pageMaker", maker);

   }

   // 1등 예상 리스트
   @RequestMapping(value = "/expectation", method = RequestMethod.GET)
   public void expectation(Model model) {
      logger.info("expectation() 호출");
      List<WinVO> list = testService.read_win();
      model.addAttribute("win_list", list);
   }

   // 낙첨 예상 리스트
   @RequestMapping(value = "/expectationlose", method = RequestMethod.GET)
   public void expectationLose(Model model) {
      logger.info("expectation() 호출");
      List<WinVO> list = testService.read_lose();
      model.addAttribute("lose_list", list);
   }

   // 1등 예상 번호 투표
   @ResponseBody
   @RequestMapping(value = "/selectednum", method = RequestMethod.GET)
   public void selectedNumJ(HttpServletRequest req, Model model) {
      logger.info("controller - selectedNum 불러라~!~!");

      String[] selected_data = req.getParameterValues("selected_num");

      for (int i = 0; i < selected_data.length; i++) {

         logger.info("selected_data[i] = " + selected_data[i]);

         int lotto_number = Integer.parseInt(selected_data[i]);

         logger.info("lotto_number[" + i + "] : " + lotto_number);

         testService.update_win(lotto_number);

      }

   }

   // 낙첨예상 번호 투표
   @ResponseBody
   @RequestMapping(value = "/selectedlosenum", method = RequestMethod.GET)
   public void selectedloseNum(HttpServletRequest req, Model model) {
      logger.info("controller - selectedloseNum 불러라~!~!");

      String[] selected_data = req.getParameterValues("selected_lose_num");

      for (int i = 0; i < selected_data.length; i++) {

         logger.info("selected_data[i] = " + selected_data[i]);

         int lotto_number_l = Integer.parseInt(selected_data[i]);

         logger.info("lotto_number[" + i + "] : " + lotto_number_l);

         testService.update_lose(lotto_number_l);
      }
   }

   @RequestMapping(value = "/personal", method = RequestMethod.GET)
   public void persoanl() {

   }

   @RequestMapping(value = "/term", method = RequestMethod.GET)
   public void term() {

   }

   @RequestMapping(value = "/policy", method = RequestMethod.GET)
   public void policy() {

   }

   @RequestMapping(value = "/policy-pers", method = RequestMethod.GET)
   public void policyPers() {

   }

   @RequestMapping(value = "/rightlotto", method = RequestMethod.GET)
   public void rightlotto() {

   }

   @RequestMapping(value = "/overdose", method = RequestMethod.GET)
   public void overdose() {

   }

   // ================================수홍오빠================================================================================

   @RequestMapping(value = "/analysis", method = RequestMethod.GET)
   public void analysis(Model model) {
      // @ResponseBody analysis.jsp 에서 받은 ajax 값 hit_select_number_choice 받어야함
      logger.info("응답하라 오바 analysis() 호출");
      // testService.choice(3); 여기 숫자을 hit_select_number_choice으로 변경해야함
      // TestServiceImple의 testService.choice() 실행
      // -> TestServiceImple로 이동

      
      logger.info("hit_select_number_choice의 값은 : " + hit_select_number_choice);

      List<MinTestVO> list = MinTestService.choice(hit_select_number_choice);
      logger.info("list의 값은 : " + list);
      //model.addAttribute("testList", list);
   }

   // Analysis.jsp에서 보낸 ajax 내용을 처리하는 부분
   @RequestMapping(value = "/analysis1", method = RequestMethod.GET)
   public ModelAndView testjoin(Model model, @RequestParam int hit_select_number_choice) {
      logger.info("analysis1 호출 " + hit_select_number_choice);
      // TestService의 choice_select 실행 choice_select 실행 내용은 mappers 폴더 밑에
      // test-mappers.xml에 있음
      List<MinTestVO> list = MinTestService.choice(hit_select_number_choice);
      List<Integer> numlist = MinTestService.number_choice(hit_select_number_choice);

      int test_array[] = { 1, 2, 3 };

      for (int i = 0; i < 3; i++) {
         System.out.println(test_array[i]);
      }

      for (int i = 0; i < numlist.size(); i++) {
         System.out.println("numlist : " + numlist.get(i));
      }

      int onlyNumber[] = new int[30];

      for (int i = 0; i < list.size(); i++) {
         onlyNumber[i] = list.get(i).getHit_number();
         System.out.println("onlyNumber : " + onlyNumber[i]);
      }

      // testService.choice(hit_select_number_choice); 처리된 값을 testList2에 list 형태로 담어라
      for (int i = 0; i < list.size(); i++) {
         System.out.println("날라토스" + i + " " + list.get(i).getHit_number() + " list 사이즈 :  " + list.size());
         System.out.println("날라토스" + i + " " + list.get(i).getCnt() + " list 사이즈 :  " + list.size());
      }
      for (int i = 1; i < list.size(); i++) {
         System.out.println("날라토스" + i + " " + list.get(i).getHit_number() + " 반복 횟수 :  " + list.get(i).getCnt());
      }

      // testList2 : number와 cnt가 함께 있음
      model.addAttribute("testList2", list);
      // numlist : number만 들어 있음
      model.addAttribute("numlist", numlist);
      // onlyNumber : numlist배열을 String 배열로 옮겨넣었음
      model.addAttribute("onlyNumber", onlyNumber);
      // modelAndView Test
      ModelAndView mav = new ModelAndView();
      mav.addObject("testnumlist", numlist);

      return mav;

   }
   
   
   // Analysis.jsp에서 보낸 ajax 내용을 처리하는 부분
   @RequestMapping(value = "/analysis2", method = RequestMethod.GET)
   public void testjoin1(Model model, @RequestParam int low_hit_select_number_choice) {
      logger.info("analysis2 호출 " + low_hit_select_number_choice);
      // TestService의 choice_select 실행 choice_select 실행 내용은 mappers 폴더 밑에
      // test-mappers.xml에 있음
      List<MinTestVO> list = MinTestService.low_choice(low_hit_select_number_choice);
      // testService.choice(hit_select_number_choice); 처리된 값을 testList2에 list 형태로 담어라

      model.addAttribute("testList3", list);
   }


   @RequestMapping(value = "/analysis3", method = RequestMethod.GET)
   public void selectedNum(HttpServletRequest req, Model model) {
      logger.info("analysis3 호출");

      String[] selected_num = req.getParameterValues("selected_num");
      String[] bestLottoNumber = req.getParameterValues("bestLottoNumber");
      // lottoLastNumber : 최종적으로 리턴 해주는 로또 번호
      String lottoLastNumber[][] = new String[5][6];
      String basiclottoLastNumber[][] = new String[5][6];
      String[] jstltestarr = {"순두부", "김치찌게"};
      String[][] jstllottoarr = {{"1", "2","3","4","5","6"},{"2", "3","4","5","6","7"}};
      
      model.addAttribute("jstltestarr", jstltestarr);
      model.addAttribute("jstllottoarr", jstllottoarr);

      // 가장 많이 나온 번호 중에서 전 주차에 번호가 있는 로또 번호
      int bestOfBestLottoNumber[];

      // 가장 많이 나온 번호 중에서 전 주차에 번호가 없는 로또 번호
      String secondBestLottoNumber[] = new String[30];

      // bestLottoCount을 통해서 베스트 번호 중에서 전주차에 번호가 몇개 나왔는지 확인하는 용도
      int bestLottoCount = 0;

      int q = 0;

      boolean close = true;

      int sw = 0;

      String checkArray[] = { "0" };

      for (int i = 0; i < bestLottoNumber.length; i++) {
         logger.info("bestLottoNumber 의 " + i + "데이터는 : " + bestLottoNumber[i]);
      }

      logger.info("여기까지 실행됨");

      switch (selected_num.length) {
      case 1:
         logger.info("선택된 switch 문은 1번 입니다");

         // lottoLastNumber에 selected_num5개 넣는 반복문
         // 5행 6열 중 5개를 초이스 받았기 때문에 5행 5열에 대해서 초이스 번호 받는 초기화 처리
         for (int i = 0; i < 5; i++) {
            logger.info("lottoLastNumber 반복중 =================================== : " + i);
            // 여기 하나씩 줄여줘야한다
            for (int j = 0; j < 1; j++) {
               // 여기에 베스트 번호를 넣어서 최종 번호 6개를 출력 해주면 된다
               lottoLastNumber[i][j] = selected_num[j];
               logger.info(
                     "lottoLastNumber 의 들어간 값의 i행 : " + i + " j열 : " + j + "의 값은 : " + lottoLastNumber[i][j]);
            }
         }

         // 전 주차와 비교해서 가장 많이 나왔던 번호가 있을 경우 출력
         for (int i = 0; i < 30; i++) {
            // 베스트 번호 중에서 전 주차 로또 번호가 나왔는지 체크하기 위해
            // arr_test_number 배열에 베스트 번호 담기
            String arr_test_number = bestLottoNumber[i];
            String[] test_number = new String[30];
            test_number[i] = arr_test_number;
            String chekc_test = MinTestService.chekc_test(test_number[i]);
            logger.info("chekc_test의 값은 : " + i + "번째 : " + chekc_test);

            // 베스트 로또 번호 넣는 조건
            // 여기 하나씩 줄여줘야한다
            if (chekc_test.equals("Y") && bestLottoCount < 5) {
               // lottoLastNumber에 selected_num5개 넣고 chekc_test.equals 걸러진 숫자 함께 넣기

               // logger.info("반복문 내의 bestLottoCount 값은 : " + bestLottoCount + " 입니다.");

               // 최종 번호 4번째 자리에 베스트 번호만 중복 체크를 한 후에 넣기/
               for (int a = 0; a < 1; a++) {
                  // 최종 로또번호 lottoLastNumber 앞에 4자리와 베스트 번호를 중복체크
                  logger.info("A의 현재 값 입니다 : " + a);
                  if (!lottoLastNumber[bestLottoCount][a].equals(test_number[i])) {
                     logger.info(
                           "lottoLastNumber[bestLottoCount][a] 번호와 test_number[i] 번호, sw번호 , bestLottoCount번호, a넘버 : "
                                 + lottoLastNumber[bestLottoCount][a] + " " + test_number[i] + " " + sw + " "
                                 + bestLottoCount + " " + a);
                     sw++;
                     // 배열의 자리가 다를때마다 sw 1씩 증가시키고 4자리가 모두 다르면 다른 조건문 시작
                     if (sw == 1) {
                        // 최종번호 4번째에 베스트 번호를 넣어주고 넣은 번호는 0으로 처리한다
                        lottoLastNumber[bestLottoCount][1] = test_number[i];
                        secondBestLottoNumber[i] = "0";
                        logger.info("if문 안에 실행 lottoLastNumber[" + bestLottoCount + "][2] 의 값은 : "
                              + lottoLastNumber[bestLottoCount][1]);
                        bestLottoCount++;
                        logger.info("반복문 내의 bestLottoCount 값은 : " + bestLottoCount + " 입니다.");
                        sw = 0;
                     } // end if

                  } else {
                     secondBestLottoNumber[i] = "0";
                     sw = 0;
                     a = 1;

                  }
               }
            } else {
               secondBestLottoNumber[i] = test_number[i];
            }
         }

         // 여기까지는 2번째 넣는 곳에 null 나올 수 있다
         for (int i = 0; i < 5; i++) {
            logger.info("테스트 체체 =================================== : " + i);
            for (int j = 0; j < 6; j++) {
               logger.info(
                     "lottoLastNumber 의 들어간 값의 i행 : " + i + " j열 : " + j + "의 값은 : " + lottoLastNumber[i][j]);
            }
         }

         // 전주차에 당첨된 번호는 0로 되어 있으며, 나머지 번호들은 랜덤으로 섞어주기
         Collections.shuffle(Arrays.asList(secondBestLottoNumber));

         for (int i = 0; i < secondBestLottoNumber.length; i++) {
            logger.info("랜덤으로 섞긴 최종 직전 secondBestLottoNumber : " + secondBestLottoNumber[i]);
         }

         // 2번째 배열 가득 채우기
         // 무한 반복을 통해서 빈곳의 2번째 배열 채우기
         logger.info("bestLottoCount의 값 입니다 " + bestLottoCount);
         while (true) {
            if (bestLottoCount == 5) {
               break;
            }

            else if (bestLottoCount < 5 && !secondBestLottoNumber[q].equals("0")) {

               lottoLastNumber[bestLottoCount][1] = secondBestLottoNumber[q];
               logger.info("bestLottoCount : " + bestLottoCount);
               bestLottoCount++;
               q++;
               if (bestLottoCount == 5) {
                  logger.info("무한반복 테스트중");
                  q = 0;
                  break;
               }

            } else {
               logger.info("else가 작동했다 ");
               q++;
            }

         } // end while

         for (int i = 0; i < 5; i++) {
            logger.info("2번째 배열 체크 테스트 =================================== : " + i);
            for (int j = 0; j < 6; j++) {
               logger.info(
                     "lottoLastNumber 의 들어간 값의 i행 : " + i + " j열 : " + j + "의 값은 : " + lottoLastNumber[i][j]);
            }
         }

         // 3번째 배열 가득 채우기
         logger.info("3번째 무한반복 시작");
         while (close) {
            int test5 = 0;
            int sw3 = 0;
            int z = 0;
            // checkArray[0] 배열에 0이 들어있는 체크 배열
            logger.info("여기까지");
            // 이 미친 if문에 딱 한번만 실행함
            if (!secondBestLottoNumber[q].equals(checkArray[z])) {
               for (int a = 0; a < 5; a++) {
                  logger.info("a의 현재 값 : " + a + " sw3의 값 : " + sw3 + " secondBestLottoNumber[q] 값 : "
                        + secondBestLottoNumber[q] + " q의 현재값 : " + q);
                  // 수정 할때 b < 4 하나씩 줄여야함
                  for (int b = 0; b < 2; b++) {
                     logger.info("b의 현재 값 : " + b + " sw3의 값 : " + sw3 + " secondBestLottoNumber[q] 값 : "
                           + secondBestLottoNumber[q] + " q의 값  : " + q + " lottoLastNumber[a][b] 의 값 : "
                           + lottoLastNumber[a][b] + "test5의 값 : " + test5);
                     // !lottoLastNumber[a][b].equals(secondBestLottoNumber[q]) : lottoLastNumber
                     // 최종번호에 secondBestLottoNumber 없어야하며,
                     // !secondBestLottoNumber[q].equals(checkArray[z]) : secondBestLottoNumber 넣어야
                     // 하는 번호가 0이 아닌 경우에만 통과
                     if (!lottoLastNumber[a][b].equals(secondBestLottoNumber[q])
                           && !secondBestLottoNumber[q].equals(checkArray[z])) {
                        sw3++;
                        logger.info("현재의 값 a와 sw3 : " + a + " " + sw3);

                        // checkArray[0] 배열에 0이 들어있는 체크 배열
                        // sw5도 하나씩 줄여줘야 한다
                        if (sw3 == 2) {
                           logger.info("값 넣기 반복문 들어옴 " + a);
                           lottoLastNumber[a][2] = secondBestLottoNumber[q];
                           logger.info("lottoLastNumber[a][2] 현재값 : " + a + "와 " + lottoLastNumber[a][2]);
                           sw3 = 0;
                           test5++;
                           q++;
                           if (test5 == 2) {
                              close = false;
                           }
                        }
                     } else {
                        // if 문에서 0값이 들어온 경우 a를 그대로 유지해야 하기 때문에 a--를 하고 q만 증가 시켜서 계속 실행
                        logger.info("5번 else가 실행됐다");
                        q++;
                        if (a == 0) {
                           logger.info("첫번째에 0이 등장했다");
                        } else {
                           a--;
                        }
                     }
                  }
               }
            } else {
               logger.info("5번 else가 작동했다 ");
               // close = false;
               q++;
            }

         }

         // 숫자 한번 넣어주면 마지막에close = true; 해줘야 한다
         close = true;

         // 4번째 배열 가득 채우기
         logger.info("4번째 무한반복 시작");
         while (close) {
            int test3 = 0;
            int sw4 = 0;
            int z = 0;
            // checkArray[0] 배열에 0이 들어있는 체크 배열
            logger.info("여기까지");
            // 이 미친 if문에 딱 한번만 실행함
            if (!secondBestLottoNumber[q].equals(checkArray[z])) {
               for (int a = 0; a < 5; a++) {
                  logger.info("a의 현재 값 : " + a + " sw4의 값 : " + sw4 + " secondBestLottoNumber[q] 값 : "
                        + secondBestLottoNumber[q] + " q의 현재값 : " + q);
                  // 수정 할때 b < 4 하나씩 줄여야함
                  for (int b = 0; b < 3; b++) {
                     logger.info("b의 현재 값 : " + b + " sw4의 값 : " + sw4 + " secondBestLottoNumber[q] 값 : "
                           + secondBestLottoNumber[q] + " q의 값  : " + q + " lottoLastNumber[a][b] 의 값 : "
                           + lottoLastNumber[a][b] + "test3의 값 : " + test3);
                     // !lottoLastNumber[a][b].equals(secondBestLottoNumber[q]) : lottoLastNumber
                     // 최종번호에 secondBestLottoNumber 없어야하며,
                     // !secondBestLottoNumber[q].equals(checkArray[z]) : secondBestLottoNumber 넣어야
                     // 하는 번호가 0이 아닌 경우에만 통과
                     if (!lottoLastNumber[a][b].equals(secondBestLottoNumber[q])
                           && !secondBestLottoNumber[q].equals(checkArray[z])) {
                        sw4++;
                        logger.info("현재의 값 a와 sw4 : " + a + " " + sw4);

                        // checkArray[0] 배열에 0이 들어있는 체크 배열
                        // sw5도 하나씩 줄여줘야 한다
                        if (sw4 == 3) {
                           logger.info("값 넣기 반복문 들어옴 " + a);
                           lottoLastNumber[a][3] = secondBestLottoNumber[q];
                           logger.info("lottoLastNumber[a][3] 현재값 : " + a + "와 " + lottoLastNumber[a][3]);
                           sw4 = 0;
                           test3++;
                           q++;
                           if (test3 == 3) {
                              close = false;
                           }
                        }
                     } else {
                        // if 문에서 0값이 들어온 경우 a를 그대로 유지해야 하기 때문에 a--를 하고 q만 증가 시켜서 계속 실행
                        logger.info("5번 else가 실행됐다");
                        q++;
                        // 여기 수정함
                        b = 0;
                        sw4 = 0;
                        // a가 0번일때 들어오지 말아야할 숫자가 들어오면
                        if (a == 0) {
                           logger.info("A가 0일때 들어오지 말어야 금지 숫자가 출현했다");
                           b = 0;
                        } else {
                           a--;
                        }
                     }
                  }
               }
            } else {
               logger.info("5번 else가 작동했다 ");
               // close = false;
               q++;
            }

         }

         // 숫자 한번 넣어주면 마지막에close = true; 해줘야 한다
         close = true;

         for (int i = 0; i < 5; i++) {
            logger.info("4번째 배열 체크 테스트 =================================== : " + i);
            for (int j = 0; j < 6; j++) {
               logger.info(
                     "lottoLastNumber 의 들어간 값의 i행 : " + i + " j열 : " + j + "의 값은 : " + lottoLastNumber[i][j]);
            }
         }

         // 5번째 배열 가득 채우기
         // 무한 반복을 통해서 빈곳의 5번째 배열 채우기
         logger.info("5번째 무한반복 시작");
         while (close) {
            int test2 = 0;
            int sw5 = 0;
            int z = 0;
            // checkArray[0] 배열에 0이 들어있는 체크 배열
            logger.info("수정 하는 중 여기까지");
            // 이 미친 if문에 딱 한번만 실행함
            if (!secondBestLottoNumber[q].equals(checkArray[z])) {
               for (int a = 0; a < 5; a++) {

                  logger.info("a의 현재 값 : " + a + " sw5의 값 : " + sw5 + " secondBestLottoNumber[q] 값 : "
                        + secondBestLottoNumber[q] + " q의 현재값 : " + q);
                  // 수정 할때 b < 4 하나씩 줄여야함
                  for (int b = 0; b < 4; b++) {
                     logger.info("첫번째 b의 현재 값 : " + b + " a의 현재 값 : " + a + " sw5의 값 : " + sw5
                           + " secondBestLottoNumber[q] 값 : " + secondBestLottoNumber[q] + " q의 값  : " + q
                           + " lottoLastNumber[a][b] 의 값 : " + lottoLastNumber[a][b] + "test2의 값 : " + test2);
                     // !lottoLastNumber[a][b].equals(secondBestLottoNumber[q]) : lottoLastNumber
                     // 최종번호에 secondBestLottoNumber 없어야하며,
                     // !secondBestLottoNumber[q].equals(checkArray[z]) : secondBestLottoNumber 넣어야
                     // 하는 번호가 0이 아닌 경우에만 통과
                     if (!lottoLastNumber[a][b].equals(secondBestLottoNumber[q])
                           && !secondBestLottoNumber[q].equals(checkArray[z])) {
                        sw5++;
                        logger.info("현재의 값 a와 sw5 : " + a + " " + sw5);

                        // checkArray[0] 배열에 0이 들어있는 체크 배열
                        // sw5도 하나씩 줄여줘야 한다
                        if (sw5 == 4) {
                           logger.info("값 넣기 반복문 들어옴 " + a);
                           lottoLastNumber[a][4] = secondBestLottoNumber[q];
                           logger.info("lottoLastNumber[a][5] 현재값 : " + a + "와 " + lottoLastNumber[a][4]);
                           sw5 = 0;
                           test2++;
                           q++;
                           if (test2 == 4) {
                              close = false;
                           }
                        }
                     } else {
                        // if 문에서 0값이 들어온 경우 a를 그대로 유지해야 하기 때문에 a--를 하고 q만 증가 시켜서 계속 실행
                        logger.info("5번 else가 실행됐다");
                        logger.info("==================================================");
                        logger.info("==================================================");
                        logger.info("==================================================");
                        logger.info("==================================================");
                        logger.info("==================================================");
                        logger.info("==================================================");
                        logger.info("==================================================");
                        logger.info("==================================================");
                        logger.info("==================================================");
                        logger.info("==================================================");
                        
                        q++;
                        // 여기 수정함
                        b = 0;
                        sw5 = 0;
                        if (a == 0) {
                           logger.info("첫번째에 0이 등장했다");
                           b=0;
                           sw5 = 0;
                           for (b = 0; b < 4; b++) {
                              logger.info("if 쪽 실행");
                              logger.info("if 0이라는 부분이 실행됨 b의 현재 값 : " + b + " a의 현재 값 : " + a + " sw5의 값 : " + sw5
                                    + " secondBestLottoNumber[q] 값 : " + secondBestLottoNumber[q] + " q의 값  : " + q
                                    + " lottoLastNumber[a][b] 의 값 : " + lottoLastNumber[a][b] + "test2의 값 : " + test2);
                              
                              if (!lottoLastNumber[a][b].equals(secondBestLottoNumber[q])
                                    && !secondBestLottoNumber[q].equals(checkArray[z])) {
                                 sw5++;
                                 logger.info("현재의 값 a와 sw5 : " + a + " " + sw5);
                                 if (sw5 == 4) {
                                    logger.info("값 넣기 반복문 들어옴 " + a);
                                    lottoLastNumber[a][4] = secondBestLottoNumber[q];
                                    logger.info("lottoLastNumber[a][5] 현재값 : " + a + "와 " + lottoLastNumber[a][4]);
                                    sw5 = 0;
                                    test2++;
                                    q++;
                                    if (test2 == 4) {
                                       close = false;
                                    }
                                 }
                                 
                              }
                           }         
                           
                           
                           
                           
                        } else {
                        //이부분 수정   //a--;
                        
                        if(b != 0) {
                           b=0;
                           for (b = 0; b < 4; b++) {
                              logger.info("else 쪽 실행");
                              logger.info("2중 if 문의 if 쪽 실행");
                              logger.info("else 부분의 b의 현재 값 : " + b + " a의 현재 값 : " + a + " sw5의 값 : " + sw5
                                    + " secondBestLottoNumber[q] 값 : " + secondBestLottoNumber[q] + " q의 값  : " + q
                                    + " lottoLastNumber[a][b] 의 값 : " + lottoLastNumber[a][b] + "test2의 값 : " + test2);
                              
                              if (!lottoLastNumber[a][b].equals(secondBestLottoNumber[q])
                                    && !secondBestLottoNumber[q].equals(checkArray[z])) {
                                 sw5++;
                                 logger.info("현재의 값 a와 sw5 : " + a + " " + sw5);
                                 if (sw5 == 4) {
                                    logger.info("값 넣기 반복문 들어옴 " + a);
                                    lottoLastNumber[a][4] = secondBestLottoNumber[q];
                                    logger.info("lottoLastNumber[a][5] 현재값 : " + a + "와 " + lottoLastNumber[a][4]);
                                    sw5 = 0;
                                    test2++;
                                    q++;
                                    if (test2 == 4) {
                                       close = false;
                                    }
                                 }
                                 
                              } else {
                                 logger.info("이중 else 들어오는거나 ?");
                                 b=0;
                                 sw5 =0;
                                 q++;
                              }
                           }
                        } else {
                           b=0;
                           logger.info("b의 값이 몇인데 ? : " + b);
                           for (b = 0; b < 4; b++) {
                              logger.info("else 쪽 실행");
                              logger.info("2중 if 문의 else 쪽 실행");
                              logger.info("else 부분의 b의 현재 값 : " + b + " a의 현재 값 : " + a + " sw5의 값 : " + sw5
                                    + " secondBestLottoNumber[q] 값 : " + secondBestLottoNumber[q] + " q의 값  : " + q
                                    + " lottoLastNumber[a][b] 의 값 : " + lottoLastNumber[a][b] + "test2의 값 : " + test2);
                              
                              if (!lottoLastNumber[a][b].equals(secondBestLottoNumber[q])
                                    && !secondBestLottoNumber[q].equals(checkArray[z])) {
                                 sw5++;
                                 logger.info("현재의 값 a와 sw5 : " + a + " " + sw5);
                                 if (sw5 == 4) {
                                    logger.info("값 넣기 반복문 들어옴 " + a);
                                    lottoLastNumber[a][4] = secondBestLottoNumber[q];
                                    logger.info("lottoLastNumber[a][5] 현재값 : " + a + "와 " + lottoLastNumber[a][4]);
                                    sw5 = 0;
                                    test2++;
                                    q++;
                                    if (test2 == 4) {
                                       close = false;
                                    }
                                 }
                                 
                              } else {
                                 logger.info("이중 else 들어오는거나 ?");
                                 b=0;
                                 sw5 =0;
                                 q++;
                              }
                           }         
                        }
                        
                        
                           
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        }
                     }
                  }
               }
            } else {
               logger.info("5번 else가 작동했다 ");
               // close = false;
               q++;
            }

         }

         for (int i = 0; i < 5; i++) {
            logger.info("5번째 배열 체크 테스트 =================================== : " + i);
            for (int j = 0; j < 6; j++) {
               logger.info(
                     "lottoLastNumber 의 들어간 값의 i행 : " + i + " j열 : " + j + "의 값은 : " + lottoLastNumber[i][j]);
            }
         }

         close = true;

         // 6번째 배열 가득 채우기
         // 무한 반복을 통해서 빈곳의 6번째 배열 채우기
         logger.info("6번째 배열 무한반복 시작");
         while (close) {
            int test1 = 0;
            int sw6 = 0;
            int z = 0;
            // checkArray[0] 배열에 0이 들어있는 체크 배열
            logger.info("여기까지");
            // 이 미친 if문에 딱 한번만 실행함
            if (!secondBestLottoNumber[q].equals(checkArray[z])) {
               for (int a = 0; a < 5; a++) {
                  logger.info("a의 현재 값 : " + a + " sw6의 값 : " + sw6 + " secondBestLottoNumber[q] 값 : "
                        + secondBestLottoNumber[q] + " q의 현재값 : " + q);
                  for (int b = 0; b < 5; b++) {
                     logger.info("b의 현재 값 : " + b + " sw6의 값 : " + sw6 + " secondBestLottoNumber[q] 값 : "
                           + secondBestLottoNumber[q] + " q의 값  : " + q + " lottoLastNumber[a][b] 의 값 : "
                           + lottoLastNumber[a][b] + "test1의 값 : " + test1);
                     // !lottoLastNumber[a][b].equals(secondBestLottoNumber[q]) : lottoLastNumber
                     // 최종번호에 secondBestLottoNumber 없어야하며,
                     // !secondBestLottoNumber[q].equals(checkArray[z]) : secondBestLottoNumber 넣어야
                     // 하는 번호가 0이 아닌 경우에만 통과

                     if (q == 29) {
                        q = 0;
                     }
                     if (!lottoLastNumber[a][b].equals(secondBestLottoNumber[q])
                           && !secondBestLottoNumber[q].equals(checkArray[z])) {
                        sw6++;
                        logger.info("현재의 값 a와 sw6 : " + a + " " + sw6);

                        // checkArray[0] 배열에 0이 들어있는 체크 배열
                        if (sw6 == 5) {
                           logger.info("값 넣기 반복문 들어옴 " + a);
                           lottoLastNumber[a][5] = secondBestLottoNumber[q];
                           logger.info("lottoLastNumber[a][5] 현재값 : " + lottoLastNumber[a][5]);
                           sw6 = 0;
                           test1++;
                           q++;
                           if (test1 == 5) {
                              close = false;
                           }
                        }
                     } else {
                        // if 문에서 0값이 들어온 경우 a를 그대로 유지해야 하기 때문에 a--를 하고 q만 증가 시켜서 계속 실행
                        logger.info("else가 실행됐다");
                        q++;
                        if (a == 0) {
                           logger.info("첫번째에 0이 등장했다");
                        } else {
                           a--;
                        }
                     }
                  }
               }
            } else {
               logger.info("else가 작동했다 ");
               // close = false;
               q++;
            }

         }

         for (int i = 0; i < bestLottoCount; i++) {
            logger.info("넘기기 직전 최종 체크 반복중 =================================== : " + i);
            for (int j = 0; j < 6; j++) {
               logger.info(
                     "lottoLastNumber 의 들어간 값의 i행 : " + i + " j열 : " + j + "의 값은 : " + lottoLastNumber[i][j]);
            }
         }

         // 초이스 번호와 베스트 넘버를 합해서 만들어진 최종 로또 번호 lottoLastNumber
         // 5게임으로 만들어진 2차원 배열
         model.addAttribute("basiclottoLastNumber", lottoLastNumber);
         logger.info("1번 케이스문 종료");
         break;
      case 2:
         logger.info("선택된 switch 문은 2번 입니다");

         // lottoLastNumber에 selected_num5개 넣는 반복문
         // 5행 6열 중 5개를 초이스 받았기 때문에 5행 5열에 대해서 초이스 번호 받는 초기화 처리
         for (int i = 0; i < 5; i++) {
            logger.info("lottoLastNumber 반복중 =================================== : " + i);
            // 여기 하나씩 줄여줘야한다
            for (int j = 0; j < 2; j++) {
               // 여기에 베스트 번호를 넣어서 최종 번호 6개를 출력 해주면 된다
               lottoLastNumber[i][j] = selected_num[j];
               logger.info(
                     "lottoLastNumber 의 들어간 값의 i행 : " + i + " j열 : " + j + "의 값은 : " + lottoLastNumber[i][j]);
            }
         }

         // 전 주차와 비교해서 가장 많이 나왔던 번호가 있을 경우 출력
         for (int i = 0; i < 30; i++) {
            // 베스트 번호 중에서 전 주차 로또 번호가 나왔는지 체크하기 위해
            // arr_test_number 배열에 베스트 번호 담기
            String arr_test_number = bestLottoNumber[i];
            String[] test_number = new String[30];
            test_number[i] = arr_test_number;
            String chekc_test = MinTestService.chekc_test(test_number[i]);
            logger.info("chekc_test의 값은 : " + i + "번째 : " + chekc_test);

            // 베스트 로또 번호 넣는 조건
            // 여기 하나씩 줄여줘야한다
            if (chekc_test.equals("Y") && bestLottoCount < 5) {
               // lottoLastNumber에 selected_num5개 넣고 chekc_test.equals 걸러진 숫자 함께 넣기

               // logger.info("반복문 내의 bestLottoCount 값은 : " + bestLottoCount + " 입니다.");

               // 최종 번호 4번째 자리에 베스트 번호만 중복 체크를 한 후에 넣기/
               for (int a = 0; a < 2; a++) {
                  // 최종 로또번호 lottoLastNumber 앞에 4자리와 베스트 번호를 중복체크
                  logger.info("A의 현재 값 입니다 : " + a);
                  if (!lottoLastNumber[bestLottoCount][a].equals(test_number[i])) {
                     logger.info(
                           "lottoLastNumber[bestLottoCount][a] 번호와 test_number[i] 번호, sw번호 , bestLottoCount번호, a넘버 : "
                                 + lottoLastNumber[bestLottoCount][a] + " " + test_number[i] + " " + sw + " "
                                 + bestLottoCount + " " + a);
                     sw++;
                     // 배열의 자리가 다를때마다 sw 1씩 증가시키고 4자리가 모두 다르면 다른 조건문 시작
                     if (sw == 2) {
                        // 최종번호 4번째에 베스트 번호를 넣어주고 넣은 번호는 0으로 처리한다
                        lottoLastNumber[bestLottoCount][2] = test_number[i];
                        secondBestLottoNumber[i] = "0";
                        logger.info("if문 안에 실행 lottoLastNumber[" + bestLottoCount + "][2] 의 값은 : "
                              + lottoLastNumber[bestLottoCount][2]);
                        bestLottoCount++;
                        logger.info("반복문 내의 bestLottoCount 값은 : " + bestLottoCount + " 입니다.");
                        sw = 0;
                     } // end if

                  } else {
                     secondBestLottoNumber[i] = "0";
                     sw = 0;
                     a = 2;

                  }
               }
            } else {
               secondBestLottoNumber[i] = test_number[i];
            }
         }
         // 여기까지는 3번째 넣는 곳에 null 나올 수 있다
         for (int i = 0; i < 5; i++) {
            logger.info("테스트 체체 =================================== : " + i);
            for (int j = 0; j < 6; j++) {
               logger.info(
                     "lottoLastNumber 의 들어간 값의 i행 : " + i + " j열 : " + j + "의 값은 : " + lottoLastNumber[i][j]);
            }
         }

         // 전주차에 당첨된 번호는 0로 되어 있으며, 나머지 번호들은 랜덤으로 섞어주기
         Collections.shuffle(Arrays.asList(secondBestLottoNumber));

         for (int i = 0; i < secondBestLottoNumber.length; i++) {
            logger.info("랜덤으로 섞긴 최종 직전 secondBestLottoNumber : " + secondBestLottoNumber[i]);
         }

         // 3 번째 배열 가득 채우기
         // 무한 반복을 통해서 빈곳의 3번째 배열 채우기
         logger.info("bestLottoCount의 값 입니다 " + bestLottoCount);
         while (true) {
            if (bestLottoCount == 5) {
               break;
            }

            else if (bestLottoCount < 5 && !secondBestLottoNumber[q].equals("0")) {

               lottoLastNumber[bestLottoCount][2] = secondBestLottoNumber[q];
               logger.info("bestLottoCount : " + bestLottoCount);
               bestLottoCount++;
               q++;
               if (bestLottoCount == 5) {
                  logger.info("무한반복 테스트중");
                  q = 0;
                  break;
               }

            } else {
               q++;
            }

         } // end while

         for (int i = 0; i < 5; i++) {
            logger.info("3번째 배열 체크 테스트 =================================== : " + i);
            for (int j = 0; j < 6; j++) {
               logger.info(
                     "lottoLastNumber 의 들어간 값의 i행 : " + i + " j열 : " + j + "의 값은 : " + lottoLastNumber[i][j]);
            }
         }

         // 4번째 배열 가득 채우기
         logger.info("4번째 무한반복 시작");
         while (close) {
            int test3 = 0;
            int sw4 = 0;
            int z = 0;
            // checkArray[0] 배열에 0이 들어있는 체크 배열
            logger.info("여기까지");
            // 이 미친 if문에 딱 한번만 실행함
            if (!secondBestLottoNumber[q].equals(checkArray[z])) {
               for (int a = 0; a < 5; a++) {
                  logger.info("a의 현재 값 : " + a + " sw4의 값 : " + sw4 + " secondBestLottoNumber[q] 값 : "
                        + secondBestLottoNumber[q] + " q의 현재값 : " + q);
                  // 수정 할때 b < 4 하나씩 줄여야함
                  for (int b = 0; b < 3; b++) {
                     logger.info("b의 현재 값 : " + b + " sw4의 값 : " + sw4 + " secondBestLottoNumber[q] 값 : "
                           + secondBestLottoNumber[q] + " q의 값  : " + q + " lottoLastNumber[a][b] 의 값 : "
                           + lottoLastNumber[a][b] + "test3의 값 : " + test3);
                     // !lottoLastNumber[a][b].equals(secondBestLottoNumber[q]) : lottoLastNumber
                     // 최종번호에 secondBestLottoNumber 없어야하며,
                     // !secondBestLottoNumber[q].equals(checkArray[z]) : secondBestLottoNumber 넣어야
                     // 하는 번호가 0이 아닌 경우에만 통과
                     if (!lottoLastNumber[a][b].equals(secondBestLottoNumber[q])
                           && !secondBestLottoNumber[q].equals(checkArray[z])) {
                        sw4++;
                        logger.info("현재의 값 a와 sw4 : " + a + " " + sw4);

                        // checkArray[0] 배열에 0이 들어있는 체크 배열
                        // sw5도 하나씩 줄여줘야 한다
                        if (sw4 == 3) {
                           logger.info("값 넣기 반복문 들어옴 " + a);
                           lottoLastNumber[a][3] = secondBestLottoNumber[q];
                           logger.info("lottoLastNumber[a][3] 현재값 : " + a + "와 " + lottoLastNumber[a][3]);
                           sw4 = 0;
                           test3++;
                           q++;
                           if (test3 == 3) {
                              close = false;
                           }
                        }
                     } else {
                        // if 문에서 0값이 들어온 경우 a를 그대로 유지해야 하기 때문에 a--를 하고 q만 증가 시켜서 계속 실행
                        logger.info("5번 else가 실행됐다");
                        q++;
                        if (a == 0) {
                           logger.info("첫번째에 0이 등장했다");
                        } else {
                           a--;
                        }
                     }
                  }
               }
            } else {
               logger.info("5번 else가 작동했다 ");
               // close = false;
               q++;
            }

         }

         // 숫자 한번 넣어주면 마지막에close = true; 해줘야 한다
         close = true;

         for (int i = 0; i < 5; i++) {
            logger.info("4번째 배열 체크 테스트 =================================== : " + i);
            for (int j = 0; j < 6; j++) {
               logger.info(
                     "lottoLastNumber 의 들어간 값의 i행 : " + i + " j열 : " + j + "의 값은 : " + lottoLastNumber[i][j]);
            }
         }

         // 5번째 배열 가득 채우기
         // 무한 반복을 통해서 빈곳의 5번째 배열 채우기
         logger.info("5번째 무한반복 시작");
         while (close) {
            int test2 = 0;
            int sw5 = 0;
            int z = 0;
            // checkArray[0] 배열에 0이 들어있는 체크 배열
            logger.info("여기까지");
            // 이 미친 if문에 딱 한번만 실행함
            if (!secondBestLottoNumber[q].equals(checkArray[z])) {
               for (int a = 0; a < 5; a++) {
                  logger.info("a의 현재 값 : " + a + " sw5의 값 : " + sw5 + " secondBestLottoNumber[q] 값 : "
                        + secondBestLottoNumber[q] + " q의 현재값 : " + q);
                  // 수정 할때 b < 4 하나씩 줄여야함
                  for (int b = 0; b < 4; b++) {
                     logger.info("b의 현재 값 : " + b + " sw5의 값 : " + sw5 + " secondBestLottoNumber[q] 값 : "
                           + secondBestLottoNumber[q] + " q의 값  : " + q + " lottoLastNumber[a][b] 의 값 : "
                           + lottoLastNumber[a][b] + "test2의 값 : " + test2);
                     // !lottoLastNumber[a][b].equals(secondBestLottoNumber[q]) : lottoLastNumber
                     // 최종번호에 secondBestLottoNumber 없어야하며,
                     // !secondBestLottoNumber[q].equals(checkArray[z]) : secondBestLottoNumber 넣어야
                     // 하는 번호가 0이 아닌 경우에만 통과
                     if (!lottoLastNumber[a][b].equals(secondBestLottoNumber[q])
                           && !secondBestLottoNumber[q].equals(checkArray[z])) {
                        sw5++;
                        logger.info("현재의 값 a와 sw5 : " + a + " " + sw5);

                        // checkArray[0] 배열에 0이 들어있는 체크 배열
                        // sw5도 하나씩 줄여줘야 한다
                        if (sw5 == 4) {
                           logger.info("값 넣기 반복문 들어옴 " + a);
                           lottoLastNumber[a][4] = secondBestLottoNumber[q];
                           logger.info("lottoLastNumber[a][5] 현재값 : " + a + "와 " + lottoLastNumber[a][4]);
                           sw5 = 0;
                           test2++;
                           q++;
                           if (test2 == 4) {
                              close = false;
                           }
                        }
                     } else {
                        // if 문에서 0값이 들어온 경우 a를 그대로 유지해야 하기 때문에 a--를 하고 q만 증가 시켜서 계속 실행
                        logger.info("5번 else가 실행됐다");
                        q++;
                        if (a == 0) {
                           logger.info("첫번째에 0이 등장했다");
                        } else {
                           a--;
                        }
                     }
                  }
               }
            } else {
               logger.info("5번 else가 작동했다 ");
               // close = false;
               q++;
            }

         }

         for (int i = 0; i < 5; i++) {
            logger.info("5번째 배열 체크 테스트 =================================== : " + i);
            for (int j = 0; j < 6; j++) {
               logger.info(
                     "lottoLastNumber 의 들어간 값의 i행 : " + i + " j열 : " + j + "의 값은 : " + lottoLastNumber[i][j]);
            }
         }

         close = true;

         // 6번째 배열 가득 채우기
         // 무한 반복을 통해서 빈곳의 6번째 배열 채우기
         logger.info("무한반복 시작");
         while (close) {
            int test1 = 0;
            int sw6 = 0;
            int z = 0;
            // checkArray[0] 배열에 0이 들어있는 체크 배열
            logger.info("여기까지");
            // 이 미친 if문에 딱 한번만 실행함
            if (!secondBestLottoNumber[q].equals(checkArray[z])) {
               for (int a = 0; a < 5; a++) {
                  logger.info("a의 현재 값 : " + a + " sw6의 값 : " + sw6 + " secondBestLottoNumber[q] 값 : "
                        + secondBestLottoNumber[q] + " q의 현재값 : " + q);
                  for (int b = 0; b < 5; b++) {
                     logger.info("b의 현재 값 : " + b + " sw6의 값 : " + sw6 + " secondBestLottoNumber[q] 값 : "
                           + secondBestLottoNumber[q] + " q의 값  : " + q + " lottoLastNumber[a][b] 의 값 : "
                           + lottoLastNumber[a][b] + "test1의 값 : " + test1);
                     // !lottoLastNumber[a][b].equals(secondBestLottoNumber[q]) : lottoLastNumber
                     // 최종번호에 secondBestLottoNumber 없어야하며,
                     // !secondBestLottoNumber[q].equals(checkArray[z]) : secondBestLottoNumber 넣어야
                     // 하는 번호가 0이 아닌 경우에만 통과
                     if (!lottoLastNumber[a][b].equals(secondBestLottoNumber[q])
                           && !secondBestLottoNumber[q].equals(checkArray[z])) {
                        sw6++;
                        logger.info("현재의 값 a와 sw6 : " + a + " " + sw6);

                        // checkArray[0] 배열에 0이 들어있는 체크 배열
                        if (sw6 == 5) {
                           logger.info("값 넣기 반복문 들어옴 " + a);
                           lottoLastNumber[a][5] = secondBestLottoNumber[q];
                           logger.info("lottoLastNumber[a][5] 현재값 : " + lottoLastNumber[a][5]);
                           sw6 = 0;
                           test1++;
                           q++;
                           if (test1 == 5) {
                              close = false;
                           }
                        }
                     } else {
                        // if 문에서 0값이 들어온 경우 a를 그대로 유지해야 하기 때문에 a--를 하고 q만 증가 시켜서 계속 실행
                        logger.info("else가 실행됐다");
                        q++;
                        if (a == 0) {
                           logger.info("첫번째에 0이 등장했다");
                        } else {
                           a--;
                        }
                     }
                  }
               }
            } else {
               logger.info("else가 작동했다 ");
               // close = false;
               q++;
            }

         }

         for (int i = 0; i < bestLottoCount; i++) {
            logger.info("넘기기 직전 최종 체크 반복중 =================================== : " + i);
            for (int j = 0; j < 6; j++) {
               logger.info(
                     "lottoLastNumber 의 들어간 값의 i행 : " + i + " j열 : " + j + "의 값은 : " + lottoLastNumber[i][j]);
            }
         }

         // 초이스 번호와 베스트 넘버를 합해서 만들어진 최종 로또 번호 lottoLastNumber
         // 5게임으로 만들어진 2차원 배열
         model.addAttribute("basiclottoLastNumber", lottoLastNumber);
         logger.info("2번 케이스문 종료");
         break;

      case 3:
         logger.info("선택된 switch 문은 3번 입니다");

         // lottoLastNumber에 selected_num5개 넣는 반복문
         // 5행 6열 중 5개를 초이스 받았기 때문에 5행 5열에 대해서 초이스 번호 받는 초기화 처리
         for (int i = 0; i < 5; i++) {
            logger.info("lottoLastNumber 반복중 =================================== : " + i);
            for (int j = 0; j < 3; j++) {
               // 여기에 베스트 번호를 넣어서 최종 번호 6개를 출력 해주면 된다
               lottoLastNumber[i][j] = selected_num[j];
               logger.info(
                     "lottoLastNumber 의 들어간 값의 i행 : " + i + " j열 : " + j + "의 값은 : " + lottoLastNumber[i][j]);
            }
         }

         // 전 주차와 비교해서 가장 많이 나왔던 번호가 있을 경우 출력
         for (int i = 0; i < 30; i++) {
            // 베스트 번호 중에서 전 주차 로또 번호가 나왔는지 체크하기 위해
            // arr_test_number 배열에 베스트 번호 담기
            String arr_test_number = bestLottoNumber[i];
            String[] test_number = new String[30];
            test_number[i] = arr_test_number;
            String chekc_test = MinTestService.chekc_test(test_number[i]);
            logger.info("chekc_test의 값은 : " + i + "번째 : " + chekc_test);

            // 베스트 로또 번호 넣는 조건
            if (chekc_test.equals("Y") && bestLottoCount < 5) {
               // lottoLastNumber에 selected_num5개 넣고 chekc_test.equals 걸러진 숫자 함께 넣기

               // logger.info("반복문 내의 bestLottoCount 값은 : " + bestLottoCount + " 입니다.");

               // 최종 번호 4번째 자리에 베스트 번호만 중복 체크를 한 후에 넣기/
               for (int a = 0; a < 3; a++) {
                  // 최종 로또번호 lottoLastNumber 앞에 4자리와 베스트 번호를 중복체크
                  logger.info("A의 현재 값 입니다 : " + a);
                  if (!lottoLastNumber[bestLottoCount][a].equals(test_number[i])) {
                     logger.info(
                           "lottoLastNumber[bestLottoCount][a] 번호와 test_number[i] 번호, sw번호 , bestLottoCount번호, a넘버 : "
                                 + lottoLastNumber[bestLottoCount][a] + " " + test_number[i] + " " + sw + " "
                                 + bestLottoCount + " " + a);
                     sw++;
                     // 배열의 자리가 다를때마다 sw 1씩 증가시키고 4자리가 모두 다르면 다른 조건문 시작
                     if (sw == 3) {
                        // 최종번호 4번째에 베스트 번호를 넣어주고 넣은 번호는 0으로 처리한다
                        lottoLastNumber[bestLottoCount][3] = test_number[i];
                        secondBestLottoNumber[i] = "0";
                        logger.info("if문 안에 실행 lottoLastNumber[" + bestLottoCount + "][4] 의 값은 : "
                              + lottoLastNumber[bestLottoCount][3]);
                        bestLottoCount++;
                        logger.info("반복문 내의 bestLottoCount 값은 : " + bestLottoCount + " 입니다.");
                        sw = 0;
                     } // end if

                  } else {
                     secondBestLottoNumber[i] = "0";
                     sw = 0;
                     a = 3;

                  }
               }
            } else {
               secondBestLottoNumber[i] = test_number[i];
            }
         }

         for (int i = 0; i < 5; i++) {
            logger.info("테스트 체체 =================================== : " + i);
            for (int j = 0; j < 6; j++) {
               logger.info(
                     "lottoLastNumber 의 들어간 값의 i행 : " + i + " j열 : " + j + "의 값은 : " + lottoLastNumber[i][j]);
            }
         }

         // 전주차에 당첨된 번호는 0로 되어 있으며, 나머지 번호들은 랜덤으로 섞어주기
         Collections.shuffle(Arrays.asList(secondBestLottoNumber));

         for (int i = 0; i < secondBestLottoNumber.length; i++) {
            logger.info("랜덤으로 섞긴 최종 직전 secondBestLottoNumber : " + secondBestLottoNumber[i]);
         }

         // 4번째 배열 가득 채우기
         // 무한 반복을 통해서 빈곳의 5번째 배열 채우기
         logger.info("bestLottoCount의 값 입니다 " + bestLottoCount);
         while (true) {
            if (bestLottoCount == 5) {
               break;
            }

            else if (bestLottoCount < 5 && !secondBestLottoNumber[q].equals("0")) {

               lottoLastNumber[bestLottoCount][3] = secondBestLottoNumber[q];
               logger.info("bestLottoCount : " + bestLottoCount);
               bestLottoCount++;
               q++;
               if (bestLottoCount == 5) {
                  logger.info("무한반복 테스트중");
                  q = 0;
                  break;
               }

            } else {
               q++;
            }

         } // end while

         for (int i = 0; i < 5; i++) {
            logger.info("4번째 배열 체크 테스트 =================================== : " + i);
            for (int j = 0; j < 6; j++) {
               logger.info(
                     "lottoLastNumber 의 들어간 값의 i행 : " + i + " j열 : " + j + "의 값은 : " + lottoLastNumber[i][j]);
            }
         }

         // 5번째 배열 가득 채우기
         // 무한 반복을 통해서 빈곳의 5번째 배열 채우기
         logger.info("5번째 무한반복 시작");
         while (close) {
            int test2 = 0;
            int sw5 = 0;
            int z = 0;
            // checkArray[0] 배열에 0이 들어있는 체크 배열
            logger.info("여기까지");
            // 이 미친 if문에 딱 한번만 실행함
            if (!secondBestLottoNumber[q].equals(checkArray[z])) {
               for (int a = 0; a < 5; a++) {
                  logger.info("a의 현재 값 : " + a + " sw5의 값 : " + sw5 + " secondBestLottoNumber[q] 값 : "
                        + secondBestLottoNumber[q] + " q의 현재값 : " + q);
                  // 수정 할때 b < 4 하나씩 줄여야함
                  for (int b = 0; b < 4; b++) {
                     logger.info("b의 현재 값 : " + b + " sw5의 값 : " + sw5 + " secondBestLottoNumber[q] 값 : "
                           + secondBestLottoNumber[q] + " q의 값  : " + q + " lottoLastNumber[a][b] 의 값 : "
                           + lottoLastNumber[a][b] + "test2의 값 : " + test2);
                     // !lottoLastNumber[a][b].equals(secondBestLottoNumber[q]) : lottoLastNumber
                     // 최종번호에 secondBestLottoNumber 없어야하며,
                     // !secondBestLottoNumber[q].equals(checkArray[z]) : secondBestLottoNumber 넣어야
                     // 하는 번호가 0이 아닌 경우에만 통과
                     if (!lottoLastNumber[a][b].equals(secondBestLottoNumber[q])
                           && !secondBestLottoNumber[q].equals(checkArray[z])) {
                        sw5++;
                        logger.info("현재의 값 a와 sw5 : " + a + " " + sw5);

                        // checkArray[0] 배열에 0이 들어있는 체크 배열
                        // sw5도 하나씩 줄여줘야 한다
                        if (sw5 == 4) {
                           logger.info("값 넣기 반복문 들어옴 " + a);
                           lottoLastNumber[a][4] = secondBestLottoNumber[q];
                           logger.info("lottoLastNumber[a][5] 현재값 : " + a + "와 " + lottoLastNumber[a][4]);
                           sw5 = 0;
                           test2++;
                           q++;
                           if (test2 == 4) {
                              close = false;
                           }
                        }
                     } else {
                        // if 문에서 0값이 들어온 경우 a를 그대로 유지해야 하기 때문에 a--를 하고 q만 증가 시켜서 계속 실행
                        logger.info("5번 else가 실행됐다");
                        q++;
                        if (a == 0) {
                           logger.info("첫번째에 0이 등장했다");
                           logger.info("a의 현재값은 이후 뺀다 : " + a);
                           a--;
                           logger.info("a의 현재값은 : " + a);
                        } else {
                           a--;
                        }
                     }
                  }
               }
            } else {
               logger.info("5번 else가 작동했다 ");
               // close = false;
               q++;
            }

         }

         for (int i = 0; i < 5; i++) {
            logger.info("5번째 배열 체크 테스트 =================================== : " + i);
            for (int j = 0; j < 6; j++) {
               logger.info(
                     "lottoLastNumber 의 들어간 값의 i행 : " + i + " j열 : " + j + "의 값은 : " + lottoLastNumber[i][j]);
            }
         }

         close = true;

         // 6번째 배열 가득 채우기
         // 무한 반복을 통해서 빈곳의 6번째 배열 채우기
         logger.info("무한반복 시작");
         while (close) {
            int test1 = 0;
            int sw6 = 0;
            int z = 0;
            // checkArray[0] 배열에 0이 들어있는 체크 배열
            logger.info("여기까지");
            // 이 미친 if문에 딱 한번만 실행함
            if (!secondBestLottoNumber[q].equals(checkArray[z])) {
               for (int a = 0; a < 5; a++) {
                  logger.info("a의 현재 값 : " + a + " sw6의 값 : " + sw6 + " secondBestLottoNumber[q] 값 : "
                        + secondBestLottoNumber[q] + " q의 현재값 : " + q);
                  for (int b = 0; b < 5; b++) {
                     logger.info("b의 현재 값 : " + b + " sw6의 값 : " + sw6 + " secondBestLottoNumber[q] 값 : "
                           + secondBestLottoNumber[q] + " q의 값  : " + q + " lottoLastNumber[a][b] 의 값 : "
                           + lottoLastNumber[a][b] + "test1의 값 : " + test1);
                     // !lottoLastNumber[a][b].equals(secondBestLottoNumber[q]) : lottoLastNumber
                     // 최종번호에 secondBestLottoNumber 없어야하며,
                     // !secondBestLottoNumber[q].equals(checkArray[z]) : secondBestLottoNumber 넣어야
                     // 하는 번호가 0이 아닌 경우에만 통과
                     if (!lottoLastNumber[a][b].equals(secondBestLottoNumber[q])
                           && !secondBestLottoNumber[q].equals(checkArray[z])) {
                        sw6++;
                        logger.info("현재의 값 a와 sw6 : " + a + " " + sw6);

                        // checkArray[0] 배열에 0이 들어있는 체크 배열
                        if (sw6 == 5) {
                           logger.info("값 넣기 반복문 들어옴 " + a);
                           lottoLastNumber[a][5] = secondBestLottoNumber[q];
                           logger.info("lottoLastNumber[a][5] 현재값 : " + lottoLastNumber[a][5]);
                           sw6 = 0;
                           test1++;
                           q++;
                           if (test1 == 5) {
                              close = false;
                           }
                        }
                     } else {
                        // if 문에서 0값이 들어온 경우 a를 그대로 유지해야 하기 때문에 a--를 하고 q만 증가 시켜서 계속 실행
                        logger.info("else가 실행됐다");
                        q++;
                        if (a == 0) {
                           logger.info("첫번째에 0이 등장했다");
                        } else {
                           a--;
                        }
                     }
                  }
               }
            } else {
               logger.info("else가 작동했다 ");
               // close = false;
               q++;
            }

         }

         for (int i = 0; i < bestLottoCount; i++) {
            logger.info("넘기기 직전 최종 체크 반복중 =================================== : " + i);
            for (int j = 0; j < 6; j++) {
               logger.info(
                     "lottoLastNumber 의 들어간 값의 i행 : " + i + " j열 : " + j + "의 값은 : " + lottoLastNumber[i][j]);
            }
         }

         // 초이스 번호와 베스트 넘버를 합해서 만들어진 최종 로또 번호 lottoLastNumber
         // 5게임으로 만들어진 2차원 배열
         model.addAttribute("basiclottoLastNumber", lottoLastNumber);
         logger.info("3번 케이스문 종료");
         break;
      case 4:
         logger.info("선택된 switch 문은 4번 입니다");

         // lottoLastNumber에 selected_num5개 넣는 반복문
         // 5행 6열 중 5개를 초이스 받았기 때문에 5행 5열에 대해서 초이스 번호 받는 초기화 처리
         for (int i = 0; i < 5; i++) {
            logger.info("lottoLastNumber 반복중 =================================== : " + i);
            for (int j = 0; j < 4; j++) {
               // 여기에 베스트 번호를 넣어서 최종 번호 6개를 출력 해주면 된다
               lottoLastNumber[i][j] = selected_num[j];
               logger.info(
                     "lottoLastNumber 의 들어간 값의 i행 : " + i + " j열 : " + j + "의 값은 : " + lottoLastNumber[i][j]);
            }
         }

         // 전 주차와 비교해서 가장 많이 나왔던 번호가 있을 경우 출력
         for (int i = 0; i < 30; i++) {
            // 베스트 번호 중에서 전 주차 로또 번호가 나왔는지 체크하기 위해
            // arr_test_number 배열에 베스트 번호 담기
            String arr_test_number = bestLottoNumber[i];
            String[] test_number = new String[30];
            test_number[i] = arr_test_number;
            String chekc_test = MinTestService.chekc_test(test_number[i]);
            logger.info("chekc_test의 값은 : " + i + "번째 : " + chekc_test);

            if (chekc_test.equals("Y") && bestLottoCount < 5) {
               // lottoLastNumber에 selected_num5개 넣고 chekc_test.equals 걸러진 숫자 함께 넣기

               // logger.info("반복문 내의 bestLottoCount 값은 : " + bestLottoCount + " 입니다.");

               // 최종 번호 5번째 자리에 베스트 번호만 중복 체크를 한 후에 넣기/
               for (int a = 0; a < 4; a++) {
                  // 최종 로또번호 lottoLastNumber 앞에 4자리와 베스트 번호를 중복체크
                  logger.info("A의 현재 값 입니다 : " + a);
                  if (!lottoLastNumber[bestLottoCount][a].equals(test_number[i])) {
                     logger.info(
                           "lottoLastNumber[bestLottoCount][a] 번호와 test_number[i] 번호, sw번호 , bestLottoCount번호, a넘버 : "
                                 + lottoLastNumber[bestLottoCount][a] + " " + test_number[i] + " " + sw + " "
                                 + bestLottoCount + " " + a);
                     sw++;
                     // 배열의 자리가 다를때마다 sw 1씩 증가시키고 4자리가 모두 다르면 다른 조건문 시작
                     if (sw == 4) {
                        // 최종번호 4번째에 베스트 번호를 넣어주고 넣은 번호는 0으로 처리한다
                        lottoLastNumber[bestLottoCount][4] = test_number[i];
                        secondBestLottoNumber[i] = "0";
                        logger.info("if문 안에 실행 lottoLastNumber[" + bestLottoCount + "][4] 의 값은 : "
                              + lottoLastNumber[bestLottoCount][4]);
                        bestLottoCount++;
                        logger.info("반복문 내의 bestLottoCount 값은 : " + bestLottoCount + " 입니다.");
                        sw = 0;
                     } // end if

                  } else {
                     secondBestLottoNumber[i] = "0";
                     sw = 0;
                     a = 4;

                  }
               }
            } else {
               secondBestLottoNumber[i] = test_number[i];
            }
         }

         for (int i = 0; i < 5; i++) {
            logger.info("테스트 체체 =================================== : " + i);
            for (int j = 0; j < 6; j++) {
               logger.info(
                     "lottoLastNumber 의 들어간 값의 i행 : " + i + " j열 : " + j + "의 값은 : " + lottoLastNumber[i][j]);
            }
         }

         // 전주차에 당첨된 번호는 0로 되어 있으며, 나머지 번호들은 랜덤으로 섞어주기
         Collections.shuffle(Arrays.asList(secondBestLottoNumber));

         for (int i = 0; i < secondBestLottoNumber.length; i++) {
            logger.info("랜덤으로 섞긴 최종 직전 secondBestLottoNumber : " + secondBestLottoNumber[i]);
         }

         // 5번째 배열 가득 채우기
         // 무한 반복을 통해서 빈곳의 5번째 배열 채우기
         logger.info("bestLottoCount의 값 입니다 " + bestLottoCount);
         while (true) {
            if (bestLottoCount == 5) {
               break;
            }

            else if (bestLottoCount < 5 && !secondBestLottoNumber[q].equals("0")) {

               lottoLastNumber[bestLottoCount][4] = secondBestLottoNumber[q];
               logger.info("bestLottoCount : " + bestLottoCount);
               bestLottoCount++;
               q++;
               if (bestLottoCount == 5) {
                  logger.info("무한반복 테스트중");
                  q = 0;
                  break;
               }

            } else {
               q++;
            }

         } // end while

         for (int i = 0; i < 5; i++) {
            logger.info("5번째 배열 체크 테스트 =================================== : " + i);
            for (int j = 0; j < 6; j++) {
               logger.info(
                     "lottoLastNumber 의 들어간 값의 i행 : " + i + " j열 : " + j + "의 값은 : " + lottoLastNumber[i][j]);
            }
         }

         // 6번째 배열 가득 채우기
         // 무한 반복을 통해서 빈곳의 5번째 배열 채우기
         logger.info("무한반복 시작");
         while (close) {
            int test1 = 0;
            int sw6 = 0;
            int z = 0;
            // checkArray[0] 배열에 0이 들어있는 체크 배열
            logger.info("여기까지");
            // 이 미친 if문에 딱 한번만 실행함
            if (!secondBestLottoNumber[q].equals(checkArray[z])) {
               for (int a = 0; a < 5; a++) {
                  logger.info("a의 현재 값 : " + a + " sw6의 값 : " + sw6 + " secondBestLottoNumber[q] 값 : "
                        + secondBestLottoNumber[q] + " q의 현재값 : " + q);
                  for (int b = 0; b < 5; b++) {
                     logger.info("b의 현재 값 : " + b + " sw6의 값 : " + sw6 + " secondBestLottoNumber[q] 값 : "
                           + secondBestLottoNumber[q] + " q의 값  : " + q + " lottoLastNumber[a][b] 의 값 : "
                           + lottoLastNumber[a][b] + "test1의 값 : " + test1);
                     // !lottoLastNumber[a][b].equals(secondBestLottoNumber[q]) : lottoLastNumber
                     // 최종번호에 secondBestLottoNumber 없어야하며,
                     // !secondBestLottoNumber[q].equals(checkArray[z]) : secondBestLottoNumber 넣어야
                     // 하는 번호가 0이 아닌 경우에만 통과
                     if (!lottoLastNumber[a][b].equals(secondBestLottoNumber[q])
                           && !secondBestLottoNumber[q].equals(checkArray[z])) {
                        sw6++;
                        logger.info("현재의 값 a와 sw6 : " + a + " " + sw6);

                        // checkArray[0] 배열에 0이 들어있는 체크 배열
                        if (sw6 == 5) {
                           logger.info("값 넣기 반복문 들어옴 " + a);
                           lottoLastNumber[a][5] = secondBestLottoNumber[q];
                           logger.info("lottoLastNumber[a][5] 현재값 : " + lottoLastNumber[a][5]);
                           sw6 = 0;
                           test1++;
                           q++;
                           if (test1 == 5) {
                              close = false;
                           }
                        }
                     } else {
                        // if 문에서 0값이 들어온 경우 a를 그대로 유지해야 하기 때문에 a--를 하고 q만 증가 시켜서 계속 실행
                        logger.info("else가 실행됐다");
                        q++;
                        if (a == 0) {
                           logger.info("첫번째에 0이 등장했다");
                        } else {
                           a--;
                        }
                     }
                  }
               }
            } else {
               logger.info("else가 작동했다 ");
               // close = false;
               q++;
            }

         }

         for (int i = 0; i < bestLottoCount; i++) {
            logger.info("넘기기 직전 최종 체크 반복중 =================================== : " + i);
            for (int j = 0; j < 6; j++) {
               logger.info(
                     "lottoLastNumber 의 들어간 값의 i행 : " + i + " j열 : " + j + "의 값은 : " + lottoLastNumber[i][j]);
            }
         }

         // 초이스 번호와 베스트 넘버를 합해서 만들어진 최종 로또 번호 lottoLastNumber
         // 5게임으로 만들어진 2차원 배열
         model.addAttribute("basiclottoLastNumber", lottoLastNumber);

         // case 4번을 종료하는 break;
         logger.info("4번 케이스문 종료");
         break;

      case 5:
         logger.info("선택된 switch 문은 5번 입니다");

         // lottoLastNumber에 selected_num5개 넣는 반복문
         // 5행 6열 중 5개를 초이스 받았기 때문에 5행 5열에 대해서 초이스 번호 받는 초기화 처리
         for (int i = 0; i < 5; i++) {
            logger.info("lottoLastNumber 반복중 =================================== : " + i);
            for (int j = 0; j < 5; j++) {
               // 여기에 베스트 번호를 넣어서 최종 번호 6개를 출력 해주면 된다
               lottoLastNumber[i][j] = selected_num[j];
               logger.info("lottoLastNumber 의 들어간 값의 i행 : " + i + " j열 : " + j + "의 값은 : " + lottoLastNumber[i][j]
                     + " Integer.parseInt(selected_num[" + i + "])의 값은 : " + Integer.parseInt(selected_num[i]));
            }
         }

         // 전 주차와 비교해서 가장 많이 나왔던 번호가 있을 경우 출력
         for (int i = 0; i < 29; i++) {
            // 베스트 번호 중에서 전 주차 로또 번호가 나왔는지 체크하기 위해 arr_test_number 배열에 베스트 번호 담기
            String arr_test_number = bestLottoNumber[i];
            String[] test_number = new String[30];
            test_number[i] = arr_test_number;
            String chekc_test = MinTestService.chekc_test(test_number[i]);
            logger.info("chekc_test의 값은 : " + i + "번째 : " + chekc_test);
            if (chekc_test.equals("Y")) {
               // lottoLastNumber에 selected_num5개 넣고 chekc_test.equals 걸러진 숫자 함께 넣기
               lottoLastNumber[bestLottoCount][5] = test_number[i];
               secondBestLottoNumber[i] = "0";
               logger.info(
                     "lottoLastNumber[" + bestLottoCount + "][5] 의 값은 : " + lottoLastNumber[bestLottoCount][5]);
               bestLottoCount++;
            } else {
               secondBestLottoNumber[i] = test_number[i];
            }
         }

         for (int i = 0; i < bestLottoCount; i++) {
            logger.info("최종 체크 반복중 =================================== : " + i);
            for (int j = 0; j < 6; j++) {
               logger.info(
                     "lottoLastNumber 의 들어간 값의 i행 : " + i + " j열 : " + j + "의 값은 : " + lottoLastNumber[i][j]);
            }
         }

         // secondBestLottoNumber에서 값이 0인 것은 제외 하고 랜덤으로 섞어서
         // bestLottoCount가 5개가 될때까지 로또 번호 조합하기
         for (int i = 0; i < secondBestLottoNumber.length; i++) {
            // logger.info("secondBestLottoNumber[" + i + "]의 값은 : " +
            // secondBestLottoNumber[i]);
            String secondBestLottoNumberCheck = secondBestLottoNumber[i];

         }

         // 전주차에 당첨된 번호는 null로 되어 있으며, 나머지 번호들은 랜덤으로 섞어주기
         Collections.shuffle(Arrays.asList(secondBestLottoNumber));

         for (int i = 0; i < secondBestLottoNumber.length; i++) {
            logger.info("랜덤으로 섞긴 최종 직전 secondBestLottoNumber : " + secondBestLottoNumber[i]);
         }

         if (bestLottoCount < 5 && !secondBestLottoNumber[q].equals("0")) {
            lottoLastNumber[bestLottoCount][5] = secondBestLottoNumber[q];
            bestLottoCount++;
            q++;
         }

         // 초이스 번호와 베스트 넘버를 합해서 만들어진 최종 로또 번호 lottoLastNumber
         // 5게임으로 만들어진 2차원 배열
         for (int i = 0; i < bestLottoCount; i++) {
            logger.info("넘기기 직전 최종 체크 반복중 =================================== : " + i);
            for (int j = 0; j < 6; j++) {
               logger.info(
                     "lottoLastNumber 의 들어간 값의 i행 : " + i + " j열 : " + j + "의 값은 : " + lottoLastNumber[i][j]);
            }
         }

         model.addAttribute("basiclottoLastNumber", lottoLastNumber);

         break;
      default:
         logger.info("선택된 switch 문은 default번 입니다");

         // 디폴트 부분 코드 테스트

         // 기존의 들어온 베스트 넘버 30개 섞어 주기
         Collections.shuffle(Arrays.asList(bestLottoNumber));

         int basickey = 0;

         for (int i = 0; i < 5; i++) {
            logger.info("=======================================" + i + " 번 실행 중");
            for (int y = 0; y < 6; y++) {
               logger.info("bestLottoNumber의 현재 값 : " + bestLottoNumber[basickey] + " 현재 i 값 : " + i + " 현재 y 값 : "
                     + y + " 현재 basickey 값 : " + basickey);
               if (basickey == 30) {
                  basickey = 0;
               }
               basiclottoLastNumber[i][y] = bestLottoNumber[basickey];
               logger.info(
                     "basiclottoLastNumber 의 i : " + i + " y : " + y + " 데이터는 : " + basiclottoLastNumber[i][y]);

               basickey++;
            }
            if (basickey == 30) {
               basickey = 0;
            }
         }

         for (int i = 0; i < 5; i++) {
            logger.info("넘기기 직전 최종 체크 반복중 =================================== : " + i);
            for (int j = 0; j < 6; j++) {
               logger.info("basiclottoLastNumber 의 들어간 값의 i행 : " + i + " j열 : " + j + "의 값은 : "
                     + basiclottoLastNumber[i][j]);
            }
         }
         
         
         // 이런 형태로 넘겨줬음
         //List<MinTestVO> list = MinTestService.choice(hit_select_number_choice);
         
         model.addAttribute("basiclottoLastNumber", basiclottoLastNumber);
         logger.info("5번 케이스문 종료");
         break;
      }

      logger.info("최종 종료");
      //return model.addAttribute("selected_num", selected_num);


      // selected_data에 들어있는 번호는 무조건 초이스 해서 로또 베스트 번호와 섞어서 번호 6개씩 묶어서 리턴해주기

   }

}