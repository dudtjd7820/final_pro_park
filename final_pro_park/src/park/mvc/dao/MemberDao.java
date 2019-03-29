package park.mvc.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.Logger;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import park.VO.BoardVO;


@Repository
public class MemberDao {

	
	Logger logger = Logger.getLogger(MemberDao.class);
	
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate = null;
	public void setSqlSessionTemplate(SqlSessionTemplate sqlSessionTemplate) {
		this.sqlSessionTemplate = sqlSessionTemplate;
	}
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
		//NullPointerException의 대상이 되는 클래스 이므로 인스턴스화를 완성함.
		//주의사항 : myBatis에서 자동으로 Map담아주는데 이 때 키값은 대문자가 디폴트값.
		List<BoardVO> jsonQuestionSel = 
				new ArrayList<BoardVO>();
		try {
			jsonQuestionSel = sqlSessionTemplate.selectList("member.jsonQuestionSel", bVO);
			logger.info("size:"+jsonQuestionSel.size());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return jsonQuestionSel;
	}
	//질문 글 Insert
	public void questionIns(BoardVO bVO) {
		logger.info("(MemberDao) questionIns 호출 성공");
		sqlSessionTemplate.insert("member.questionIns", bVO);
	}
	//질문 글 Update
	public void questionUpd(BoardVO bVO) {
		logger.info("(MemberDao) questionUpd 호출 성공");
		sqlSessionTemplate.update("member.questionUpd", bVO);
	}
	//자유게시판 jsonSelect
	public List<BoardVO> jsonFreeSel(BoardVO bVO) {
		logger.info("jsonFreeSel 호출 성공");
		//NullPointerException의 대상이 되는 클래스 이므로 인스턴스화를 완성함.
		//주의사항 : myBatis에서 자동으로 Map담아주는데 이 때 키값은 대문자가 디폴트값.
		List<BoardVO> jsonFreeSel = 
				new ArrayList<BoardVO>();
		try {
			jsonFreeSel = sqlSessionTemplate.selectList("member.jsonFreeSel", bVO);
			logger.info("size:"+jsonFreeSel.size());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return jsonFreeSel;
	}
	//질문 글 Insert
	public void freeIns(BoardVO bVO) {
		logger.info("(MemberDao) freeIns 호출 성공");
		sqlSessionTemplate.insert("member.freeIns", bVO);
	}
	//글 조회
	public BoardVO read(int base_post_number) {
		return sqlSessionTemplate.selectOne("member.read",base_post_number);
	}
	
	//글 조회수 증가
	public void viewCount(BoardVO bVO) {
		logger.info("조회수 증가해라" + bVO.getBase_post_number() + bVO.getBase_view_count());
		sqlSessionTemplate.update("member.viewCount",bVO);
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
