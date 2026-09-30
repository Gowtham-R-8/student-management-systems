package com.example.student.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.example.student.model.Student;
import com.example.student.service.StudentService;

import jakarta.servlet.http.HttpSession;

@Controller
public class StudentController {

    @Autowired
    private StudentService service;

    // ===============================
    // ✅ STAFF DASHBOARD
    // ===============================
    @GetMapping("/")
    public String staffDashboard(Model model, HttpSession session) {

        if(!"staff".equals(session.getAttribute("role"))) {
            return "redirect:/login";
        }

        model.addAttribute("listStudents", service.getAllStudents());

        return "index";
    }

    // ===============================
    // ✅ STUDENT DASHBOARD (VIEW ONLY)
    // ===============================
    @GetMapping("/studentDashboard")
    public String studentDashboard(Model model, HttpSession session) {

        if(!"student".equals(session.getAttribute("role"))) {
            return "redirect:/login";
        }

        String email = (String) session.getAttribute("email");

        Student student = service.getStudentByEmail(email);

        model.addAttribute("student", student);

        return "student_view";
    }

    // ===============================
    // ✅ VIEW STUDENTS PAGE
    // ===============================
    @GetMapping("/viewStudents")
    public String viewStudents(Model model, HttpSession session) {

        if(session.getAttribute("role") == null) {
            return "redirect:/login";
        }

        model.addAttribute("listStudents", service.getAllStudents());

        return "view_students";
    }

    // ===============================
    // ✅ SHOW ADD STUDENT FORM
    // ===============================
    @GetMapping("/showNewStudentForm")
    public String showNewStudentForm(Model model, HttpSession session) {

        if(!"staff".equals(session.getAttribute("role"))) {
            return "redirect:/login";
        }

        model.addAttribute("student", new Student());

        return "add_student";
    }

    // ===============================
    // ✅ SAVE STUDENT (ADD + UPDATE)
    // ===============================
    @PostMapping("/saveStudent")
    public String saveStudent(@ModelAttribute("student") Student student,
                             HttpSession session) {

        if(!"staff".equals(session.getAttribute("role"))) {
            return "redirect:/login";
        }

        service.saveStudent(student);

        return "redirect:/";
    }

    // ===============================
    // ✅ EDIT STUDENT
    // ===============================
    @GetMapping("/showFormForUpdate/{id}")
    public String showFormForUpdate(@PathVariable int id,
                                   Model model,
                                   HttpSession session) {

        if(!"staff".equals(session.getAttribute("role"))) {
            return "redirect:/login";
        }

        Student student = service.getStudentById(id);

        model.addAttribute("student", student);

        return "update_student";
    }

    // ===============================
    // ✅ DELETE STUDENT
    // ===============================
    @GetMapping("/deleteStudent/{id}")
    public String deleteStudent(@PathVariable int id,
                               HttpSession session) {

        if(!"staff".equals(session.getAttribute("role"))) {
            return "redirect:/login";
        }

        service.deleteStudent(id);

        return "redirect:/";
    }
}