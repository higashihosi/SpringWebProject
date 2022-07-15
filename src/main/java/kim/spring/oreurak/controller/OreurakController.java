package kim.spring.oreurak.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kim.spring.oreurak.dto.OreurakDTO;
import kim.spring.oreurak.service.OreurakService;

@Controller
public class OreurakController {

	private static final Logger logger = LoggerFactory.getLogger(OreurakController.class);

	@Autowired
	private OreurakService oreurakService;
	
	@RequestMapping(value = "/OreurakSelect", method = RequestMethod.GET)
	public String list(Model model) {
		
		model.addAttribute("list",oreurakService.OreurakSelectAll());
		logger.info("list", model);
		return "./oreurak/oreurak_select_all_view";
	}
	@RequestMapping(value = "/OreurakSelectDetail", method = RequestMethod.GET)
	public String oreurakdetail(Model model,OreurakDTO oreurakDTO) {
		
		model.addAttribute("oreurakDTO",oreurakService.OreurakSelect(oreurakDTO.getId()));
		return "./oreurak/oreurak_select_detail_view";
	}
	@RequestMapping(value = "/OreurakInsert",method = RequestMethod.GET)
	public String oreurakinsert() {
		return "./oreurak/oreurak_insert";
	}
	@RequestMapping(value = "/OreurakInsert",method = RequestMethod.POST)
	public String oreurakinsert(Model model,OreurakDTO oreurakDTO) {
		model.addAttribute("list", oreurakService.OreurakSelectAll());
		oreurakService.OreurakInsert(oreurakDTO);
		return "./oreurak/oreurak_insert_view";
	}
	@RequestMapping(value = "OreurakUpdate",method =  RequestMethod.GET)
	public String oreurakupdate(Model model,OreurakDTO oreurakDTO) {
		model.addAttribute("oreurakDTO", oreurakService.OreurakSelect(oreurakDTO.getId()));
		return "./oreurak/oreurak_update";
	}
	@RequestMapping(value = "OreurakUpdate",method = RequestMethod.POST)
	public String oreurakupdate(OreurakDTO oreurakDTO) {
		System.out.println(oreurakDTO);
		oreurakService.OreurakUpdate(oreurakDTO);
		return "./oreurak/oreurak_update_view";
	}
	@RequestMapping(value = "OreurakDelete",method = RequestMethod.GET)
	public String oreurakdelete() {
		return "./oreurak/oreurak_delete";
	}
	@RequestMapping(value = "OreurakDelete",method = RequestMethod.POST)
	public String oreurakdelete(OreurakDTO oreurakDTO) {
		oreurakService.OreurakDelete(oreurakDTO.getId());
		return "./oreurak/oreurak_delete_view";
	}
	@RequestMapping(value = "OureurakBoardSelect")
	public String oureurakboardselect() {
		return "./oreurak_board/oreurak_board_select";
		
	}
}
