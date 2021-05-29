package com.onlinebanking.repository;

import com.onlinebanking.entity.User;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.relational.core.mapping.Table;
import java.util.List;


public interface UserDao extends CrudRepository<User, Long> {

    User findByUsername(String username);

    User findByEmail(String email);

    List<User> findAll();
}