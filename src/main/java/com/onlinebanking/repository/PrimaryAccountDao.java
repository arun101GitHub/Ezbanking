package com.onlinebanking.repository;

import com.onlinebanking.entity.PrimaryAccount;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.relational.core.mapping.Table;

public interface PrimaryAccountDao extends CrudRepository<PrimaryAccount, Long> {

    PrimaryAccount findByAccountNumber(int accountNumber);
}