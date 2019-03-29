package park.mvc.controller;

import java.util.List;

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
import park.mvc.dao.MemberDao;
import park.mvc.logic.MemberLogic;

@Controller
@RequestMapping(value = "member", method = { RequestMethod.GET, RequestMethod.POST })
public class MemberController {

	@Autowired
	MemberDao memberDao = null;
	@Autowired
	MemberLogic memberLogic = null;

	Logger logger = Logger.getLogger(MemberController.class);

	// 각자에 영역에 메서드를 코딩하시고 어떤 기능인지 무엇을 무슨역활을하는 메서드인지 어느정도의 문서작업을 하는걸로 ? 그걸통합하면 나중에
	// ppt때 클래스설계 메서드설계에 넣을수있지않을까요 ?

//	<!-- 영은 --> 

//	<!-- 영은 -->
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

	// 공지사항
	@GetMapping("/notice")
	public ModelAndView notice() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("prohome/userPage/serviceCenter/notice");
		return mav;
	}

	// 질문게시판
	@GetMapping("/question")
	public ModelAndView question() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("prohome/userPage/serviceCenter/question");
		return mav;
	}

	// 질문 글 작성화면
	@GetMapping("/questWrite")
	public ModelAndView write() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("prohome/userPage/serviceCenter/questWrite");
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
		
	//자유게시판 화면
	@GetMapping("/free")
	public ModelAndView free() {
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
	
	// 글 조회
	@GetMapping("/read")
	public ModelAndView getRead(@RequestParam("base_post_number") int base_post_number, Model model, BoardVO vo2) throws Exception {
		logger.info("get read");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("prohome/userPage/serviceCenter/read");
		BoardVO vo = memberLogic.read(base_post_number);		
		memberDao.viewCount(vo2);		
		model.addAttribute("read", vo);		
		return mav;
		
	}
	
	//글 수정
	@GetMapping("/edit")
	public ModelAndView edit(@RequestParam("base_post_number") int base_post_number, Model model) {
		logger.info("글 수정됨");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("prohome/userPage/serviceCenter/edit");
		BoardVO vo = memberLogic.read(base_post_number);
		model.addAttribute("edit", vo);
		return mav;
	}
		
	// 질문 글 Update성공
	@PostMapping("/questionUpd")
	public ModelAndView questionUpd(@ModelAttribute BoardVO bVO) {
		logger.info("questionUpd 호출 성공");
		memberLogic.questionUpd(bVO);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("prohome/userPage/serviceCenter/question");
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

//	<!-- 영성 -->

}
	