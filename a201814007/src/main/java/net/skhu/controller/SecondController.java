package net.skhu.controller;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import net.skhu.dto.Student;

@Controller

public class SecondController {

	@RequestMapping("exam2")
	public String test1(Model model) {
		Student student=new Student("201814007","최혜미",7);
		model.addAttribute("student",student);
		return "exam1";
	}



}
