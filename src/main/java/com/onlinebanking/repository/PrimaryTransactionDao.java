package com.onlinebanking.repository;

import com.onlinebanking.entity.PrimaryTransaction;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.relational.core.mapping.Table;
import java.util.List;


public interface PrimaryTransactionDao extends CrudRepository<PrimaryTransaction, Long> {

    List<PrimaryTransaction> findAll();
}