package park.mvc.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import park.VO.MemberVO;
import park.VO.UseRecordVO;
import park.mvc.dao.MemberDao;
import park.mvc.logic.MemberLogic;

@Controller
@RequestMapping(value="member", method= {RequestMethod.GET , RequestMethod.POST})
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
	@PostMapping("/myInfo")
	public ModelAndView myInfo (@ModelAttribute MemberVO mVO, Model model, HttpServletRequest req) {
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
			logger.info(memberList.get(0).getMem_id());
			logger.info(memberList.get(0).getMem_pw());
//			logger.info(mVO1.getMem_id() );
			//===========================나의 정보 불러오기 끝===========================//
//			String getPw = getPw(memberList.get(0).getMem_id());
//			logger.info("비밀번호 : "+getPw);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mav;
	}
	
	//현재 비밀번호 가져오기
	public String getPw(String mem_id) {
		logger.info("getPw호출 성공");
		String getPw = "";
		try {
			getPw = memberLogic.getPw(mem_id);	
		} catch (Exception e) {
			e.printStackTrace();
		}
		return getPw;
	}
	/***********************************************************************************
	 * 비밀번호 변경 메소드 
	 * @param pMap - @RequestParam Map<String,Object> 사용
	 * @return - 나의정보 불러오기 화면 /myInfo
	 ***********************************************************************************/
	@PostMapping("/mem_pwUpd")
	public String mem_pwUpd(@RequestParam Map<String,Object> pMap) {
		logger.info("mem_pwUpd호출 성공");	
		int result = 0;
		try {			
			String inputPw = pMap.get("old-password").toString();	 //사용자가 화면에서 입력한 현재비밀번호를 담기
			String getPw = getPw(pMap.get("h_mem_id").toString());   //mem_id에 설정된 비밀번호를 getPw에 담기
			logger.info("현재 mem_id : "+pMap.get("h_mem_id").toString());
			logger.info("현재 mem_pw : "+pMap.get("old-password").toString());
			logger.info("바꿀 mem_pw : "+pMap.get("password").toString());
			//현재 비밀번호가 입력한 비밀번호와 같을 때
			if(inputPw.equals(getPw)) {
				//새로입력한 비밀번호 두번이 맞을 때
				if(pMap.get("password").toString().equals(pMap.get("re-password").toString())) {
					logger.info("비번두번 맞음");
					result = memberLogic.mem_pwUpd(pMap);				
				}
				else {
					logger.info("비번 두번 틀림");
				}
				logger.info("비밀번호 변경 성공여부 : "+result);			
			}
			else {
				logger.info("비밀번호가 올바르지 않습니다.");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:/member/myInfo.park";
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
