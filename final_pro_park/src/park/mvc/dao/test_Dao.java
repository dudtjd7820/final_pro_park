package park.mvc.dao;

import java.util.HashMap;
import java.util.Map;

import org.apache.log4j.Logger;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class test_Dao {

	Logger logger = Logger.getLogger(test_Dao.class);
	
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate = null;

	public String getname(String p_id , String p_pw) {
		
		
		logger.info("test dao 탐 넘어온값 : " + p_id +p_pw);
		
		String mem_name=null;
		Map<String, Object> pMap = new HashMap<String, Object>();
		pMap.put("mem_id", p_id);
		pMap.put("mem_pw", p_pw);
		
		sqlSessionTemplate.selectOne("proc_login", pMap);
		//프로시저의 OUT속성의 값을 파라미터 타입을 통해서 읽어올 수 있다.
		mem_name = (String)pMap.get("r_name").toString();
		
		logger.info("OUT속성에 저장된 값 :"+mem_name);
		
		return mem_name;
	}

}
