import 'package:flutter/material.dart';
import 'package:expense_tracker/models/expense.dart';
import 'package:expense_tracker/expenses_list.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
        title: 'flutter-development!',
        amount: 20,
        date: DateTime.now(),
        category: Category.food),
    Expense(
        title: 'cinema',
        amount: 22,
        date: DateTime.now(),
        category: Category.travel),
    Expense(
        title: 'burger!',
        amount: 29,
        date: DateTime.now(),
        category: Category.leisure),
    Expense(
        title: 'bus-ride!',
        amount: 45,
        date: DateTime.now(),
        category: Category.work)
  ];

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      body: Column(children: [
        const Text('chart...'),
        Expanded(child: ExpensesList(expenses: _registeredExpenses)),
      ]),
    ));
  }
}
