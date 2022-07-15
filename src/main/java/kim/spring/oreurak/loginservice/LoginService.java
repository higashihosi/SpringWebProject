package kim.spring.oreurak.loginservice;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kim.spring.oreurak.dto.OreurakDTO;
import kim.spring.oreurak.loginDAO.LoginDAO;

@Service
public class LoginService {

	@Autowired
	private LoginDAO loginDAO;
	
	public int login(OreurakDTO oreurakDTO) {
		return loginDAO.login(oreurakDTO);
	}
}
