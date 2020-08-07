package com.example.backend;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.repository.CrudRepository;

public interface ToyRepository extends CrudRepository<Toy,Integer> {
    Page<Toy> findAll(Pageable pageable);
}
