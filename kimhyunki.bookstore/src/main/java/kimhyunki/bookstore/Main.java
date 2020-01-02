package kimhyunki.bookstore;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
public class Main {

	@RequestMapping("/")
	public String main(){
		return "main";
	}
	
	
}
