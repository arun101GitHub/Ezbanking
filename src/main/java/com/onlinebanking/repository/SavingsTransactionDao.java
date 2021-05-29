package com.onlinebanking.repository;

import com.onlinebanking.entity.SavingsTransaction;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.relational.core.mapping.Table;
import java.util.List;

public interface SavingsTransactionDao extends CrudRepository<SavingsTransaction, Long> {

    List<SavingsTransaction> findAll();
}