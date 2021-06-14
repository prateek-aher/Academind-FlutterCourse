import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:personal_expenses_app/models/transaction.dart';
import 'package:intl/intl.dart';
import 'package:personal_expenses_app/widgets/chart_bar.dart';

class Chart extends StatelessWidget {
  final List<Transaction> recentTransactions;
  Chart(this.recentTransactions);
  List<Map<String, dynamic>> get groupedTransactionValues =>
      List.generate(7, (index) {
        final weekDay = DateTime.now().subtract(Duration(days: index));
        int totalSum = 0;
        for (var i in recentTransactions) {
          if (i.dateTime.day == weekDay.day &&
              i.dateTime.month == weekDay.month &&
              i.dateTime.year == weekDay.year) {
            totalSum += i.amount;
          }
        }
        return {
          'day': DateFormat.E().format(weekDay),
          'amount': totalSum,
        };
      });
  int get totalSpending => groupedTransactionValues.fold(
      0, (sum, element) => sum + element['amount']);

  @override
  Widget build(BuildContext context) {
    print(groupedTransactionValues);
    return Card(
      elevation: 6.0,
      shadowColor: Colors.purple,
      margin: EdgeInsets.all(20),
      color: Colors.white,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: groupedTransactionValues
              .map((e) => Flexible(
                    fit: FlexFit.tight,
                    child: ChartBar(
                      label: e['day'],
                      spendingAmount: e['amount'],
                      spendingPctOfTotal:
                          totalSpending == 0 ? 0 : e['amount'] / totalSpending,
                    ),
                  ))
              .toList(),
        ),
      ),
    );
  }
}
