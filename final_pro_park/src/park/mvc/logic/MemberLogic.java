package park.mvc.logic;

import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.Mergeable;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import park.VO.MemberVO;
import park.VO.UseRecordVO;
import park.mvc.dao.MemberDao;

@Service
public class MemberLogic {

	
	@Autowired
	 MemberDao memberDao = null;
	
	Logger logger = Logger.getLogger(test_Logic.class);

	
	// 각자에 영역에 메서드를 코딩하시고 어떤 기능인지 무엇을 무슨역활을하는 메서드인지  어느정도의 문서작업을 하는걸로 ? 그걸통합하면 나중에 ppt때 클래스설계 메서드설계에 넣을수있지않을까요 ?
	
//	<!-- 영은 --> 
	

	/********************************************************************************************
	 * 사용이력 테이블 불러오기 map사용
	 * @param urVO
	 * @return
	 ********************************************************************************************/
	public List<Map<String, Object>> usemapList(UseRecordVO urVO) {
		logger.info("usemapList 호출 성공");
		List<Map<String, Object>> usemapList = null;
		usemapList = memberDao.usemapList(urVO);
		return usemapList;
	}
	
//	public MemberVO memberInfo(String id) throws Exception {
//		MemberVO mvo = memberDao.memberInfo(id);
//		logger.info("memberInfo 호출 성공");
//		logger.info("mVO.getMem_id : "+mvo.getMem_id());
//		return mvo;
//	}
	
	/******************************************************************************
	 * 나의정보 불러오기 List<VO>사용
	 * @param mem_id
	 * @return
	 * @throws Exception
	 ******************************************************************************/
	public List<MemberVO> memberInfo(String id) throws Exception {
		List<MemberVO> memberList = memberDao.memberInfo(id);
		logger.info("memberInfo 호출 성공");
		logger.info("memberList.get(0).getMem_id() : "+memberList.get(0).getMem_id());
		return memberList;
	}
	
	public int mem_pwUpd(Map<String, Object> pMap) throws Exception{
		logger.info("mem_pwUpd 호출 성공");
		int result = 0;
		result = memberDao.mem_pwUpd(pMap);
		return result;
	}

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

//	<!-- 영성 -->

}
