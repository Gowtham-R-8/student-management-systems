package com.example.student.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import com.example.student.model.Student;
import com.example.student.service.StudentService;

import java.util.List;

@RestController
@RequestMapping("/api")
public class RestStudentController {

    @Autowired
    private StudentService service;

    // ✅ GET - Fetch all students
    @GetMapping("/students")
    public List<Student> getAllStudents() {
        return service.getAllStudents();
    }

    // ✅ GET - Fetch one student
    @GetMapping("/students/{id}")
    public Student getStudentById(@PathVariable int id) {
        return service.getStudentById(id);
    }

    // ✅ POST - Add new student
    @PostMapping("/students")
    public Student addStudent(@RequestBody Student student) {
        service.saveStudent(student);
        return student;
    }

   
    // ✅ DELETE - Delete student
    @DeleteMapping("/students/{id}")
    public String deleteStudent(@PathVariable int id) {
        service.deleteStudent(id);
        return "Student Deleted Successfully";
    }
    @PutMapping("/students/{id}")
    public Student updateStudent(@PathVariable int id,
                                 @RequestBody Student student) {

        return service.updateStudent(id, student);
    }
}