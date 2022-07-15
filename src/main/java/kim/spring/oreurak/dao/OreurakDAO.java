package kim.spring.oreurak.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import kim.spring.oreurak.dto.OreurakDTO;

@Repository

@EnableAspectJAutoProxy(proxyTargetClass = true)
public class OreurakDAO {

	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	public List<OreurakDTO> OreurakSelectAll(){
		return sqlSessionTemplate.selectList("OreurakSelectAll");
	}
	public OreurakDTO OreurakSelect(String id) {
		return sqlSessionTemplate.selectOne("OreurakSelect",id);
	}
	
	@Transactional
	
	public void OreurakInsert(OreurakDTO oreurakDTO) {
		sqlSessionTemplate.insert("OreurakInsert", oreurakDTO);
	}
	public void  OreurakUpdate(OreurakDTO oreurakDTO) {
		sqlSessionTemplate.update("OreurakUpdate", oreurakDTO);
	}
	public void  OreurakDelete(String id){
		sqlSessionTemplate.delete("OreurakDelete", id);
	}
}
