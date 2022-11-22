package net.skhu.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import net.skhu.entity.Role;
import net.skhu.entity.Engineer;
import net.skhu.repository.RoleRepository;
import net.skhu.repository.EngineerRepository;

@Controller
@RequestMapping("engineer")
public class EngineerController {

    @Autowired EngineerRepository engineerRepository;
    @Autowired RoleRepository roleRepository;

    @RequestMapping("list")
    public String list(Model model) {
        List<Engineer> engineers = engineerRepository.findAll();
        model.addAttribute("engineers", engineers);
        return "engineer/list";
    }

    @GetMapping("create")
    public String create(Model model) {
    	Engineer engineer = new Engineer();
        List<Role> roles = roleRepository.findAll();
        model.addAttribute("engineer", engineer);
        model.addAttribute("roles", roles);
        return "engineer/edit";
    }

    @PostMapping("create")
    public String create(Model model, Engineer engineer) {
    	engineerRepository.save(engineer);
        return "redirect:list";
    }

    @GetMapping("edit")
    public String edit(Model model, @RequestParam("id") int id) {
    	Engineer engineer = engineerRepository.findById(id).get();
        List<Role> roles = roleRepository.findAll();
        model.addAttribute("engineer", engineer);
        model.addAttribute("roles", roles);
        return "engineer/edit";
    }

    @PostMapping("edit")
    public String edit(Model model, Engineer engineer) {
    	engineerRepository.save(engineer);
        return "redirect:list";
    }

    @RequestMapping("delete")
    public String delete(Model model, @RequestParam("id") int id) {
    	engineerRepository.deleteById(id);
        return "redirect:list";
    }
}

