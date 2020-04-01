package com.spring.lotto;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.lotto.domain.StatVO;
import com.spring.lotto.pageutil.ListBackNextCriteria;
import com.spring.lotto.pageutil.ListBackNextMaker;
import com.spring.lotto.service.TestService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@Autowired
	private TestService testService;
	
	@RequestMapping(value="/", method = RequestMethod.GET)
	public String home() {
		return "redirect:/mainpage";
	}
	
	
	@RequestMapping(value = "/mainpage", method = RequestMethod.GET)
	public void lottohistory(Model model, Integer page, Integer perPage) {
		ListBackNextCriteria c2 = new ListBackNextCriteria();

		if (page != null) {
			c2.setPage(page);
		}
		if (perPage != null) {
			c2.setViewlistone(perPage);
		}

		List<StatVO> list = testService.listbacknext_s(c2);
		model.addAttribute("won_list", list);

		ListBackNextMaker maker2 = new ListBackNextMaker();
		maker2.setCriteria(c2);
		maker2.setTotalCount(testService.getTotalNums_w());
		maker2.setPageData();
		model.addAttribute("listMaker2", maker2);;
	}

	@RequestMapping(value = "/dropbar", method = RequestMethod.GET)
	public void dropbar(Model model, Integer page, Integer perPage) { // 페이징 처리로...
		/* logger.info("listPreNext controller is called...............!!"); */

		/*
		 * // 페이징 처리로... ListBackNextCriteria c = new ListBackNextCriteria();
		 * 
		 * if (page != null) { c.setPage(page); }
		 * 
		 * if (perPage != null) { c.setViewlistone(perPage); } List<TestVO> list =
		 * testService.listbacknext(c); model.addAttribute("miniList", list);
		 * 
		 * ListBackNextMaker maker = new ListBackNextMaker(); maker.setCriteria(c);
		 * maker.setTotalCount(testService.getTotalNums()); maker.setPageData();
		 * model.addAttribute("listMaker", maker);
		 */

	}


	@RequestMapping(value = "/lotto_won", method = RequestMethod.GET)
	public void lotto_won(HttpServletRequest req, Model model) {
		String number = req.getParameter("selval");
		int selval = Integer.parseInt(number);

		testService.select_won(selval);

	}

}