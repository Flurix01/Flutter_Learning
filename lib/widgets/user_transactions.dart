import 'package:flutter/material.dart';

import 'new_transactions.dart';
import 'transaction_list.dart';
import "../models/transaction.dart";

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _userTransactions = [
    Transaction(
      id: "t1",
      title: "shoes",
      amount: 69.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: "t2",
      title: "Kaffee",
      amount: 4.99,
      date: DateTime.now(),
    )
  ];

  void _addNewTransactions(String txTitle, double txAmount) {
    final newTx = Transaction(
        id: DateTime.now().toString(),
        title: txTitle,
        amount: txAmount,
        date: DateTime.now());
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransactions(),
        TransactionList(_userTransactions),
      ],
    );
  }
}