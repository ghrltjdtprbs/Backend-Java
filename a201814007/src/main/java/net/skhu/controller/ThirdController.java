package net.skhu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import net.skhu.dto.Student;

@Controller
public class ThirdController {

    @RequestMapping(value="exam3", method=RequestMethod.GET)
    public String test1(Model model) {
        model.addAttribute("student", new Student());
        return "exam3";
    }

    @RequestMapping(value="exam3", method=RequestMethod.POST)
    public String test1(Model model, Student student) {
        // TODO: 저장하는 코드를 구현해야 함.
        model.addAttribute("message", "저장되었습니다");
        return "exam3";
    }



}

