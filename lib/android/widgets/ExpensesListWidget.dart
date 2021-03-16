import 'package:flutter/material.dart';

import '../../models/transaction.dart';

class ExpensesListWidget extends StatelessWidget {
  final double bodySize;

  final List<Transaction> transactions = [
    Transaction(id: 1, amount: 20, date: new DateTime(2020), title: 'One'),
    Transaction(id: 2, amount: 22.5, date: new DateTime(2020), title: 'Two'),
    Transaction(id: 3, amount: 14.7, date: new DateTime(2020), title: 'Three'),
    Transaction(id: 4, amount: 8.99, date: new DateTime(2020), title: 'Four'),
    Transaction(id: 4, amount: 8.99, date: new DateTime(2020), title: 'Four'),
    Transaction(id: 4, amount: 8.99, date: new DateTime(2020), title: 'Four'),
    Transaction(id: 4, amount: 8.99, date: new DateTime(2020), title: 'Four'),
    Transaction(id: 4, amount: 8.99, date: new DateTime(2020), title: 'Four'),
    Transaction(id: 4, amount: 8.99, date: new DateTime(2020), title: 'Four'),
  ];

  ExpensesListWidget(this.bodySize);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: bodySize * 0.8,
      child: ListView.builder(
        itemBuilder: (ctx, index) {
          return GestureDetector(
            child: Card(
              margin: EdgeInsets.all(10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
              elevation: 4,
              child: Row(
                children: <Widget>[
                  Container(
                    width: 100,
                    height: 60,
                    decoration: BoxDecoration(
                        color: Colors.blue[900],
                        borderRadius: BorderRadius.only(
                            topLeft: const Radius.circular(15),
                            bottomLeft: const Radius.circular(15))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '\$ 59.99',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.all(8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Novos Sapatos',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '12/10/2020',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontSize: 14, color: Colors.grey),
                          ),
                        ],
                      ))
                ],
              ),
            ),
          );
        },
        itemCount: transactions.length,
      ),
    );
  }
}
