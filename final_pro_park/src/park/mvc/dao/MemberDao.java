package park.mvc.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import park.VO.UseRecordVO;


@Repository
public class MemberDao {

	
	Logger logger = Logger.getLogger(test_Dao.class);
	
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate = null;


	

	// 각자에 영역에 메서드를 코딩하시고 어떤 기능인지 무엇을 무슨역활을하는 메서드인지  어느정도의 문서작업을 하는걸로 ? 그걸통합하면 나중에 ppt때 클래스설계 메서드설계에 넣을수있지않을까요 ?
	
//	<!-- 영은 --> 
	
	public List<UseRecordVO> useList(UseRecordVO urVO) {
		logger.info("useList 호출 성공");
		//NullPointerException의 대상이 되는 클래스 이므로 인스턴스화를 완성함.
		//주의사항 : myBatis에서 자동으로 Map담아주는데 이 때 키값은 대문자가 디폴트값.
		List<UseRecordVO> useList = new ArrayList<UseRecordVO>();
		try {
			useList = sqlSessionTemplate.selectList("useList", urVO);
			logger.info("size:"+useList.size());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return useList;
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
