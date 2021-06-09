import 'package:flutter/material.dart';
import 'package:personal_expenses_app/models/transaction.dart';

class NewTransaction extends StatefulWidget {
  Function addNewTransaction;
  NewTransaction(this.addNewTransaction);

  @override
  _NewTransactionState createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {
  final TextEditingController titleController = TextEditingController();

  final TextEditingController amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12),
          topRight: Radius.circular(12),
        )),
        elevation: 15,
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TextField(
                controller: titleController,
                decoration: InputDecoration(
                  labelText: 'Title',
                ),
                textInputAction: TextInputAction.next,
              ),
              TextField(
                controller: amountController,
                decoration: InputDecoration(
                  labelText: 'Amount',
                ),
                keyboardType: TextInputType.numberWithOptions(
                    decimal: false, signed: false),
                textInputAction: TextInputAction.done,
              ),
              TextButton(
                child: Text(
                  'Add transaction',
                  style: TextStyle(color: Colors.purple),
                ),
                onPressed: () {
                  widget.addNewTransaction(
                    titleController.text,
                    int.parse(amountController.text),
                  );
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ));
  }
}
