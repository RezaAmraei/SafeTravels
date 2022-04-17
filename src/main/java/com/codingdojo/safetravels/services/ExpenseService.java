package com.codingdojo.safetravels.services;



import java.util.List;
import java.util.Optional;

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

public Expense updateExpense(Long id, String expenseName, String vendor, double amount, String description) {
//public Expense updateExpense(Expense expense) {
	Expense currExpense = expenseRepository.findById(id).get();
	if(currExpense != null ) {
		currExpense.setExpenseName(expenseName);
		currExpense.setVendor(vendor);
		currExpense.setAmount(amount);
		currExpense.setDescription(description);
		return expenseRepository.save(currExpense);
	}else {
		return null;
		}
	}

public Expense findExpense(Long id) {
    Optional<Expense> optionalExpense = expenseRepository.findById(id);
    if(optionalExpense.isPresent()) {
        return optionalExpense.get();
    } else {
        return null;
    }
}
}
