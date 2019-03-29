package park.mvc.controller;

import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import park.VO.MemberVO;
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
	 * 나의정보 불러오기 화면
	 * @return mav
	 *********************************************************************************/
	@GetMapping("/myInfo")
	public ModelAndView myInfo (@ModelAttribute MemberVO mVO, Model model) {
		logger.info("myInfo 호출");
		String mem_id = "test1";
		ModelAndView mav = new ModelAndView();	
		mav.setViewName("prohome/userPage/userMenu/myInfo");
		try {
			logger.info("myInfo try-catch 호출 성공");
			//===========================나의 정보 불러오기 시작===========================//
			List<MemberVO> memberList = memberLogic.memberInfo(mem_id);
//			MemberVO mVO1 = memberLogic.memberInfo(mem_id);
//			model.addAttribute("memberInfo", mVO1);
			model.addAttribute("memberList", memberList);
			logger.info(memberList.get(0).getMem_id() );
//			logger.info(mVO1.getMem_id() );
			//===========================나의 정보 불러오기 끝===========================//
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mav;
	}
	
	/***********************************************************************************
	 * 비밀번호 변경 메소드 
	 * @param pMap - @RequestParam Map<String,Object> 사용
	 * @return - 나의정보 불러오기 화면 /myInfo
	 ***********************************************************************************/
	@PostMapping("mem_pwUpd")
	public String mem_pwUpd(@RequestParam Map<String,Object> pMap) {
		int result = 0;
		try {
			result = memberLogic.mem_pwUpd(pMap);
			logger.info("mem_pw : "+pMap.get("mem_pw"));
			logger.info("비밀번호 변경 성공여부 : "+result);			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "forward:/myInfo";
	}
	
//	@GetMapping("/myInfo")
//	public ModelAndView myInfo2 (@ModelAttribute MemberVO mVO, Model model) {
//		logger.info("myInfo2 호출");
//		ModelAndView mav = new ModelAndView();	
//		mav.setViewName("prohome/userPage/userMenu/myInfo");
//		try {
//			mVO = memberLogic.memberInfo2(mVO);
//			model.addAttribute("memberInfo", mVO);
//			logger.info("myInfo try-catch 호출 성공");
//			logger.info(mVO.getMem_id());
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//		return mav;
//	}
	
	/*********************************************************************************
	 * 사용이력 화면
	 * @return mav
	 *********************************************************************************/
	@GetMapping("/useHistory")
	public ModelAndView useHistory (@ModelAttribute UseRecordVO urVO, Model model) {
		logger.info("useHistory 호출");
		ModelAndView mav = new ModelAndView();	
		mav.setViewName("prohome/userPage/userMenu/useHistory");
		List<Map<String,Object>> usemapList = null;
		usemapList = memberLogic.usemapList(urVO);
		model.addAttribute("usemapList", usemapList);
		return mav;
	}
	
	
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
