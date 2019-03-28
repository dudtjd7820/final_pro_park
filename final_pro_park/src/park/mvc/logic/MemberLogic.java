package park.mvc.logic;

import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import park.VO.UseRecordVO;
import park.mvc.dao.AdminDao;
import park.mvc.dao.MemberDao;

@Service
public class MemberLogic {

	
	@Autowired
	 MemberDao memberDao = null;
	
	Logger logger = Logger.getLogger(test_Logic.class);

	
	// 각자에 영역에 메서드를 코딩하시고 어떤 기능인지 무엇을 무슨역활을하는 메서드인지  어느정도의 문서작업을 하는걸로 ? 그걸통합하면 나중에 ppt때 클래스설계 메서드설계에 넣을수있지않을까요 ?
	
//	<!-- 영은 --> 
	
	public List<UseRecordVO> useList(UseRecordVO urVO) {
		logger.info("useList 호출 성공");
		List<UseRecordVO> useList = null;
		useList = memberDao.useList(urVO);
		return useList;
	}


	public List<Map<String, Object>> usemapList(UseRecordVO urVO) {
		logger.info("usemapList 호출 성공");
		List<Map<String, Object>> usemapList = null;
		usemapList = memberDao.usemapList(urVO);
		return usemapList;
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
