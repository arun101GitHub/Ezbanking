package com.onlinebanking.repository;

import com.onlinebanking.entity.Recipient;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.relational.core.mapping.Table;
import java.util.List;


public interface RecipientDao extends CrudRepository<Recipient, Long> {

    List<Recipient> findAll();

    Recipient findByName(String recipientName);

    void deleteByName(String recipientName);
}