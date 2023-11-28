import 'package:flutter/material.dart';

class NewExpense extends StatefulWidget {
  const NewExpense({super.key});

  @override
  State<NewExpense> createState() {
    return _NewExpenseState();
  }
}

class _NewExpenseState extends State<NewExpense> {
  final _titleController = TextEditingController();
  final _amountController = TextEditingController();

  @override
  void dispose() {
    _titleController.dispose();
    _amountController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext cont) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(children: [
        TextField(
          controller: _titleController,
          maxLength: 50,
          decoration: const InputDecoration(
            label: Text('title'),
          ),
        ),
        TextField(
          controller: _amountController,
          keyboardType: TextInputType.phone,
          decoration: const InputDecoration(
            label: Text('amount'),
            prefixText: '\₹',
          ),
        ),
        Row(
          children: [
            ElevatedButton(
                onPressed: (() {
                  print(_titleController.text);
                  print(_amountController.text);
                }),
                child: const Text("Save Expense")),
            const SizedBox(
              width: 10,
            ),
            TextButton(onPressed: () {}, child: const Text("Cancel")),
          ],
        )
      ]),
    );
  }
}
