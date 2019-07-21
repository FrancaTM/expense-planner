import 'package:flutter/material.dart';

import 'package:expense_planner/models/transaction.dart';
import 'package:expense_planner/widgets/transaction_list.dart';
import 'package:expense_planner/widgets/new_transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Expense App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Transaction> _userTransactions = [
    Transaction(
      id: 't1',
      title: 'Sample',
      amount: 99.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Another sample',
      amount: 12.13,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Another sample',
      amount: 12.13,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Another sample',
      amount: 12.13,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Another sample',
      amount: 12.13,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Another sample',
      amount: 12.13,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Another sample',
      amount: 12.13,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Another sample',
      amount: 12.13,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Another sample',
      amount: 12.13,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Another sample',
      amount: 12.13,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Another sample',
      amount: 12.13,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Another sample',
      amount: 12.13,
      date: DateTime.now(),
    ),
  ];

  void _addNewTransaction(String txTitle, double txAmount) {
    final newTx = Transaction(
      title: txTitle,
      amount: txAmount,
      date: DateTime.now(),
      id: DateTime.now().toString(),
    );

    setState(() {
      _userTransactions.add(newTx);
    });
  }

  void _startAddNewTransaction(BuildContext ctx) {
    showModalBottomSheet(
      context: ctx,
      builder: (builderCtx) {
        return GestureDetector(
          onTap: () {},
          behavior: HitTestBehavior.opaque,
          child: NewTransaction(_addNewTransaction),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expense Planner'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () => _startAddNewTransaction(context),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              width: double.infinity,
              child: Card(
                child: Text('Chart'),
                color: Colors.blue,
                elevation: 5,
              ),
            ),
            TransactionList(_userTransactions),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => _startAddNewTransaction(context),
      ),
    );
  }
}
