import 'package:flutter/material.dart';
import 'package:expense_tracker/widgets/expenses.dart';

void main() {
  return runApp(MaterialApp(
    theme: ThemeData(
            scaffoldBackgroundColor: const Color.fromARGB(255, 237, 221, 172))
        .copyWith(useMaterial3: true),
    home: const Expenses(),
  ));
}
