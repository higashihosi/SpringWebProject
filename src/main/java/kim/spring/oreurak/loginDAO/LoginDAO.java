package kim.spring.oreurak.loginDAO;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kim.spring.oreurak.dto.OreurakDTO;

@Repository
public class LoginDAO {

	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	public int login(OreurakDTO oreurakDTO) {
		return sqlSessionTemplate.selectOne("login", oreurakDTO);	
	}
}
