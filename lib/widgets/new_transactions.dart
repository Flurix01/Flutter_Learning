import 'package:flutter/material.dart';

class NewTransactions extends StatelessWidget {
  final Function addTx;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  NewTransactions(this.addTx);

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
              //onChanged: (val) => titleInput = val,
            ),
            TextField(
              decoration: InputDecoration(
                labelText: "amount",
              ),
              controller: amountController,
              //onChanged: (val) => amountInput = val,
            ),
            FlatButton(
              child: Text("add Transaction!"),
              textColor: Colors.purple,
              onPressed: () {
                addTx(
                    titleController.text, double.parse(amountController.text));
              },
            )
          ],
        ),
      ),
    );
  }
}
