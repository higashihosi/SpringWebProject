package kim.spring.oreurak.dto;

import org.springframework.stereotype.Component;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Component
@Setter
@Getter
@ToString
public class OreurakDTO {

	private String id;
	
	private String phone;
	
	private String cnumber;
	
	private String aenent;
	
	private String atrend;
	
	private String signdate;
}
