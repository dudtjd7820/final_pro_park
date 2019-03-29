package park.mvc.logic;

import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import park.VO.BoardVO;
import park.mvc.dao.MemberDao;

@Service
public class MemberLogic {

	
	@Autowired
	 MemberDao memberDao = null;
	
	Logger logger = Logger.getLogger(MemberLogic.class);
	
	// 각자에 영역에 메서드를 코딩하시고 어떤 기능인지 무엇을 무슨역활을하는 메서드인지  어느정도의 문서작업을 하는걸로 ? 그걸통합하면 나중에 ppt때 클래스설계 메서드설계에 넣을수있지않을까요 ?
	
//	<!-- 영은 --> 

//	<!-- 영은 -->
//
//
//
//	<!-- 슬기 -->
	//질문 글 jsonSelect	
	public List<BoardVO> jsonQuestionSel(BoardVO bVO) {
		logger.info("jsonQuestionSel 호출 성공");
		List<BoardVO> jsonQuestionSel = null;
		jsonQuestionSel = memberDao.jsonQuestionSel(bVO);
		return jsonQuestionSel;
	}
	//질문 글 Insert
	public void questionIns(BoardVO bVO) {
		logger.info("(MemberLogic) questionIns 호출 성공");
		memberDao.questionIns(bVO);
	}
	//질문 글 Update
	public void questionUpd(BoardVO bVO) {
		logger.info("(MemberLogic) questionUpd 호출 성공");
		memberDao.questionUpd(bVO);
	}
	//자유게시판 jsonSelect	
	public List<BoardVO> jsonFreeSel(BoardVO bVO) {
		logger.info("jsonFreeSel 호출 성공");
		List<BoardVO> jsonFreeSel = null;
		jsonFreeSel = memberDao.jsonFreeSel(bVO);
		return jsonFreeSel;
	}	
	//질문 글 Insert
	public void freeIns(BoardVO bVO) {
		logger.info("(MemberLogic) freeIns 호출 성공");
		memberDao.freeIns(bVO);
	}
	public BoardVO read(int base_post_number) {
		return memberDao.read(base_post_number);
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
