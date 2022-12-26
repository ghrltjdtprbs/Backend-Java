package net.skhu.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import net.skhu.entity.Product;
import net.skhu.repository.CategoryRepository;
import net.skhu.repository.ProductRepository;

@Controller
@RequestMapping("exam")
public class ProductController {

    @Autowired ProductRepository productRepository;
    @Autowired CategoryRepository categoryRepository;

    @RequestMapping("list1")
    public String list1(Model model) {
        List<Product> products = productRepository.findAll();
        model.addAttribute("products", products);
        return "exam/list1";
    }
    @GetMapping("list2")
    public String list2(Model model) {
    	Product product = new Product();
        List<Product> products = productRepository.findByTitleStartsWith("");
        model.addAttribute("product", product);
        model.addAttribute("products", products);
        return "exam/list2";
    }

    @PostMapping("list2")
    public String list2(Model model, Product poduct) {
    	productRepository.save(product);
        return "redirect:list1";
    }




}

