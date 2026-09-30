package com.example.student.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.student.model.Student;
import com.example.student.repository.StudentRepository;

@Service
public class StudentService {

    @Autowired
    private StudentRepository repo;

    // GET ALL
    public List<Student> getAllStudents() {
        return repo.findAll();
    }

    // SAVE
    public void saveStudent(Student student) {
        repo.save(student);
    }

    // GET BY ID
    public Student getStudentById(int id) {
        return repo.findById(id).orElse(null);
    }

    // DELETE
    public void deleteStudent(int id) {
        repo.deleteById(id);
    }

    // UPDATE
    public Student updateStudent(int id, Student updatedStudent) {

        Student existing = repo.findById(id).orElse(null);

        if (existing == null) {
            return null;
        }

        existing.setName(updatedStudent.getName());
        existing.setEmail(updatedStudent.getEmail());
        existing.setCourse(updatedStudent.getCourse());

        return repo.save(existing);
    }

    // ✅ ADD THIS (CRITICAL)
    public Student getStudentByEmail(String email) {
        return repo.findByEmail(email);
    }
}