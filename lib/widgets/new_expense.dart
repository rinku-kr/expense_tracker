import 'package:flutter/material.dart';

class NewExpense extends StatefulWidget {
  const NewExpense({super.key});

  @override
  State<NewExpense> createState() {
    return _NewExpenseState();
  }
}

var _enteredTitle = '';
void _saveInputfield(String inputValue) {
  _enteredTitle = inputValue;
}

class _NewExpenseState extends State<NewExpense> {
  @override
  Widget build(BuildContext cont) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(children: [
        const TextField(
          maxLength: 50,
          onChanged: _saveInputfield,
          decoration: InputDecoration(
            label: Text('title'),
          ),
        ),
        Row(
          children: [
            ElevatedButton(onPressed: () {}, child: const Text("save expense"))
          ],
        )
      ]),
    );
  }
}
