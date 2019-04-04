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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import park.VO.BoardVO;
import park.VO.MemberVO;
import park.VO.ReserveVO;
import park.VO.UseRecordVO;
import park.mvc.dao.MemberDao;
import park.mvc.logic.MemberLogic;

@Controller
@RequestMapping(value="member", method = { RequestMethod.GET, RequestMethod.POST })
public class MemberController {

	
	@Autowired
	MemberDao memberDao = null;
	@Autowired
	MemberLogic memberLogic =null;
	
	Logger logger = Logger.getLogger(MemberController.class);
	
	// 각자에 영역에 메서드를 코딩하시고 어떤 기능인지 무엇을 무슨역활을하는 메서드인지  어느정도의 문서작업을 하는걸로 ? 그걸통합하면 나중에 ppt때 클래스설계 메서드설계에 넣을수있지않을까요 ?
	
	//<!-------------------------- 영은 시작 --------------------------> 

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
	// 메인화면
	@GetMapping("/usermain")
	public ModelAndView userMain() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("prohome/userPage/main");
		return mav;
	}

///////////////////////////////공지 게시판 시작///////////////////////////////////////////////
	// 공지사항 메인화면
	@GetMapping("/notice")
	public ModelAndView notice() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("prohome/userPage/serviceCenter/notice");
		return mav;
	}
	
	// 공지사항 글 작성화면
	@GetMapping("/noticeWrite")
	public ModelAndView noticeWrite() {
	ModelAndView mav = new ModelAndView();
	mav.setViewName("prohome/userPage/serviceCenter/noticeWrite");
	return mav;
	}
	
	// 공지사항 글 Insert성공
	@PostMapping("/noticeIns")
	public ModelAndView noticeIns(@ModelAttribute BoardVO bVO) {
	logger.info("noticeIns 호출 성공");
	memberLogic.noticeIns(bVO);
	ModelAndView mav = new ModelAndView();
	mav.setViewName("prohome/userPage/serviceCenter/notice");
	return mav;
	}
	
	//공지사항에 넣기위해 json목록 불러오기
	@GetMapping("/jsonNoticeSel")
	@ResponseBody
	public List<BoardVO> jsonNoticeSel(@ModelAttribute BoardVO bVO) {
	logger.info("jsonNoticeSel 호출 성공");
	List<BoardVO> jsonNoticeSel = null;
	jsonNoticeSel = memberLogic.jsonNoticeSel(bVO);
	return jsonNoticeSel;
	}
	
	// 공지사항 글 조회
	@GetMapping("/noticeRead")
	public ModelAndView noticeRead(@RequestParam("base_post_number") int base_post_number, Model model, BoardVO bVO2) throws Exception {
	logger.info("noticeRead");
	ModelAndView mav = new ModelAndView();
	mav.setViewName("prohome/userPage/serviceCenter/noticeRead");
	BoardVO bVO = memberLogic.boardRead(base_post_number);		
	memberDao.boardViewCount(bVO2);		
	model.addAttribute("boardRead", bVO);		
	return mav;
	}
	
	//공지사항 글 수정 화면
	@GetMapping("/noticeEdit")
	public ModelAndView noticeEdit(@RequestParam("base_post_number") int base_post_number, Model model) {
	logger.info("글 수정됨");
	ModelAndView mav = new ModelAndView();
	mav.setViewName("prohome/userPage/serviceCenter/noticeEdit");
	BoardVO bVO = memberLogic.boardRead(base_post_number);
	model.addAttribute("boardUpd", bVO);
	return mav;
	}
	
	//공지사항 글 수정 성공
	@PostMapping("/noticeUpd")
	public ModelAndView noticeUpd(@ModelAttribute BoardVO bVO) {
	logger.info("noticeUpd 호출 성공");
	memberLogic.boardUpd(bVO);
	ModelAndView mav = new ModelAndView();
	mav.setViewName("prohome/userPage/serviceCenter/notice");
	return mav;
	}
	
	//공지사항 글 Delete 성공
	@PostMapping("/noticeDel")
	public ModelAndView noticeDel(@ModelAttribute BoardVO bVO) {
	logger.info("noticeDel 호출 성공");
	memberLogic.noticeDel(bVO);
	ModelAndView mav = new ModelAndView();
	mav.setViewName("prohome/userPage/serviceCenter/notice");
	return mav;
	}
