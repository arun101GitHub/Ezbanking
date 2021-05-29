package com.onlinebanking.repository;

import com.onlinebanking.entity.Appointment;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.relational.core.mapping.Table;

import java.util.List;

public interface AppointmentDao extends CrudRepository<Appointment, Long> {

    List<Appointment> findAll();
}