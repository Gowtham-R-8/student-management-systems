package com.example.student.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.student.model.User;
import com.example.student.repository.UserRepository;

@Service
public class UserService {

    @Autowired
    private UserRepository repo;

    // 🔥 REGISTER (IMPORTANT)
    public void register(User user) {
        repo.save(user);   // THIS MUST EXIST
    }

    // LOGIN
    public User login(String email, String password) {
        return repo.findByEmailAndPassword(email, password);
    }

    // CHECK DUPLICATE
    public User getByEmail(String email) {
        return repo.findByEmail(email);
    }
}