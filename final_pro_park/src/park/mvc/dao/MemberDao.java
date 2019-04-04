package park.mvc.dao;

import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import park.VO.ReserveVO;


@Repository
public class MemberDao {

	
	Logger logger = Logger.getLogger(test_Dao.class);
	
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate = null;


	

	// 각자에 영역에 메서드를 코딩하시고 어떤 기능인지 무엇을 무슨역활을하는 메서드인지  어느정도의 문서작업을 하는걸로 ? 그걸통합하면 나중에 ppt때 클래스설계 메서드설계에 넣을수있지않을까요 ?
	
//	<!-- 영은 --> 

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
