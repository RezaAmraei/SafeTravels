package com.codingdojo.safetravels.services;

import java.util.List;

import org.springframework.stereotype.Service;

import com.codingdojo.safetravels.models.Expense;
import com.codingdojo.safetravels.repositories.ExpenseRepository;

@Service
public class ExpenseService {
private final ExpenseRepository expenseRepository;

public ExpenseService(ExpenseRepository expenseRepository) {
	this.expenseRepository = expenseRepository;
}

public List<Expense> allExpenses(){
	return expenseRepository.findAll();
}

public Expense createExpense(Expense expense) {
	return expenseRepository.save(expense);
}

}
