package com.example.student.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.example.student.model.Student;

public interface StudentRepository extends JpaRepository<Student, Integer> {

    // for login
    Student findByEmailAndPassword(String email, String password);

    // 🔥 ADD THIS (for student dashboard)
    Student findByEmail(String email);
}