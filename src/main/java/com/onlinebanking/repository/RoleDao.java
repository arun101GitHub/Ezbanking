package com.onlinebanking.repository;

import com.onlinebanking.security.Role;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.relational.core.mapping.Table;

public interface RoleDao extends CrudRepository<Role, Integer> {

    Role findByName(String name);
}