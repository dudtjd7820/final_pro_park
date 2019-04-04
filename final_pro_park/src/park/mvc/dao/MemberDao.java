package park.mvc.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import park.VO.BoardVO;
import park.VO.MemberVO;
import park.VO.ReserveVO;
import park.VO.UseRecordVO;


@Repository
public class MemberDao {

	
	Logger logger = Logger.getLogger(test_Dao.class);
	
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate = null;


	

	// 각자에 영역에 메서드를 코딩하시고 어떤 기능인지 무엇을 무슨역활을하는 메서드인지  어느정도의 문서작업을 하는걸로 ? 그걸통합하면 나중에 ppt때 클래스설계 메서드설계에 넣을수있지않을까요 ?
	
//	<!-- 영은 --> 
	
	
	/********************************************************************************************
	 * 사용이력 테이블 불러오기 map사용
	 * @param urVO
	 * @return
	 ********************************************************************************************/
	public List<Map<String, Object>> usemapList(UseRecordVO urVO) {
		logger.info("usemapList 호출 성공");
		//NullPointerException의 대상이 되는 클래스 이므로 인스턴스화를 완성함.
		//주의사항 : myBatis에서 자동으로 Map담아주는데 이 때 키값은 대문자가 디폴트값.
		List<Map<String, Object>> usemapList = new ArrayList<Map<String, Object>>();
		try {
			usemapList = sqlSessionTemplate.selectList("usemapList", urVO);
			logger.info("size:"+usemapList.size());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return usemapList;
	}
	
	
//	//VO리턴타입
//	public MemberVO memberInfo2(String mem_id) throws Exception{
//		return sqlSessionTemplate.selectOne("member.memberInfo1",mem_id);
//	}
	
	/******************************************************************************
	 * 나의정보 불러오기 List<VO>사용
	 * @param mem_id
	 * @return
	 * @throws Exception
	 ******************************************************************************/
	public List<MemberVO> memberInfo(String mem_id) throws Exception{
		return sqlSessionTemplate.selectList("member.memberInfo",mem_id);
	}
	
	//현재 비밀번호 불러오기
	public String getPw(String mem_id) throws Exception{
		return sqlSessionTemplate.selectOne("member.getPw", mem_id);
	}

	//비밀번호 변경하기
	public int mem_pwUpd(Map<String, Object> pMap) throws Exception{
		return sqlSessionTemplate.update("member.mem_pwUpd", pMap);
	}
	
//	<!-- 영은 -->
//
//
//
//	<!-- 슬기 -->
///////////////////////////////공지 게시판 시작///////////////////////////////////////////////
//공지사항 글 jsonSelect
public List<BoardVO> jsonNoticeSel(BoardVO bVO) {
logger.info("jsonNoticeSel 호출 성공");
//NullPointerException의 대상이 되는 클래스 이므로 인스턴스화를 완성함.
//주의사항 : myBatis에서 자동으로 Map담아주는데 이 때 키값은 대문자가 디폴트값.
List<BoardVO> jsonNoticeSel = 
new ArrayList<BoardVO>();
try {
jsonNoticeSel = sqlSessionTemplate.selectList("member.jsonNoticeSel", bVO);
logger.info("size:"+jsonNoticeSel.size());
} catch (Exception e) {
e.printStackTrace();
}
return jsonNoticeSel;
}
//공지사항 글 Insert
public void noticeIns(BoardVO bVO) {
logger.info("(MemberDao) noticeIns 호출 성공");
sqlSessionTemplate.insert("member.noticeIns", bVO);
}

//공지사항 글 Delete
public void noticeDel(BoardVO bVO) {
logger.info("(MemberDao) noticeDel 호출 성공");
sqlSessionTemplate.delete("member.noticeDel1", bVO);
sqlSessionTemplate.delete("member.noticeDel2", bVO);
}
///////////////////////////////공지 게시판 끝///////////////////////////////////////////////
///////////////////////////////질문 게시판 시작///////////////////////////////////////////////
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

//질문 글 Delete
public void questionDel(BoardVO bVO) {
logger.info("(MemberDao) questionDel 호출 성공");
sqlSessionTemplate.delete("member.questionDel1", bVO);
sqlSessionTemplate.delete("member.questionDel2", bVO);
}
///////////////////////////////질문 게시판 끝///////////////////////////////////////////////
///////////////////////////////자유 게시판 시작///////////////////////////////////////////////	
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
//자유게시판 글 Insert
public void freeIns(BoardVO bVO) {
logger.info("(MemberDao) freeIns 호출 성공");
sqlSessionTemplate.insert("member.freeIns", bVO);
}
//자유게시판 글 Delete
public void freeDel(BoardVO bVO) {
logger.info("(MemberDao) freeDel 호출 성공");
sqlSessionTemplate.delete("member.freeDel", bVO);
}
///////////////////////////////자유 게시판 끝///////////////////////////////////////////////	
///////////////////////////////게시판 공통 부분 시작///////////////////////////////////////////////	
//게시판 글 읽기
public BoardVO boardRead(int base_post_number) {
return sqlSessionTemplate.selectOne("member.boardRead",base_post_number);
}
//게시판 글 조회수 증가
public void boardViewCount(BoardVO bVO) {
logger.info("조회수 증가해라" + bVO.getBase_post_number() + bVO.getBase_view_count());
sqlSessionTemplate.update("member.boardViewCount",bVO);
}
//게시판 글 Update
public void boardUpd(BoardVO bVO) {
logger.info("(MemberDao) boardUpd 호출 성공");
sqlSessionTemplate.update("member.boardUpd", bVO);
}	
///////////////////////////////게시판 공통 부분 끝///////////////////////////////////////////////	
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
	

	public List<ReserveVO> getreserve(String id) {
		
		try {
			
			List<ReserveVO> reservList_ing = sqlSessionTemplate.selectList("member.getreserv_ing",id);
		
			return reservList_ing;
			
		} catch (Exception e) {
			
			List<ReserveVO> reservList_ing =null;
			
		return reservList_ing;
		}
	
	}




	public void  upd_del_reserv(Map<String, String> pMap) {
		
		if (pMap.get("crud").equals("del")) {
			sqlSessionTemplate.delete("member.delreserv", pMap);
		}
		
		else if (pMap.get("crud").equals("upd")) {
			sqlSessionTemplate.update("member.updreserv", pMap);
		}
	}
	
//	<!-- 영성 -->

}
