import 'package:flutter/material.dart';

class NewTransactions extends StatelessWidget {
  final Function addTx;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  NewTransactions(this.addTx);

  void subbmitData() {
    final enteredTitle = titleController.text;
    final enteredAmount = double.parse(amountController.text);

    if (enteredTitle.isEmpty || enteredAmount <= 0) {
      return;
    }

    addTx(titleController.text, double.parse(amountController.text));
  }

  @override
  Widget build(BuildContext contzext) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                labelText: "title",
              ),
              controller: titleController,
              onSubmitted: (_) => subbmitData(),
              //onChanged: (val) => titleInput = val,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "amount",
              ),
              controller: amountController,
              onSubmitted: (_) => subbmitData(),
              //onChanged: (val) => amountInput = val,
            ),
            FlatButton(
              child: Text("add Transaction!"),
              textColor: Colors.purple,
              onPressed: subbmitData,
            )
          ],
        ),
      ),
    );
  }
}
