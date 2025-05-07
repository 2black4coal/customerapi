package com.example.customerapi.repository;

import com.example.customerapi.entity.Customer;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CustomerRepository extends JpaRepository<Customer, Integer> {
    // Spring Data JPA handles all basic CRUD automatically
}
