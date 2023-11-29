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

  void _presentDatePicker() {
    final now = DateTime.now();
    final firstDate = DateTime(now.year - 1, now.month, now.day);

    showDatePicker(
        context: context,
        initialDate: now,
        firstDate: firstDate,
        lastDate: now);
  }

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
        Row(
          children: [
            Expanded(
              child: TextField(
                controller: _amountController,
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(
                  label: Text('amount'),
                  prefixText: '\₹',
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: _presentDatePicker,
                    icon: const Icon(Icons.calendar_month)),
                const Text('Select Date')
              ],
            ))
          ],
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
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("Cancel")),
          ],
        )
      ]),
    );
  }
}
