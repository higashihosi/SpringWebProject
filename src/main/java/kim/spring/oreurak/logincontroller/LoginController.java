package kim.spring.oreurak.logincontroller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import kim.spring.oreurak.dto.OreurakDTO;
import kim.spring.oreurak.loginservice.LoginService;

@Controller
public class LoginController {

	
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);

	@Autowired
	private LoginService loginService;
	
	@RequestMapping(value = "/login",method = RequestMethod.GET)
	public String login() {
		logger.info("yayyayya");
		return "login/login";
	}
	@RequestMapping(value = "/login",method = RequestMethod.POST)
	public String login(@RequestParam("id")String id,@RequestParam("cnumber")String cnumber,HttpServletRequest request,HttpSession httpSession,OreurakDTO oreurakDTO) {
		
		httpSession = request.getSession();
		oreurakDTO.setId(id);
		oreurakDTO.setCnumber(cnumber);
		int result = loginService.login(oreurakDTO);
		logger.info("aa~~~" +result);
		if (result == 1) {
			httpSession.setAttribute("id", oreurakDTO.getId());
			httpSession.setAttribute("cnumber", oreurakDTO.getCnumber());
			return "redirect:/OreurakSelect";
		} else {
			//로그인 아이디 실패
			return "./login/LoginFailid";
		} 
		
		
			
	}
}
