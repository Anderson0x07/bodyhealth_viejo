package com.bodyhealth.controller;


import com.bodyhealth.model.Administrador;
import com.bodyhealth.model.Cliente;
import com.bodyhealth.service.AdminService;
import com.bodyhealth.service.ClienteService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.List;

@Controller
@Slf4j
public class AdminController {

    @Autowired
    private AdminService adminService;

    @GetMapping("/admin/dashboard")
    public String inicio(@AuthenticationPrincipal User user, Model model){

        log.info("dashboard");
        model.addAttribute("admin",user);

        return "/admin/dashboard";
    }

}
