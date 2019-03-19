package park.mvc.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import park.mvc.logic.test_Logic;


@Controller
@RequestMapping(value="test/")
public class test {
	
	
	Logger logger = Logger.getLogger(test.class);
	
	
	@Autowired
	public test_Logic test_Logic = null;
	
	
	@GetMapping("getname")
	public ModelAndView getdname (@RequestParam("p_id") String p_id , @RequestParam("p_pw") String p_pw) {

		logger.info("test con 탐");
		
		
		
		logger.info("request parm 넘어온값 : "+p_id + p_pw );
		String dname = test_Logic.getname(p_id ,  p_pw);
		
		
		ModelAndView mav = new ModelAndView();	
		mav.addObject("name",dname);
		mav.setViewName("getname");
		return mav;
	}
	
	@GetMapping("prohome")
	public ModelAndView prohome (@RequestParam("p_id") String p_id , @RequestParam("p_pw") String p_pw) {

		logger.info("test con 탐");
		
		
		
		logger.info("request parm 넘어온값 : "+p_id + p_pw );
		String dname = test_Logic.getname(p_id ,  p_pw);
		
		
		ModelAndView mav = new ModelAndView();	
		mav.addObject("name",dname);
		mav.setViewName("prohome/common/header");
		return mav;
	}
	
	@GetMapping("userMain")
	public ModelAndView userMain () {
		logger.info("userMain 호출");
		ModelAndView mav = new ModelAndView();	
		mav.setViewName("prohome/userPage/main");
		return mav;
		
	}
	
	@GetMapping("account")
	public ModelAndView account (@RequestParam("p_id") String p_id , @RequestParam("p_pw") String p_pw) {

		logger.info("ac con 탐");
		
		
		
		logger.info("request parm 넘어온값 : "+p_id + p_pw );
		String dname = test_Logic.getname(p_id ,  p_pw);
		
		
		ModelAndView mav = new ModelAndView();	
		mav.addObject("name",dname);
		mav.setViewName("account/index");
		return mav;
	}
	
	@GetMapping("easyuitest")
	public ModelAndView easyuitest () {
		logger.info("userMain 호출");
		ModelAndView mav = new ModelAndView();	
		mav.setViewName("easyuitest");
		return mav;
		
	}
	

}
