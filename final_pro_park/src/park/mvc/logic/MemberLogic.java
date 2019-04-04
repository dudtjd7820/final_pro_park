package park.mvc.logic;

import java.util.List;

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
///////////////////////////////공지 게시판 시작///////////////////////////////////////////////	
	//공지 글 jsonSelect	
	public List<BoardVO> jsonNoticeSel(BoardVO bVO) {
	logger.info("jsonNoticeSel 호출 성공");
	List<BoardVO> jsonNoticeSel = null;
	jsonNoticeSel = memberDao.jsonNoticeSel(bVO);
	return jsonNoticeSel;
	}
	//공지 글 Insert
	public void noticeIns(BoardVO bVO) {
	logger.info("(MemberLogic) noticeIns 호출 성공");
	memberDao.noticeIns(bVO);
	}
	//공지 글 Delete
	public void noticeDel(BoardVO bVO) {
	logger.info("(MemberLogic) noticeDel 호출 성공");
	memberDao.noticeDel(bVO);
	}
///////////////////////////////공지 게시판 끝///////////////////////////////////////////////
///////////////////////////////질문 게시판 시작///////////////////////////////////////////////	
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
	//질문 글 Delete
	public void questionDel(BoardVO bVO) {
		logger.info("(MemberLogic) questionDel 호출 성공");
		memberDao.questionDel(bVO);
	}
///////////////////////////////질문 게시판 끝///////////////////////////////////////////////
///////////////////////////////자유 게시판 시작///////////////////////////////////////////////
	//자유게시판 jsonSelect	
	public List<BoardVO> jsonFreeSel(BoardVO bVO) {
		logger.info("jsonFreeSel 호출 성공");
		List<BoardVO> jsonFreeSel = null;
		jsonFreeSel = memberDao.jsonFreeSel(bVO);
		return jsonFreeSel;
	}
	//자유게시판 글 Insert
	public void freeIns(BoardVO bVO) {
		logger.info("(MemberLogic) freeIns 호출 성공");
		memberDao.freeIns(bVO);
	}
	//자유게시판 글  Delete
	public void freeDel(BoardVO bVO) {
		logger.info("(MemberLogic) freeDel 호출 성공");
		memberDao.freeDel(bVO);
	}
///////////////////////////////질문 게시판 끝///////////////////////////////////////////////		
	//질문 글 Read
	public BoardVO boardRead(int base_post_number) {
		return memberDao.boardRead(base_post_number);
	}
	//질문 글 Update
	public void boardUpd(BoardVO bVO) {
		logger.info("(MemberLogic) boardUpd 호출 성공");
		memberDao.boardUpd(bVO);
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
