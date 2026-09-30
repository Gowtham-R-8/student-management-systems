package com.example.student.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.example.student.model.User;
import com.example.student.service.UserService;

import jakarta.servlet.http.HttpSession;

@Controller
public class LoginController {

    @Autowired
    private UserService userService;

    // ================= LOGIN PAGE =================
    @GetMapping("/login")
    public String loginPage() {
        return "login";
    }

    // ================= LOGIN =================
    @PostMapping("/login")
    public String login(@RequestParam String username,
                        @RequestParam String password,
                        @RequestParam String role,
                        HttpSession session,
                        Model model) {

        // ✅ STAFF LOGIN
        if(role.equals("staff") && username.equals("admin") && password.equals("admin")) {
            session.setAttribute("role", "staff");
            return "redirect:/";
        }

        // ✅ STUDENT LOGIN
        if(role.equals("student")) {

            User user = userService.login(username, password);

            if(user != null && user.getRole().equals("student")) {
                session.setAttribute("role", "student");
                session.setAttribute("email", user.getEmail());
                return "redirect:/studentDashboard";
            }
        }

        // ❌ INVALID LOGIN
        model.addAttribute("error", "Invalid username or password!");
        return "login";
    }

    // ================= LOGOUT =================
    @GetMapping("/logout")
    public String logout(HttpSession session) {
        session.invalidate();
        return "redirect:/login";
    }

    // ================= REGISTER PAGE =================
    @GetMapping("/register")
    public String showRegisterForm(Model model) {
        model.addAttribute("user", new User());
        return "register";
    }

    // ================= REGISTER SAVE =================
    @PostMapping("/register")
    public String register(@RequestParam String email,
                           @RequestParam String password,
                           Model model) {

        System.out.println("REGISTER WORKING: " + email);

        // ✅ Prevent duplicate user
        if(userService.getByEmail(email) != null) {
            model.addAttribute("error", "Email already exists!");
            return "register";
        }

        // ✅ Save in USERS table only
        User user = new User();
        user.setEmail(email);
        user.setPassword(password);
        user.setRole("student");

        userService.register(user);

        return "redirect:/login";
    }
}