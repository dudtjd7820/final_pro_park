package park.mvc.controller;

import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import oracle.net.aso.p;
import park.VO.ReserveVO;
import park.mvc.dao.MemberDao;
import park.mvc.logic.MemberLogic;

@Controller
@RequestMapping(value="member")
public class MemberController {

	@Autowired
	MemberLogic memberLogic =null;
	
	Logger logger = Logger.getLogger(MemberController.class);
	
	// 각자에 영역에 메서드를 코딩하시고 어떤 기능인지 무엇을 무슨역활을하는 메서드인지  어느정도의 문서작업을 하는걸로 ? 그걸통합하면 나중에 ppt때 클래스설계 메서드설계에 넣을수있지않을까요 ?
	
//	<!-- 영은 --> 

//	<!-- 영은 -->
//
//
//
//	<!-- 슬기 -->

//	<!-- 슬기 -->
//
//
//
//	<!-- 승범 -->

//	<!-- 승범 -->
//
//
//
//	<!-- 민성 -->

//	<!-- 민성 -->
//
//
//
//	<!-- 영성 -->
	
	@GetMapping("/reservation_history")
	public ModelAndView reservationpage(Model m) {
		
		String id ="test1";
		
		List<ReserveVO> reserveList_ing = memberLogic.getreserveList(id);
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("prohome/userPage/reserv/reservation_history");
		
		m.addAttribute("reserveList", reserveList_ing);
	
		return mav;
		
	}
	
	@GetMapping("/upd_del_reserv")
	public void upd_del_reserv(@RequestParam Map<String,String> pMap) {
		
		String crud = pMap.get("crud");
		memberLogic.upd_del_reserv(pMap);
	}
	
	
	
	
	@GetMapping("/reservation")
	public ModelAndView getreserv() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("prohome/userPage/reserv/reservation");
		return mav;
		
	}
	
//	<!-- 영성 -->

	
}
