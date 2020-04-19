package com.cropPrediction.controller;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.cropPrediction.model.FeedbackVO;
import com.cropPrediction.model.LoginVO;
import com.cropPrediction.service.FeedbackService;
import com.cropPrediction.service.LoginService;
import com.cropPrediction.utils.BaseMethod;

@Controller
public class FeedbackController {

	@Autowired
	private FeedbackService feedbackService;

	@Autowired
	private LoginService loginService;

	@GetMapping(value = "/loadFeedback")

	public ModelAndView addFeedback() {

		return new ModelAndView("/farmer/addFeedback", "feedbackVO", new FeedbackVO());// view one welcome
	}

	@GetMapping(value = "/admin/viewFeedback")

	public ModelAndView viewFeedback(Model model) {
		model.addAttribute("loginList", this.loginService.loginSearchAll());
		List<FeedbackVO> feedbackList = this.feedbackService.feedbackSearchAll();
		return new ModelAndView("/admin/viewFeedback", "feedbackList", feedbackList);// view one welcome
	}

	@GetMapping(value = "/farmer/viewFeedback")

	public ModelAndView viewFeedbackFarmer() {
		LoginVO loginVO = new LoginVO();
		loginVO.setUsername(BaseMethod.getUser());
		List<FeedbackVO> feedbackList = this.feedbackService.feedbackByusername(loginVO);
		return new ModelAndView("/farmer/viewFeedback", "feedbackList", feedbackList);// view one welcome
	}

	@PostMapping(value = "/farmer/addFeedback")

	public ModelAndView addFeedback(@ModelAttribute FeedbackVO feedbackVO) {
		feedbackVO.setFeedbackStatus(true);
		DateTimeFormatter dtf= DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");
		LocalDateTime now=LocalDateTime.now();
		feedbackVO.setFeedbackDate(dtf.format(now));
		/* this.feedbackService.feedbackInsert(feedbackVO); */
		User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		LoginVO loginVO = new LoginVO();
		loginVO.setUsername(user.getUsername());
		List feedbackList = (List) this.feedbackService.searchByUsername(loginVO);
		loginVO = (LoginVO) feedbackList.get(0);

		feedbackVO.setLoginVO(loginVO);
		this.feedbackService.feedbackInsert(feedbackVO);
		return new ModelAndView("redirect:/farmer/viewFeedback");

	}

	@GetMapping(value = "/admin/deleteFeedback")

	public ModelAndView deleteFeedback(@RequestParam int id) {
		FeedbackVO feedbackVO = new FeedbackVO();
		feedbackVO.setId(id);
		feedbackVO = this.feedbackService.searchFeedbackById(feedbackVO);
		feedbackVO.setFeedbackStatus(false);
		this.feedbackService.feedbackInsert(feedbackVO);
		return new ModelAndView("redirect:/admin/viewFeedback");
	}

}
