package com.codingdojo.safetravels.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;


import com.codingdojo.safetravels.models.Expense;



public interface ExpenseRepository extends CrudRepository<Expense, Long> {
	List<Expense> findAll();
	
}
