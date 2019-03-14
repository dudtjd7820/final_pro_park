package park.mvc.logic;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import park.mvc.dao.test_Dao;;

@Service
public class test_Logic {
	
	Logger logger = Logger.getLogger(test_Logic.class);
	
	@Autowired
	 test_Dao test_Dao = null;

	public String getname(String p_id , String p_pw) {
		
		logger.info("test logic 탐 넘어온값 : " + p_id +p_pw);
		
		String dname=" ";
		dname= test_Dao.getname( p_id ,  p_pw);
		
		return dname;
	}

}
