package park.mvc.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import park.VO.MemberVO;
import park.VO.UseRecordVO;


@Repository
public class MemberDao {

	
	Logger logger = Logger.getLogger(MemberDao.class);
	
	
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
