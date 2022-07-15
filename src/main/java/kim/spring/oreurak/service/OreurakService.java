package kim.spring.oreurak.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.stereotype.Service;

import kim.spring.oreurak.dao.OreurakDAO;
import kim.spring.oreurak.dto.OreurakDTO;

@Service
public class OreurakService {

	@Autowired
	private OreurakDAO oreurakDAO;
	
	public List<OreurakDTO> OreurakSelectAll(){
		return oreurakDAO.OreurakSelectAll();
	}
	public OreurakDTO OreurakSelect(String id) {
		return oreurakDAO.OreurakSelect(id);	
	}
	public void OreurakInsert(OreurakDTO oreurakDTO) {
		try {
			oreurakDAO.OreurakInsert(oreurakDTO);
		} catch (DataIntegrityViolationException e) {
			e.printStackTrace();
		}
	}
	public void OreurakUpdate(OreurakDTO oreurakDTO) {
		oreurakDAO.OreurakUpdate(oreurakDTO);
	}
	public void OreurakDelete(String id) {
		oreurakDAO.OreurakDelete(id);
	}
}
