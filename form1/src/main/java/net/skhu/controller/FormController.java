package net.skhu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import net.skhu.dto.Student;

@Controller
@RequestMapping("form")
public class FormController {

    @GetMapping("edit1")
    public String edit1(Model model) {
        model.addAttribute("student", new Student());
        return "form/edit1";
    }

    @PostMapping("edit1")
    public String edit1(Model model, Student student) {
        // TODO: DB 저장 기능을 구현해야 함.
        model.addAttribute("message", "저장했습니다.");
        return "form/edit1";
    }
}