///////////////////////////////공지 게시판 끝///////////////////////////////////////////////
///////////////////////////////질문 게시판 시작///////////////////////////////////////////////
	// 질문게시판 메인화면
	@GetMapping("/question")
	public ModelAndView question() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("prohome/userPage/serviceCenter/question");
		return mav;
	}

	// 질문 글 작성화면
	@GetMapping("/questionWrite")
	public ModelAndView questionWrite() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("prohome/userPage/serviceCenter/questionWrite");
		return mav;
	}

	// 질문 글 Insert성공
	@PostMapping("/questionIns")
	public ModelAndView questionIns(@ModelAttribute BoardVO bVO) {
		logger.info("questionIns 호출 성공");
		memberLogic.questionIns(bVO);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("prohome/userPage/serviceCenter/question");
		return mav;
	}
	
	//질문게시판에 넣기위해 json목록 불러오기
	@GetMapping("/jsonQuestionSel")
	@ResponseBody
	public List<BoardVO> jsonQuestionSel(@ModelAttribute BoardVO bVO) {
		logger.info("jsonQuestionSel 호출 성공");
		List<BoardVO> jsonQuestionSel = null;
		jsonQuestionSel = memberLogic.jsonQuestionSel(bVO);
		return jsonQuestionSel;
	}
	
	// 질문 글 조회
	@GetMapping("/questionRead")
	public ModelAndView questionRead(@RequestParam("base_post_number") int base_post_number, Model model, BoardVO bVO2) throws Exception {
		logger.info("questionRead");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("prohome/userPage/serviceCenter/questionRead");
		BoardVO bVO = memberLogic.boardRead(base_post_number);		
		memberDao.boardViewCount(bVO2);		
		model.addAttribute("boardRead", bVO);		
		return mav;
	}
	
	//질문 글 수정 화면
	@GetMapping("/questionEdit")
	public ModelAndView questionEdit(@RequestParam("base_post_number") int base_post_number, Model model) {
		logger.info("questionEdit");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("prohome/userPage/serviceCenter/questionEdit");
		BoardVO bVO = memberLogic.boardRead(base_post_number);
		model.addAttribute("boardUpd", bVO);
		return mav;
	}
	
	// 질문 글 수정 성공
	@PostMapping("/questionUpd")
	public ModelAndView questionUpd(@ModelAttribute BoardVO bVO) {
		logger.info("questionUpd 호출 성공");
		memberLogic.boardUpd(bVO);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("prohome/userPage/serviceCenter/question");
		return mav;
	}
	
	// 질문 글 Delete 성공
	@PostMapping("/questionDel")
	public ModelAndView questionDel(@ModelAttribute BoardVO bVO) {
		logger.info("questionDel 호출 성공");
		memberLogic.questionDel(bVO);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("prohome/userPage/serviceCenter/question");
		return mav;
	}
///////////////////////////////질문 게시판 끝///////////////////////////////////////////////
///////////////////////////////자유 게시판 시작/////////////////////////////////////////////
	//자유게시판 메인화면
	@GetMapping("/free")
	public ModelAndView free() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("prohome/userPage/serviceCenter/free");
		return mav;
	}
	
	// 자유게시판 글 작성화면
	@GetMapping("/freeWrite")
	public ModelAndView freeWrite() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("prohome/userPage/serviceCenter/freeWrite");
		return mav;
	}
		
	// 자유 글 Insert성공
	@PostMapping("/freeIns")
	public ModelAndView freeIns(@ModelAttribute BoardVO bVO) {
		logger.info("freeIns 호출 성공");
		memberLogic.freeIns(bVO);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("prohome/userPage/serviceCenter/free");
		return mav;
	}
	
	//자유게시판에 넣기위해 json목록 불러오기
	@GetMapping("/jsonFreeSel")
	@ResponseBody
	public List<BoardVO> jsonFreeSel(@ModelAttribute BoardVO bVO) {
		logger.info("jsonFreeSel 호출 성공");
		List<BoardVO> jsonFreeSel = null;
		jsonFreeSel = memberLogic.jsonFreeSel(bVO);
		return jsonFreeSel;
	}	
	
	// 자유게시판 글 조회
	@GetMapping("/freeRead")
	public ModelAndView freeRead(@RequestParam("base_post_number") int base_post_number, Model model, BoardVO bVO2) throws Exception {
		logger.info("get read");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("prohome/userPage/serviceCenter/freeRead");
		BoardVO vo = memberLogic.boardRead(base_post_number);		
		memberDao.boardViewCount(bVO2);		
		model.addAttribute("boardRead", vo);		
		return mav;
	}
	
	//자유게시판 글 수정 화면
	@GetMapping("/freeEdit")
	public ModelAndView freeEdit(@RequestParam("base_post_number") int base_post_number, Model model) {
		logger.info("글 수정됨");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("prohome/userPage/serviceCenter/freeEdit");
		BoardVO bVO = memberLogic.boardRead(base_post_number);
		model.addAttribute("boardUpd", bVO);
		return mav;
	}
	
	// 질문 글 수정 성공
	@PostMapping("/freeUpd")
	public ModelAndView freeUpd(@ModelAttribute BoardVO bVO) {
		logger.info("freeUpd 호출 성공");
		memberLogic.boardUpd(bVO);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("prohome/userPage/serviceCenter/free");
		return mav;
	}
	
	// 자유게시판 글 Delete 성공
	@PostMapping("/freeDel")
	public ModelAndView freeDel(@ModelAttribute BoardVO bVO) {
		logger.info("freeDel 호출 성공");
		memberLogic.freeDel(bVO);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("prohome/userPage/serviceCenter/free");
		return mav;
	}
///////////////////////////////자유 게시판 끝/////////////////////////////////////////////	
	
	
	//id, pw 찾기화면
	@GetMapping("/id_pw_find")
	public ModelAndView id_pw_find() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("prohome/userPage/serviceCenter/id_pw_find");
		return mav;
	}
	
	//1:1 문의 화면
	@GetMapping("/inquiry")
	public ModelAndView inquiry() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("prohome/userPage/serviceCenter/inquiry");
		return mav;
	}
	
	// 제휴문의 페이지
	@GetMapping("/contact")
	public ModelAndView contact() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("prohome/userPage/serviceCenter/contact");
		return mav;
	}
	
	// 테스트
		@GetMapping("/test2")
		public ModelAndView test2() {
			ModelAndView mav = new ModelAndView();
			mav.setViewName("prohome/userPage/serviceCenter/test");
			return mav;
		}
	
	

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
