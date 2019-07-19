import 'package:flutter/material.dart';

import 'package:expense_planner/widgets/user_transactions.dart';

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

class MyHomePage extends StatelessWidget {
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expense Planner'),
      ),
      body: Column(
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
          UserTransactions(),
        ],
      ),
    );
  }
}
