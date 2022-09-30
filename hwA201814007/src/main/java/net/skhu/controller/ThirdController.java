package net.skhu.controller;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import net.skhu.dto.Student;

@Controller
@RequestMapping("third")
public class ThirdController {

	@RequestMapping("test1")
	public String test1(Model model) {
		Student student=new Student(1,"201814007","최혜미","ghrltjdtprbs@gmail.com");
		model.addAttribute("student",student);
		return "third/test1";
	}


    @RequestMapping(value="test3", method=RequestMethod.GET)
    public String test3(Model model) {
        model.addAttribute("student",new Student());
        return "third/test3";
    }

    @RequestMapping(value="test3", method=RequestMethod.POST)
    public String test3(Model model, Student student) {
        // TODO: 저장하는 코드를 구현해야 함.
        model.addAttribute("message", "저장되었습니다");
        return "third/test3";
    }

}
