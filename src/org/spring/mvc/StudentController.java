package org.spring.mvc;

import java.util.Objects;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/student")
public class StudentController {

	@RequestMapping("/showForm")
	public String showForm(Model model) {
		Student student = new Student();
		
		model.addAttribute("student", student);
		
		return "student-form";
	}
	
	@RequestMapping("/proccessForm")
	public String proccessForm(@ModelAttribute("student") Student thestudent) {
		System.out.println("the Student: " + thestudent.getFirstName() + " " + 
										thestudent.getLastName());
		
		return "student-confirmation";
	}
}
