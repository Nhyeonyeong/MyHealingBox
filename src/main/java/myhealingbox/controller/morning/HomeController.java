package myhealingbox.controller.morning;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller("MorningHomeController")
@RequestMapping("/morning/")
public class HomeController {
	
	@RequestMapping("list")
	public String list(){
		
		return "morning.list";
	}
	
	@RequestMapping("detail")
	public String detail(){
		
		return "morning.detail";
	}
	
	@RequestMapping("edit")
	public String edit(){
		
		return "morning.edit";
	}
	
	
}