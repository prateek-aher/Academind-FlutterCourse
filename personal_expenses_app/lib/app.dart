import 'package:flutter/material.dart';
import 'package:personal_expenses_app/widgets/new_transaction.dart';
import 'models/transaction.dart';
import 'widgets/chart.dart';
import 'widgets/transaction_list.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  final List<Transaction> _userTransactions = [
    Transaction(
      dateTime: DateTime.now(),
      id: 't1',
      title: 'New shoes',
      amount: 699999,
    ),
    Transaction(
      amount: 16,
      dateTime: DateTime.now(),
      id: 't1',
      title: 'Weekly Groceries',
    ),
  ];
  List<Transaction> get _recentTransactions => _userTransactions
      .where((element) =>
          element.dateTime.isAfter(DateTime.now().subtract(Duration(days: 7))))
      .toList();

  void _addNewTransaction(String title, int amount) {
    final Transaction newtx = Transaction(
      dateTime: DateTime.now(),
      id: DateTime.now().toString(),
      title: title,
      amount: amount,
    );
    setState(() {
      _userTransactions.add(newtx);
    });
  }

  void _startAddNewTransaction(BuildContext context) {
    showModalBottomSheet(
        elevation: 15,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(15), topLeft: Radius.circular(15))),
        context: context,
        builder: (_) => NewTransaction(_addNewTransaction));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        title: const Text('Expense Planner'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () => _startAddNewTransaction(context),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            // chart
            Chart(_recentTransactions),
            TransactionsList(_userTransactions),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _startAddNewTransaction(context),
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
