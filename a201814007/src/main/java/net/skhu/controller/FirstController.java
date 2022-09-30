package net.skhu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller

public class FirstController {

    @RequestMapping("exam1")
    public String test1(Model model) {
        model.addAttribute("studentNo","201814007" );
        model.addAttribute("name", "최혜미");
        model.addAttribute("semester", 7);
        return "exam1";
    }


    }


