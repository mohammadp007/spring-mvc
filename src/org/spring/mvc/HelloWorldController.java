package org.spring.mvc;


import org.apache.catalina.servlet4preview.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/form")
public class HelloWorldController {
	
	

	//creating method for form handling
	@RequestMapping("/showForm")
	public String showForm() {
		return "helloworld-form";
	}

	@RequestMapping("/proccessForm")
	public String proccessForm() {
		return "helloworld-proccess";
	}
	
	@RequestMapping("/proccessFormV2")
	public String letsShout(HttpServletRequest request, Model model) {
		String theName = request.getParameter("studentName");
		
		theName = theName.toUpperCase();
		
		String result = "Yo! " + theName;
		
		model.addAttribute("message", result);
		
		return "helloworld-proccess";
	}
	
	@RequestMapping("/proccessFormV3")
	public String letsShout2(
			@RequestParam("studentName") String theName, Model model) {
		
		theName = theName.toUpperCase();
		
		String result = "Yo! " + theName;
		
		//adding the result to the model as message
		model.addAttribute("message", result);
		
		return "helloworld-proccess";
	}
}
