package com.codingdojo.safetravels.controllers;



import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.codingdojo.safetravels.models.Expense;
import com.codingdojo.safetravels.services.ExpenseService;


@Controller
public class ExpenseContoller{
	@Autowired 
	ExpenseService expenseService;
	
	
	@RequestMapping("/")
	public String index(@ModelAttribute("addExpense")Expense expense, Model model) {
		List<Expense> allExpenses = expenseService.allExpenses();
		model.addAttribute("allExpenses", allExpenses);
		return "index.jsp";
	}
	@PostMapping("/add/expense")
	public String addExpense(@Valid @ModelAttribute("addExpense") Expense expense, BindingResult result) {
		if(result.hasErrors()) {
			return "index.jsp";
		} else {
			expenseService.createExpense(expense);
			return "redirect:/";
		}
	}
	@RequestMapping("/edit/{id}")
	public String edit(@ModelAttribute("editExpense")Expense expense, Model model, @PathVariable("id") Long id) {
		Expense currExpense = expenseService.findExpense(id);

		model.addAttribute("currExpense", currExpense);
		return "edit.jsp";
	}
	@PostMapping("/editting/{id}")
	public String editting(@Valid @ModelAttribute("editExpense") Expense expense, BindingResult result,@PathVariable("id")Long id) {

		if(result.hasErrors()) {
			return "edit.jsp";
		} else {
			
			expenseService.updateExpense(id, expense.getExpenseName(), expense.getVendor(), expense.getAmount(), expense.getDescription());
			return "redirect:/";
		}
	}
}
