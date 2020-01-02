package kimhyunki.bookstore;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class Main {
	//페이즈의 커밋!
	@RequestMapping("/")
	public String main(){
		return "main";
	}
	
	
}
