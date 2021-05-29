package com.onlinebanking.repository;

import com.onlinebanking.entity.SavingsAccount;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.relational.core.mapping.Table;

public interface SavingsAccountDao extends CrudRepository<SavingsAccount, Long> {

    SavingsAccount findByAccountNumber(int accountNumber);
}