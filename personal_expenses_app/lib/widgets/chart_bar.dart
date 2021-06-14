import 'package:flutter/material.dart';

class ChartBar extends StatelessWidget {
  final String label;
  final int spendingAmount;
  final double spendingPctOfTotal;

  const ChartBar(
      {@required this.label,
      @required this.spendingAmount,
      @required this.spendingPctOfTotal})
      : assert(spendingPctOfTotal != null
            ? spendingPctOfTotal <= 1.0 && spendingPctOfTotal >= 0.0
            : true);

  @override
  Widget build(BuildContext context) {
    int width = 10;
    return Column(
      children: [
        FittedBox(fit: BoxFit.fitWidth, child: Text('\u{20b9}$spendingAmount')),
        SizedBox(height: 4),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Theme.of(context).primaryColor, width: 2),
            color: Colors.white,
            borderRadius: BorderRadius.circular(width / 2),
          ),
          height: 100,
          width: width.toDouble(),
          alignment: Alignment(0, 1),
          child: Container(
            height: spendingPctOfTotal * 100,
            width: double.infinity,
            color: Theme.of(context).primaryColor,
          ),
        ),
        SizedBox(height: 4),
        Text(label),
      ],
    );
  }
}
