import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/transaction.dart';

class TransactionsList extends StatelessWidget {
  final List<Transaction> transactions;
  TransactionsList(this.transactions);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: ListView.builder(
        itemCount: transactions.length,
        itemBuilder: (context, index) {
          return Card(
            child: Row(
              children: [
                // Task Amount
                Container(
                  padding: EdgeInsets.all(8),
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.purple, width: 2),
                  ),
                  child: Text(
                    '\u{20b9} ' + transactions[index].amount.toString(),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.purple,
                    ),
                  ),
                ),
                // Task title & Date + time created
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      transactions[index].title,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      DateFormat.yMEd().format(transactions[index].dateTime),
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey[800],
                      ),
                    )
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
