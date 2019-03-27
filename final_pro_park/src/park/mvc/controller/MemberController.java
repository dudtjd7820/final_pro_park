package park.mvc.controller;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import park.VO.UseRecordVO;
import park.mvc.dao.MemberDao;
import park.mvc.logic.MemberLogic;

@Controller
@RequestMapping(value="member")
public class MemberController {

	@Autowired
	MemberDao memberDao = null;
	@Autowired
	MemberLogic memberLogic = null;
	
	Logger logger = Logger.getLogger(test.class);
	
	// 각자에 영역에 메서드를 코딩하시고 어떤 기능인지 무엇을 무슨역활을하는 메서드인지  어느정도의 문서작업을 하는걸로 ? 그걸통합하면 나중에 ppt때 클래스설계 메서드설계에 넣을수있지않을까요 ?
	
//	<!-------------------------- 영은 시작 --------------------------> 

	/*********************************************************************************
	 * 나의정보 화면
	 * @return mav
	 *********************************************************************************/
	@GetMapping("/myInfo")
	public ModelAndView myInfo () {
		logger.info("myInfo 호출");
		ModelAndView mav = new ModelAndView();	
		mav.setViewName("prohome/userPage/userMenu/myInfo");
		return mav;
	}
	/*********************************************************************************
	 * 사용이력 화면
	 * @return mav
	 *********************************************************************************/
	@GetMapping("/useHistory")
	public ModelAndView useHistory (@ModelAttribute UseRecordVO urVO, Model model) {
		logger.info("useHistory 호출");
		ModelAndView mav = new ModelAndView();	
		mav.setViewName("prohome/userPage/userMenu/useHistory");
		
		List<UseRecordVO> useList = null;
		useList = memberLogic.useList(urVO);
		String ur_parking_lot_location = useList.get(0).getUr_parking_lot_location();
		logger.info("ur_parking_lot_location : "+ur_parking_lot_location);
		model.addAttribute("useList", useList);
		model.addAttribute("ur_parking_lot_location", ur_parking_lot_location);
		
		return mav;
	}
	
//	@GetMapping("/useList")
//	@ResponseBody
//	public void useList(@ModelAttribute UseRecordVO urVO, Model model) {
//		logger.info("useList 호출 성공");
//		List<UseRecordVO> useList = null;
//		useList = memberLogic.useList(urVO);
//		String ur_parking_lot_location = useList.get(0).getUr_parking_lot_location();
//		logger.info("ur_parking_lot_location : "+ur_parking_lot_location);
//		model.addAttribute("useList", useList);
//		model.addAttribute("ur_parking_lot_location", ur_parking_lot_location);
////		return useList;
//	} 
	
	
//	<!-------------------------- 영은 끝 -------------------------->
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

//	<!-- 영성 -->

	
}
